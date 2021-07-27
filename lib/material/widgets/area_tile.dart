import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rock_carrot/blocs/view/view_bloc.dart';
import 'package:rock_carrot/models/sandstein/area.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AreaTile extends StatelessWidget {
  final Area area;

  const AreaTile({
    Key? key,
    required this.area,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [], //todo primarySlideActions
      secondaryActions: [], //secondarySlideActions,
      child: _areaTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _areaTileTap(BuildContext context) {
    return InkWell(
      onTap: () {
        BlocProvider.of<ViewBloc>(context).add(ViewEvent.toSubareas(area));
      },
      child: _areaTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _areaTileContent(BuildContext context) {
    return ListTile(
      title: Text(area.gebiet),
      trailing: Container(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('${area.childCount}')],
        ),
      ),
    );
  }
}
