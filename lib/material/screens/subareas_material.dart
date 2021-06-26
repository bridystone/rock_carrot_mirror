import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/models/areas.dart';
import 'package:rock_carrot/models/subareas.dart';
import 'package:rock_carrot/models/cubit/update_cubit.dart';
import 'package:rock_carrot/material/list_tiles/baseitem_tile.dart';
import 'package:rock_carrot/material/screens/baseitem_material.dart';
import 'package:rock_carrot/material/progress_notifier.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/sandstein_sql.dart';
import 'package:rock_carrot/web/teufelsturm.dart';

class SubAreasMaterial extends StatefulWidget {
  final Area _parentItem;
  // support updateing the child Values
  final ProgressNotifier _parentProgressNotifier;
  final UpdateCubit _parentUpdateCubit;

  SubAreasMaterial(
      this._parentItem, this._parentProgressNotifier, this._parentUpdateCubit);

  // transfer country to state object
  @override
  _SubAreasMaterialState createState() {
    return _SubAreasMaterialState(_parentItem);
  }
}

class _SubAreasMaterialState
    extends BaseitemsMaterialStatefulState<SubAreasMaterial> {
  /// All basic functionality is in this object (incl. parentItem)
  final Subareas _subareas;

  _SubAreasMaterialState(Area area) : _subareas = Subareas(area) {
    searchBar = initializeSearchBar(_subareas.parentArea);
    // default sorting ist by child count
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
                  .updateSubareasInclComments(_subareas.parentArea);
            } catch (e) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(ErrorSnack(e.toString()));
              count = 0;
            }

            // update parent tile
            widget._parentProgressNotifier.setStaticValue(count);
            widget._parentUpdateCubit.callGetValueAsync(_subareas.parentArea);

            setState(() {});
          },
          child: FutureBuilder<List<Subarea>>(
            builder: futureBuildItemList,
            future: _subareas.getSubareas(),
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
        final subarea = baseitem_list[i] as Subarea;
        return Column(children: [
          // only first time generate a devider
          (i == 0)
              ? Divider(
                  height: 1,
                  thickness: 1,
                )
              : Container(),
          BlocProvider(
            create: (context) => UpdateCubit(),
            child: BaseitemTile(
              subarea,
              updateFunction: Sandstein().updateRocksIncludingSubitems,
              updateAllFunction: Teufelsturm().updateTTComments,
              deleteFunction: Sandstein().deleteRocksFromDatabase,
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
        ]);
      },
    );
  }
}
