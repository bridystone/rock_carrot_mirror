import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/artwork/dbsandstein_icons.dart';

class RouteSafetyConverter implements JsonConverter<IconData?, int?> {
  const RouteSafetyConverter();

  @override
  IconData? fromJson(int? sicher) {
    switch (sicher) {
      case 1:
        return DBSandsteinIcons.ringe;
      case 2:
        return DBSandsteinIcons.ring;
      case 3:
        return Icons.do_not_disturb_alt;
      case 4:
        return DBSandsteinIcons.ausruf;
      case 5:
        return DBSandsteinIcons.totenk;
      case 6:
        return DBSandsteinIcons.tot;
      default:
        return null;
    }
  }

  @override
  int? toJson(IconData? icon) => throw UnimplementedError();
}
