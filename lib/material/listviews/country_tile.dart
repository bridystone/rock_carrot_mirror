import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [], //todo primarySlideActions
      secondaryActions: [
        IconSlideAction(
          caption: 'Update',
          color: Colors.green,
          icon: Icons.update,
          onTap: () async {
            BlocProvider.of<AreasBloc>(context)
                .add(AreasEvent.updateAreas(country));
          },
        )
      ], //secondarySlideActions,
      child: _countryTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _countryTileTap(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toAreas(country));
      },
      child: _countryTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _countryTileContent(BuildContext context) {
    return BlocBuilder<AreasBloc, AreasState>(
      builder: (context, state) {
        return ListTile(
          title: Text(country.land),
          subtitle: state.when(
            initial: () => Text('initial'),
            inProgress: () => Text('inProgress'),
            areasReceived: (country, areas) => Text(areas.length.toString() +
                ((areas.isNotEmpty)
                    ? areas.first.lastUpdated.year.toString()
                    : '')),
            updateInProgress: (step, percentage) =>
                Text('Update $step: $percentage'),
            updateFinished: (result) => Text('$result'),
            failure: (dynamic exception) => Text('$exception'),
          ),
          trailing: Container(
            width: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('${country.childCount}')],
            ),
          ),
        );
      },
    );
  }
}
