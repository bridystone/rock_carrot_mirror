import 'dart:io';

import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:collection/collection.dart';

class MapsIcon extends StatelessWidget {
  final double? longitude;
  final double? latitude;
  final String name;

  const MapsIcon({
    Key? key,
    required this.longitude,
    required this.latitude,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if ((longitude ?? 0) != 0 && (latitude ?? 0) != 0) {
      return IconButton(
        icon: Icon(
          Icons.map,
        ),
        onPressed: () async {
          // check if OSMAnd is available - otherwise start google maps or apple Maps
          var preferredMap = MapType.osmand;
          // use OSMAnd+ if available
          final maps = await MapLauncher.installedMaps;
          if (maps.firstWhereOrNull(
                  (element) => element.mapType == MapType.osmandplus) !=
              null) {
            preferredMap = MapType.osmandplus;
          }
          if (!((await MapLauncher.isMapAvailable(MapType.osmandplus) ??
                  false) ||
              (await MapLauncher.isMapAvailable(MapType.osmand) ?? false))) {
            if (Platform.isIOS) {
              preferredMap = MapType.apple;
            } else {
              preferredMap = MapType.google;
            }
          }
          await MapLauncher.showMarker(
            mapType: preferredMap,
            coords: Coords(latitude!, longitude!),
            title: name,
          );
        },
      );
    } else {
      // grey Button if no valid coordinates
      return Icon(
        Icons.map,
        color: Colors.grey,
      );
    }
  }
}
