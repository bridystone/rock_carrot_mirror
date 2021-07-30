import 'package:flutter/material.dart' hide Route;
import 'package:rock_carrot/material/list_tiles/route_tile.dart';
import 'package:rock_carrot/models/sandstein/baseitem_bloc.dart';

class RoutesListView extends StatelessWidget {
  final List<RouteBloc> routes;
  final ScrollController scrollController;

  const RoutesListView({
    Key? key,
    required this.routes,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return routes.isEmpty
        ? Center(child: Text('no Routes'))
        : ListView.builder(
            // next two items are for storing the scroll position
            // TODO: This is causing issues with the Expansion Tile
            //controller: scrollController,
            //key: PageStorageKey<String>(key.toString() + 'RoutesScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: routes.length,
            itemBuilder: (context, i) {
              final route = routes[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                RouteTile(routeBloc: route),
                Divider(height: 1, thickness: 1),
              ]);
            },
          );
  }
}
