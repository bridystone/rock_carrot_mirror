import 'package:flutter/material.dart' hide Route;
import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/Rocks.dart';
import 'package:yacguide_flutter/Baseitems/Routes.dart';
import 'package:yacguide_flutter/Material/BaseItemsMaterial.dart';

class RoutesMaterial extends StatefulWidget {
  final Rock parentItem;
  RoutesMaterial(this.parentItem);

  // transfer country to state object
  @override
  _RoutesMaterialState createState() {
    return _RoutesMaterialState(parentItem);
  }
}

class _RoutesMaterialState
    extends BaseItemsMaterialStatefulState<RoutesMaterial> {
  final Rock _parentItem;
  Routes routes;

  _RoutesMaterialState(this._parentItem)
      : routes = Routes(_parentItem),
        super(_parentItem);

  @override
  FutureBuilder futureBuilderListItems(BaseItem parentItem) {
    return FutureBuilder<List<Map<String, Object?>>>(
      builder: baseitemsBuilder,
      future: routes.getItems(queryItemInt: _parentItem.gipfelId),
/*      initialData: <Map<String, Object?>>[
        {'gebiet_ID': '1'}
      ],*/
    );
  }

  @override
  List<BaseItem> getItemsData(snapshot) {
    List<Map<String, Object?>> sqlRoutes = snapshot.data;
    return sqlRoutes.map((item) => Route.fromSql(item)).toList();
  }

  @override
  FutureOr<int> deleteItems() {
    return routes.deleteItems();
  }

  @override
  FutureOr<void> fetchFromWeb() {
    return routes.fetchFromWeb();
  }
}
