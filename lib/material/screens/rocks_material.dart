import 'package:flutter/material.dart';
import 'package:rock_carrot/models/subareas.dart';
import 'package:rock_carrot/models/rocks.dart';
import 'package:rock_carrot/models/cubit/update_cubit.dart';
import 'package:rock_carrot/material/screens/baseitem_material.dart';
import 'package:rock_carrot/material/progress_notifier.dart';
import 'package:rock_carrot/material/list_tiles/rock_tile.dart';
import 'package:rock_carrot/material/snackbar.dart';

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
  _RocksMaterialState(Subarea subarea) : super(Rocks(subarea)) {
    // default sorting ist by number
    baseitems.sortAlpha = false;
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
              count = await baseitems.updateFromRemote();
            } catch (e) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(ErrorSnack(e.toString()));
              count = 0;
            }

            // update parent Tile
            widget._parentProgressNotifier.setStaticValue(count);
            widget._parentUpdateCubit.callGetValueAsync(baseitems.parent);
            setState(() {});
          },
          child: FutureBuilder<List<Rock>>(
            builder: futureBuildItemList,
            future: (baseitems as Rocks).getRocks(),
          ),
        ));
  }

  @override
  Widget buildItemList(AsyncSnapshot snapshot) {
    // store snapshot data in local list
    baseitems.baseitem_list = snapshot.data;

    // if list is empty - show message what to do...
    if (baseitems.baseitem_list.isEmpty) {
      return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return Center(child: Text('Scroll down to update'));
        },
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: baseitems.baseitem_list.length,
      itemBuilder: (context, i) {
        final rock = baseitems.baseitem_list[i] as Rock;
        return RockTile(rock);
      },
    );
  }
}
