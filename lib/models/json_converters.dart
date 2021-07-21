import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rock_carrot/artwork/dbsandstein_icons.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:rock_carrot/models/sandstein/comment.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';

// http://db-sandsteinklettern.gipfelbuch.de/bewert.htm
class EpochConverter implements JsonConverter<DateTime, int?> {
  const EpochConverter();

  @override
  DateTime fromJson(int? epoch) =>
      DateTime.fromMicrosecondsSinceEpoch(epoch ?? 0);

  @override
  int? toJson(DateTime? dateTime) => dateTime?.microsecondsSinceEpoch;
}

class DoubleConverter implements JsonConverter<double?, String?> {
  const DoubleConverter();

  @override
  double? fromJson(String? data) => double.tryParse(data ?? '');

  @override
  String toJson(double? data) => data?.toString() ?? '';
}

class IntConverter implements JsonConverter<int?, String?> {
  const IntConverter();

  @override
  int? fromJson(String? data) => int.tryParse(data ?? '');

  @override
  String toJson(int? data) => data?.toString() ?? '';
}

class RockTypeConverter implements JsonConverter<RockType, String?> {
  const RockTypeConverter();

  @override
  RockType fromJson(String? data) {
    switch (data?.toUpperCase()) {
      case 'G':
        return RockType.Gipfel;
      case 'M':
        return RockType.Massiv;
      case 'B':
        return RockType.Block;
      case 'S':
        return RockType.Steinbruch;
      case 'A':
        return RockType.AlpinerGipfel;
      case 'N':
        return RockType.NichtAnerkannt;
      case 'H':
        return RockType.Hoehle;
      case 'P':
        return RockType.Parkplatz;
      case 'W':
        return RockType.Gaststaette;
      case 'C':
        return RockType.Camping;
      case 'T':
        return RockType.Aussicht;
      case 'E':
        return RockType.Berg;
      case 'Y':
        return RockType.Bergungsbox;
      case 'D':
        return RockType.Huette;
      case 'X':
        return RockType.Misc;
      default:
        return RockType.Gipfel;
    }
  }

  @override
  String toJson(RockType object) => throw UnimplementedError();
}

class RockStateConverter implements JsonConverter<RockState, String?> {
  const RockStateConverter();
  @override
  RockState fromJson(String? data) {
    switch (data) {
      case 'X':
        return RockState.FullyRestricted;
      case 'T':
        return RockState.PartlyRestricted;
      case 'Z':
        return RockState.TimelyRestricted;
      case 'E':
        return RockState.Demolished;
      default:
        return RockState.NotRestricted;
    }
  }

  @override
  String toJson(RockState object) => throw UnimplementedError();
}

class RouteSafetyConverter implements JsonConverter<IconData?, String?> {
  const RouteSafetyConverter();

  @override
  IconData? fromJson(String? sicher) {
    switch (sicher) {
      case '1':
        return DBSandsteinIcons.ringe;
      case '2':
        return DBSandsteinIcons.ring;
      case '3':
        return Icons.do_not_disturb_alt;
      case '4':
        return DBSandsteinIcons.ausruf;
      case '5':
        return DBSandsteinIcons.totenk;
      case '6':
        return DBSandsteinIcons.tot;
      default:
        return null;
    }
  }

  @override
  String? toJson(IconData? icon) => throw UnimplementedError();
}

class RouteWetnessConverter implements JsonConverter<IconData?, String?> {
  const RouteWetnessConverter();

  @override
  IconData? fromJson(String? wetness) {
    switch (wetness) {
      case '1':
        return Icons.wb_sunny;
      case '2':
        return Icons.wb_sunny_outlined;
      case '3':
        return Icons.brightness_medium;
      case '4':
        return DBSandsteinIcons.frosch;
      case '5':
        return DBSandsteinIcons.fisch;
      default:
        return null;
    }
  }

  @override
  String? toJson(IconData? icon) => throw UnimplementedError();
}

