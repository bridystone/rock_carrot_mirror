import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:rock_carrot/blocs/areas/areas_bloc.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/country.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryTile extends StatelessWidget {
  final Country country;

  const CountryTile({
    Key? key,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AreasBloc>(context).add(AreasEvent.requestAreas(country));
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Pin',
          color: Colors.amber,
          icon: Icons.pin_drop,
          // TODO: PIN ACTION
          onTap: () => null,
        )
      ],
      secondaryActions: [
        IconSlideAction(
          caption: 'Update',
          color: Colors.green,
          icon: Icons.update,
          onTap: () => BlocProvider.of<AreasBloc>(context)
              .add(AreasEvent.updateAreas(country)),
        )
      ], //secondarySlideActions,
      child: _countryTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _countryTileTap(BuildContext context) {
    return InkWell(
      onTap: () =>
          BlocProvider.of<ViewBloc>(context).add(ViewEvent.toAreas(country)),
      child: _countryTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _countryTileContent(BuildContext context) {
    return ListTile(
        title: Text(country.name),
        trailing: BlocBuilder<AreasBloc, AreasState>(
          builder: (context, state) => state.maybeWhen(
            updateInProgress: (step, percent) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '$step: $percent',
                  textScaleFactor: 0.7,
                ),
              ],
            ),
            areasReceived: (country, areas) => Container(
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('${areas.length}'),
                  if (areas.isNotEmpty) ...[
                    Text(
                      DateFormat('dd.MM.yy').format(areas.first.lastUpdated),
                      textScaleFactor: 0.7,
                    )
                  ]
                ],
              ),
            ),
            orElse: () => Text(''),
          ),
        ));
  }
}
