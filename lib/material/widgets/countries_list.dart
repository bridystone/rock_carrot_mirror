import 'package:flutter/material.dart';
import 'package:rock_carrot/material/widgets/country_tile.dart';
import 'package:rock_carrot/models/sandstein/country.dart';

class CountriesListView extends StatelessWidget {
  final List<Country> countries;

  const CountriesListView({
    Key? key,
    required this.countries,
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
            padding: EdgeInsets.all(0),
            itemCount: countries.length,
            itemBuilder: (context, i) {
              final country = countries[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // Cubit for updating Timestamp
                CountryTile(country: country),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ]);
            },
          );
  }
}
