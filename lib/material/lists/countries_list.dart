import 'package:flutter/material.dart';
import 'package:rock_carrot/blocs/areas_bloc.dart';
import 'package:rock_carrot/material/list_tiles/country_tile.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesListView extends StatelessWidget {
  final List<Country> countries;
  final ScrollController scrollController;

  const CountriesListView({
    Key? key,
    required this.countries,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return countries.isEmpty
        ? ListView.builder(
            itemCount: 1,
            itemBuilder: (context, i) {
              return Center(child: Text('Scroll down to update'));
            },
          )
        : ListView.builder(
            // next two items are for storing the scroll position
            controller: scrollController,
            key: PageStorageKey<String>('CountriesScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: countries.length,
            itemBuilder: (context, i) {
              final country = countries[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // create temporary Bloc provider for each subitem, to gain relevant data
                // add event to retrieve data
                BlocProvider<AreasBloc>(
                  create: (context) => AreasBloc(),
                  child: CountryTile(country: country),
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
