import 'package:flutter/material.dart';
import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/Subareas.dart';
import 'package:yacguide_flutter/Baseitems/Gipfels.dart';
import 'package:yacguide_flutter/Material/BaseItemsMaterial.dart';

class GipfelsMaterial extends StatefulWidget {
  final Subarea parentItem;
  GipfelsMaterial(this.parentItem);

  // transfer country to state object
  @override
  _GipfelsMaterialState createState() {
    return _GipfelsMaterialState(parentItem);
  }
}

class _GipfelsMaterialState
    extends BaseItemsMaterialStatefulState<GipfelsMaterial> {
  final Subarea parentItem;
  Gipfels gipfels;

  _GipfelsMaterialState(this.parentItem)
      : gipfels = Gipfels(parentItem),
        super(parentItem);

  @override
  FutureBuilder futureBuilderListItems(BaseItem parentItem) {
    return FutureBuilder<List<Map<String, Object?>>>(
      builder: baseitemsBuilder,
      future: gipfels.getItems(queryItemInt: parentItem.id),
/*      initialData: <Map<String, Object?>>[
        {'gebiet_ID': '1'}
      ],*/
    );
  }

  @override
  List<BaseItem> getItemsData(snapshot) {
    List<Map<String, Object?>> sqlGipfels = snapshot.data;
    return sqlGipfels.map((item) => Gipfel.fromSql(item)).toList();
  }

  @override
  FutureOr<int> deleteItems() {
    return gipfels.deleteItems(queryItemInt: parentItem.id);
  }

  @override
  FutureOr<void> fetchFromWeb() {
    return gipfels.fetchFromWeb(parentItem.id.toString());
  }
}
