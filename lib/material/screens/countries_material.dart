import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  _CountryMaterialState() {
    searchBar = initializeSearchBar(Baseitem(
      name: 'Countries',
      childCountInt: -1,
    ));
  }

  /// build the Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: searchBar.build(context),
        // enable Refresh data with pulldown
        body: RefreshIndicator(
          onRefresh: () async {
            try {
              await Sandstein().updateCountries();
            } catch (e) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(ErrorSnack(e.toString()));
            }

            setState(() {});
          },
          child: FutureBuilder<List<Country>>(
            builder: futureBuildItemList,
            future: _countries.getCountries(),
          ),
        ));
  }

  /// generate Listview with all Country Data
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
    // build the Widget
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: baseitem_list.length,
      itemBuilder: (context, i) {
        final country = baseitem_list[i] as Country;
        return Column(children: [
          // only first time generate a devider
          (i == 0)
              ? Divider(
                  height: 1,
                  thickness: 1,
                )
              : Container(),
          // Cubit for updating Timestamp
          BlocProvider(
            create: (context) => UpdateCubit(),
            child: BaseitemTile(
              country,
              updateFunction: Sandstein().updateAreas,
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