class RouteDifficultyConverter
    implements JsonConverter<RouteDifficulty, String?> {
  const RouteDifficultyConverter();

  @override
  RouteDifficulty fromJson(String? difficulty) {
    difficulty = difficulty?.replaceAll('l', 'I');
    // cut String, if applicable i.e. IV (VI)
    final difficultyStripped = difficulty != null
        ? RegExp(r'^(?:RP )?(\d+|\w+)').firstMatch(difficulty)?.group(1)
        : null;

    var difficultyInt = difficultymap.map<String, int>(
        (key, value) => {value: key}.entries.first)[difficultyStripped];

    // try to parse Jumps or non-sächsische Skala
    difficultyInt ??= int.tryParse(difficultyStripped ?? '');

    return RouteDifficulty(
      sortableDifficulty: difficultyInt ?? 0,
      DifficultyFull: difficulty,
      Difficulty: difficultyStripped,
    );
  }

  @override
  String? toJson(RouteDifficulty icon) => throw UnimplementedError();
}

class CommentDifficultyConverter
    implements JsonConverter<RouteDifficulty?, String?> {
  const CommentDifficultyConverter();

  @override
  RouteDifficulty? fromJson(String? difficulty) {
    var difficultyInt = int.tryParse(difficulty ?? '');
    final difficultyString = difficultymap[difficultyInt];

    return difficultyInt != null
        ? RouteDifficulty(
            sortableDifficulty: difficultyInt,
            DifficultyFull: difficultyString,
            Difficulty: difficultyString,
          )
        : null;
  }

  @override
  String? toJson(RouteDifficulty? icon) => throw UnimplementedError();
}

class CommentSourceConverter implements JsonConverter<CommentSource, String?> {
  const CommentSourceConverter();
  @override
  CommentSource fromJson(String? data) {
    switch (data?.toLowerCase()) {
      case 'sandstein':
        return CommentSource.Sandstein;
      case 'teufelsturm':
        return CommentSource.Teufelsturm;
      default:
        return CommentSource.Sandstein;
    }
  }

  @override
  String? toJson(CommentSource object) => throw UnimplementedError();
}

class CommentQualityConverter implements JsonConverter<QualityIcons, String?> {
  const CommentQualityConverter();

  @override
  QualityIcons fromJson(String? quality) {
    final routeIcon;

    switch (quality) {
      case '1':
      case '+++ (Herausragend)':
      case '++ (sehr gut)':
        routeIcon = DBSandsteinIcons.top;
        break;
      case '2':
      case '+ (gut)':
        routeIcon = DBSandsteinIcons.smile;
        break;
      case '3':
      case '(Normal)':
        routeIcon = Icons.do_not_disturb_alt;
        break;
      case '4':
      case '- (schlecht)':
        routeIcon = DBSandsteinIcons.wink;
        break;
      case '5':
      case '-- (sehr schlecht)':
      case '--- (Kamikaze)':
        routeIcon = DBSandsteinIcons.puke;
        break;
      default:
        routeIcon = null;
    }

    final rockIcon;
    switch (quality) {
      case '1':
        rockIcon = DBSandsteinIcons.gipfelgr;
        break;
      case '2':
        rockIcon = DBSandsteinIcons.gipfelm;
        break;
      case '3':
        rockIcon = DBSandsteinIcons.gipfeln;
        break;
      case '4':
        rockIcon = DBSandsteinIcons.quacke;
        break;
      case '5':
        rockIcon = DBSandsteinIcons.muell;
        break;
      default:
        rockIcon = null;
    }

    final subareaIcon;
    switch (quality) {
      case '1':
        subareaIcon = DBSandsteinIcons.top;
        break;
      case '2':
        subareaIcon = DBSandsteinIcons.smile;
        break;
      case '3':
        subareaIcon = Icons.do_not_disturb_alt;
        break;
      case '4':
        subareaIcon = DBSandsteinIcons.wink;
        break;
      case '5':
        subareaIcon = DBSandsteinIcons.puke;
        break;
      default:
        subareaIcon = null;
    }
    final areaIcon = subareaIcon;

    return QualityIcons(
      areaIcon: areaIcon,
      subareaIcon: subareaIcon,
      rockIcon: rockIcon,
      routeIcon: routeIcon,
    );
  }

  @override
  String? toJson(QualityIcons icon) => throw UnimplementedError();
}
