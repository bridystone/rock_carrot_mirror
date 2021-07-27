import 'package:flutter/material.dart' hide Route;
import 'package:rock_carrot/material/listviews/route_tile.dart';
import 'package:rock_carrot/models/sandstein/route.dart';

class RoutesListView extends StatelessWidget {
  final List<Route> routes;
  final ScrollController scrollController;

  const RoutesListView({
    Key? key,
    required this.routes,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return routes.isEmpty
        ? ListView.builder(
            itemCount: 1,
            itemBuilder: (context, i) {
              return Center(child: Text('Scroll down to update'));
            },
          )
        : ListView.builder(
            // next two items are for storing the scroll position
            controller: scrollController,
            key: PageStorageKey<String>(key.toString() + 'RoutesScrolling'),

            padding: EdgeInsets.all(0),
            itemCount: routes.length,
            itemBuilder: (context, i) {
              final route = routes[i];
              return Column(children: [
                // only first time generate a divider
                if (i == 0) ...[Divider(height: 1, thickness: 1)],
                // Cubit for updating Timestamp
                RouteTile(route: route),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
              ]);
            },
          );
  }
}
