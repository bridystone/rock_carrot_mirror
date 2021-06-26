import 'package:flutter/material.dart';
import 'package:rock_carrot/models/subareas.dart';
import 'package:rock_carrot/models/rocks.dart';
import 'package:rock_carrot/models/cubit/update_cubit.dart';
import 'package:rock_carrot/material/screens/baseitem_material.dart';
import 'package:rock_carrot/material/progress_notifier.dart';
import 'package:rock_carrot/material/list_tiles/rock_tile.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/sandstein_sql.dart';

class RocksMaterial extends StatefulWidget {
  final Subarea parentItem;
  // support updateing the child Values
  final ProgressNotifier _parentProgressNotifier;
  final UpdateCubit _parentUpdateCubit;

  RocksMaterial(
      this.parentItem, this._parentProgressNotifier, this._parentUpdateCubit);

  // transfer country to state object
  @override
  _RocksMaterialState createState() {
    return _RocksMaterialState(parentItem);
  }
}

class _RocksMaterialState
    extends BaseitemsMaterialStatefulState<RocksMaterial> {
  final Rocks _rocks;

  _RocksMaterialState(Subarea subarea) : _rocks = Rocks(subarea) {
    searchBar = initializeSearchBar(_rocks.parentSubArea);
    // default sorting ist by number
    sortAlpha = false;
  }

  /// build the Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: searchBar.build(context),
        // enable Refresh data with pulldown
        body: RefreshIndicator(
          onRefresh: () async {
            int count;
            try {
              count = await Sandstein()
                  .updateRocksIncludingSubitems(_rocks.parentSubArea);
            } catch (e) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(ErrorSnack(e.toString()));
              count = 0;
            }

            // update parent Tile
            widget._parentProgressNotifier.setStaticValue(count);
            widget._parentUpdateCubit.callGetValueAsync(_rocks.parentSubArea);
            setState(() {});
          },
          child: FutureBuilder<List<Rock>>(
            builder: futureBuildItemList,
            future: _rocks.getRocks(),
          ),
        ));
  }

  @override
  Widget buildItemList(AsyncSnapshot snapshot) {
    // store snapshot data in local list
    baseitem_list = snapshot.data;

    // if list is empty - show message what to do...
    if (baseitem_list.isEmpty) {
      return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return Center(child: Text('Scroll down to update'));
        },
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: baseitem_list.length,
      itemBuilder: (context, i) {
        final rock = baseitem_list[i] as Rock;
        return RockTile(rock);
      },
    );
  }
}
