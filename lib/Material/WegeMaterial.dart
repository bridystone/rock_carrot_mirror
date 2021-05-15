import 'package:flutter/material.dart';
import 'dart:async';
import 'package:yacguide_flutter/Baseitems/BaseItem.dart';
import 'package:yacguide_flutter/Baseitems/Gipfels.dart';
import 'package:yacguide_flutter/Baseitems/Wege.dart';
import 'package:yacguide_flutter/Material/BaseItemsMaterial.dart';

class WegeMaterial extends StatefulWidget {
  final Gipfel parentItem;
  WegeMaterial(this.parentItem);

  // transfer country to state object
  @override
  _WegeMaterialState createState() {
    return _WegeMaterialState(parentItem);
  }
}

class _WegeMaterialState extends BaseItemsMaterialStatefulState<WegeMaterial> {
  final Gipfel _parentItem;
  Wege wege;

  _WegeMaterialState(this._parentItem)
      : wege = Wege(_parentItem),
        super(_parentItem);

  @override
  FutureBuilder futureBuilderListItems(BaseItem parentItem) {
    return FutureBuilder<List<Map<String, Object?>>>(
      builder: baseitemsBuilder,
      future: wege.getItems(queryItemInt: _parentItem.gipfelId),
/*      initialData: <Map<String, Object?>>[
        {'gebiet_ID': '1'}
      ],*/
    );
  }

  @override
  List<BaseItem> getItemsData(snapshot) {
    List<Map<String, Object?>> sqlWege = snapshot.data;
    return sqlWege.map((item) => Weg.fromSql(item)).toList();
  }

  @override
  FutureOr<int> deleteItems() {
    return wege.deleteItems(queryItemInt: _parentItem.id);
  }

  @override
  FutureOr<void> fetchFromWeb() {
    return wege.fetchFromWeb(_parentItem.id.toString());
  }
}
