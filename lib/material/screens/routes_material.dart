import 'package:flutter/material.dart'
    hide Route; // hide route because of naming issues with this classes
import 'package:rock_carrot/models/rocks.dart';
import 'package:rock_carrot/models/routes.dart';
import 'package:rock_carrot/material/screens/baseitem_material.dart';
import 'package:rock_carrot/material/list_tiles/route_tile.dart';

class RoutesMaterial extends StatefulWidget {
  final Rock parentItem;

  // List of all routes - to be accessible for later
  RoutesMaterial(this.parentItem);

  // transfer country to state object
  @override
  _RoutesMaterialState createState() {
    return _RoutesMaterialState(parentItem);
  }
}

class _RoutesMaterialState
    extends BaseitemsMaterialStatefulState<RoutesMaterial> {
  _RoutesMaterialState(Rock rock) : super(Routes(rock)) {
    // default sorting ist by number
    baseitems.sortAlpha = false;
  }

  /// build the Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchBar.build(context),
      body: FutureBuilder<List<Route>>(
        builder: futureBuildItemList,
        future: (baseitems as Routes).getRoutes(),
      ),
    );
  }

  @override
  Widget buildItemList(AsyncSnapshot snapshot) {
    // store snapshot data in local list
    baseitems.baseitem_list = snapshot.data;

    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: baseitems.baseitem_list.length,
      itemBuilder: (context, i) {
        final route = baseitems.baseitem_list[i] as Route;
        return RouteTile(route);
      },
    );
  }
}
