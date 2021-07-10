import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_carrot/blocs/update_state_bloc/update_state_bloc.dart';
import 'package:rock_carrot/models/areas.dart';
import 'package:rock_carrot/models/baseitems.dart';
import 'package:rock_carrot/models/countries.dart';
import 'package:rock_carrot/models/cubit/update_cubit.dart';
import 'package:rock_carrot/material/list_tiles/baseitem_tile.dart';
import 'package:rock_carrot/material/screens/baseitem_material.dart';
import 'package:rock_carrot/material/snackbar.dart';
import 'package:rock_carrot/web/sandstein.dart';
import 'package:rock_carrot/web/sandstein_sql.dart';

class CountryMaterial extends StatefulWidget {
  @override
  _CountryMaterialState createState() => _CountryMaterialState();
}

class _CountryMaterialState
    extends BaseitemsMaterialStatefulState<CountryMaterial> {
  /// All basic functionality is in this object
  final Countries _countries = Countries();

  _CountryMaterialState() : super(Countries()) {
    // default sorting is by name!
    baseitems.sortAlpha = true;
  }

  /// build the Scaffold
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateStateBloc(),
      child: Scaffold(
          appBar: searchBar.build(context),
          // enable Refresh data with pulldown
          body: RefreshIndicator(
            onRefresh: () async {
              //updateStateBloc.add(UpdateStateEvent.update(Baseitem()));
              /*
                try {
                  await baseitems.updateFromRemote();
                } catch (e) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(ErrorSnack(e.toString()));
                }*/
              setState(() {});
            },
            child: FutureBuilder<List<Country>>(
              builder: futureBuildItemList,
              future: _countries.getCountries(),
            ),
          )),
    );
  }

  /// generate Listview with all Country Data
  @override
  Widget buildItemList(AsyncSnapshot snapshot) {
    // store snapshot data in local list
    baseitems.baseitem_list = snapshot.data;

    return BlocBuilder<UpdateStateBloc, UpdateStateState>(
      builder: (context, state) {
        print(state.runtimeType);
        state.when(
          idle: () => null,
          updating: (step, percent) => ScaffoldMessenger.of(context)
              .showSnackBar(ErrorSnack('$step: $percent')),
          finished: (result) => ScaffoldMessenger.of(context)
              .showSnackBar(ErrorSnack('finished: $result')),
          updatingAll: (_, __) => null,
          finishedAll: (_) => null,
          updatingTT: (_, __) => null,
          finishedTT: (_) => null,
          failure: (dynamic e) => {print(e.toString())},
        );
        return _onUpdateStateIdle(context, snapshot);
      },
    );
  }

  Widget _onUpdateStateIdle(BuildContext context, AsyncSnapshot snapshot) {
    // if list is empty - show message what to do...
    print('HERE I AM');
    if (baseitems.baseitem_list.isEmpty) {
      return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, i) {
          return Center(child: Text('Scroll down to update'));
        },
      );
    }
    // build the Widget
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: baseitems.baseitem_list.length,
      itemBuilder: (context, i) {
        final country = baseitems.baseitem_list[i] as Country;
        return Column(children: [
          // only first time generate a divider
          if (i == 0) ...[Divider(height: 1, thickness: 1)],
          // Cubit for updating Timestamp
          BlocProvider(
            create: (context) => UpdateCubit(),
            child: BaseitemTile(
              country,
              updateFunction: Areas(country).updateFromRemote,
              deleteFunction: Sandstein().deleteAreasFromDatabase,
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
