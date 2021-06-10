import 'package:flutter/material.dart';
import 'package:rock_carrot/Baseitems/Subareas.dart';
import 'package:rock_carrot/Baseitems/Rocks.dart';
import 'package:rock_carrot/Material/BaseMaterial.dart';
import 'package:rock_carrot/Material/ProgressNotifier.dart';
import 'package:rock_carrot/Material/RockTile.dart';
import 'package:rock_carrot/Web/Sandstein.dart';
import 'package:rock_carrot/Web/SandsteinSql.dart';

class RocksMaterial extends StatefulWidget {
  final Subarea parentItem;
  // support updateing the child Values
  final ProgressNotifier _parentProgressNotifier;

  RocksMaterial(this.parentItem, this._parentProgressNotifier);

  // transfer country to state object
  @override
  _RocksMaterialState createState() {
    return _RocksMaterialState(parentItem, _parentProgressNotifier);
  }
}

class _RocksMaterialState
    extends BaseItemsMaterialStatefulState<RocksMaterial> {
  final Rocks _rocks;
  final ProgressNotifier _parentProgressNotifier;

  _RocksMaterialState(Subarea subarea, this._parentProgressNotifier)
      : _rocks = Rocks(subarea) {
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
            final count = await Sandstein()
                .updateRocksIncludingSubitems(_rocks.parentSubArea.subareaId);
            // update parent Tile
            _parentProgressNotifier.setStaticValue(count);
            setState(() {});
            return Future<void>.value();
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
