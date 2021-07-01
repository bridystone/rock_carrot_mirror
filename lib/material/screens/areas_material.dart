import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/models/countries.dart';
import 'package:rock_carrot/models/areas.dart';
import 'package:rock_carrot/models/cubit/update_cubit.dart';
import 'package:rock_carrot/material/list_tiles/baseitem_tile.dart';
import 'package:rock_carrot/material/screens/baseitem_material.dart';
import 'package:rock_carrot/material/progress_notifier.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/sandstein_sql.dart';

class AreasMaterial extends StatefulWidget {
  final Country _parentItem;
  // support updateing the child Values
  final ProgressNotifier _parentProgressNotifier;
  final UpdateCubit _parentCubit;
  AreasMaterial(
      this._parentItem, this._parentProgressNotifier, this._parentCubit);

  // transfer country to state object
  @override
  _AreasMaterialState createState() {
    return _AreasMaterialState(_parentItem);
  }
}

class _AreasMaterialState
    extends BaseitemsMaterialStatefulState<AreasMaterial> {
  _AreasMaterialState(Country country) : super(Areas(country)) {
    // default sorting ist by child count
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
            // update state of parent Scaffold
            widget._parentProgressNotifier.setStaticValue(count);
            widget._parentCubit.callGetValueAsync(baseitems.parent);
            setState(() {});
            return Future<void>.value();
          },
          child: FutureBuilder<List<Area>>(
            builder: futureBuildItemList,
            future: (baseitems as Areas).getAreas(),
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
        final area = baseitems.baseitem_list[i] as Area;
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
              area,
              updateFunction: Sandstein().updateSubareasInclComments,
              updateAllFunction: Sandstein().updateSubareasInclAllSubitems,
              deleteFunction: Sandstein().deleteSubareasFromDatabase,
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
