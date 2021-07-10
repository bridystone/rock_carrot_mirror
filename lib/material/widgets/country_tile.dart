import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
      secondaryActions: [], //secondarySlideActions,
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
    return ListTile(
      title: Text(country.land),
      trailing: Container(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('${country.childCount}')],
        ),
      ),
    );
  }
}
