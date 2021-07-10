import 'package:freezed_annotation/freezed_annotation.dart';

class EpochConverter implements JsonConverter<DateTime, int?> {
  const EpochConverter();

  @override
  DateTime fromJson(int? epoch) =>
      DateTime.fromMicrosecondsSinceEpoch(epoch ?? 0);

  @override
  int? toJson(DateTime? dateTime) => dateTime?.microsecondsSinceEpoch;
}
