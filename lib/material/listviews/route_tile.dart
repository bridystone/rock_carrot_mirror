import 'package:flutter/material.dart' hide Route;
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

class RouteTile extends StatelessWidget {
  final Route route;

  const RouteTile({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: [], //todo primarySlideActions
      secondaryActions: [], //secondarySlideActions,
      child: _routeTileTap(context),
    );
  }

  /// makeing the custom tile tapable
  Widget _routeTileTap(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: _routeTileContent(context),
    );
  }

  /// the actual Content of the Tile
  Widget _routeTileContent(BuildContext context) {
    return ListTile(
      title: Text(route.wegname),
      trailing: Container(
        width: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('${route.commentCount}')],
        ),
      ),
    );
  }
}
