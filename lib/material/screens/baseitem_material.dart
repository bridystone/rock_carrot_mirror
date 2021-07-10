import 'dart:io';
import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:rock_carrot/blocs/update_state_bloc/update_state_bloc.dart';
import 'package:rock_carrot/models/areas.dart';
import 'package:rock_carrot/models/baseitems.dart';
import 'package:rock_carrot/models/rocks.dart';
import 'package:rock_carrot/models/subareas.dart';
import 'package:rock_carrot/material/comments_sheet.dart';
import 'package:rock_carrot/material/future_builder.dart';

abstract class BaseitemsMaterialStatefulState<T extends StatefulWidget>
    extends State<T> with FutureBuilderHelper {
  /// Searchbar functionality
  ///
  /// generate Searchbar in AppBar
  /// any search will transfer data to the [searchBarValue]
  /// this will change the outcome of the [baseitem_list] getter
  late SearchBar searchBar;

  /// item for _baseitems functionality (sorting)
  @protected
  final Baseitems baseitems;
  final updateStateBloc = UpdateStateBloc();

  BaseitemsMaterialStatefulState(Baseitems baseitems) : baseitems = baseitems {
    searchBar = initializeSearchBar(baseitems.parent);
  }

  /// initialize Searchbar
  SearchBar initializeSearchBar(Baseitem currentItem) {
    return SearchBar(
      inBar: false,
      hintText: 'enter Text',
      // setting the relevant setState method
      setState: setState,
      // add default appBar without Search
      buildDefaultAppBar: (BuildContext context) => generateAppbar(currentItem),
      // handle callbacks
      onChanged: (String value) => setState(() {
        baseitems.currentFilterValue = value;
      }),
      onCleared: () => setState(() {
        baseitems.currentFilterValue = '';
      }),
      onClosed: () => setState(() {
        baseitems.currentFilterValue = '';
      }),
      closeOnSubmit: true,
    );
  }

  /// Appbar generation
  AppBar generateAppbar(Baseitem currentItem) {
    // prepare icon Buttons
    List<Widget>? iconButtons = [];
    // check, if comment item will be generated
    if (currentItem is Area || currentItem is Subarea || currentItem is Rock) {
      if (currentItem.commentCountInt! > 0) {
        iconButtons.add(IconButton(
          icon: Icon(
            Icons.comment,
          ),
          onPressed: () {
            CommentsSheet().showCommentsSheet(context, currentItem);
          },
        ));
      } else {
        // add icon without functionality, if there is no comment data
        iconButtons.add(Icon(
          Icons.comment,
          color: Colors.grey,
        ));
      }
    }
    // add Maps icon, if it is a Rock
    if (currentItem is Rock) {
      if (currentItem.latitude == 0 || currentItem.longitude == 0) {
        // grey Button if no valid coordinates
        iconButtons.add(
          Icon(
            Icons.map,
            color: Colors.grey,
          ),
        );
      } else {
        iconButtons.add(IconButton(
          icon: Icon(
            Icons.map,
          ),
          onPressed: () async {
            // check if OSMAnd is available - otherwise start google maps or apple Maps
            var preferredMap = MapType.osmand;
            // use OSMAnd+ if available
            final maps = await MapLauncher.installedMaps;
            if (maps.firstWhereOrNull(
                    (element) => element.mapType == MapType.osmandplus) !=
                null) {
              preferredMap = MapType.osmandplus;
            }
            if (!((await MapLauncher.isMapAvailable(MapType.osmandplus) ??
                    false) ||
                (await MapLauncher.isMapAvailable(MapType.osmand) ?? false))) {
              if (Platform.isIOS) {
                preferredMap = MapType.apple;
              } else {
                preferredMap = MapType.google;
              }
            }
            await MapLauncher.showMarker(
              mapType: preferredMap,
              coords: Coords(currentItem.latitude, currentItem.longitude),
              title: currentItem.name,
            );
          },
        ));
      }
    }
    // add other icons
    iconButtons.add(IconButton(
      icon: Icon(Icons.sort_by_alpha),
      onPressed: () {
        baseitems.sortAlpha = !baseitems.sortAlpha;
        setState(() {});
      },
    ));
    // add Searchbar Action
    iconButtons.add(searchBar.getSearchAction(context));

    return AppBar(
      title: RichText(
        text: TextSpan(
          text: currentItem.name,
        ),
      ),
      actions: iconButtons,
    );
  }

  /// abstract function to get futures to concrete data
  Widget buildItemList(AsyncSnapshot snapshot);

  /// futureBuilder for receiving SQL Data
  Widget futureBuildItemList(BuildContext context, AsyncSnapshot snapshot) {
    if (snapshot.hasError) {
      return futureBuilderErrorMessage(snapshot);
    }

    if (snapshot.connectionState == ConnectionState.done) {
      return buildItemList(snapshot);
    }

    return futureBuilderLoadingMessage(snapshot);
  }
}
