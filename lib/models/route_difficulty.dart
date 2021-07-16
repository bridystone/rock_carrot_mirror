import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_difficulty.freezed.dart';

const difficultymap = {
  1: 'I',
  2: 'II',
  3: 'III',
  4: 'IV',
  5: 'V',
  6: 'VI',
  7: 'VIIa',
  8: 'VIIb',
  9: 'VIIc',
  10: 'VIIIa',
  11: 'VIIIb',
  12: 'VIIIc',
  13: 'IXa',
  14: 'IXb',
  15: 'IXc',
  16: 'Xa',
  17: 'Xb',
  18: 'Xc',
  19: 'XIa',
  20: 'XIb',
  21: 'XIc',
  22: 'XIIa',
  23: 'XIIb',
  24: 'XIIc',
  25: 'XIIIa',
  26: 'XIIIb',
  27: 'XIIIc',
};

@freezed
class RouteDifficulty with _$RouteDifficulty {
  factory RouteDifficulty(
    int sortableDifficulty,
    String? DifficultyFull,
    String? Difficulty,
  ) = _RouteDifficulty;
}
