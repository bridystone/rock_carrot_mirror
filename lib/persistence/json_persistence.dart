import 'dart:convert';
import 'dart:io';
import 'package:rock_carrot/main.dart';
import 'package:rock_carrot/models/persistence.dart';

const String filename = 'persistence.json';

class JsonPersistence {
  static JsonPersistence? _singleton;

  late final Persistence _persistence;
  Persistence get persistence => _persistence;

  JsonPersistence._private() {
    _persistence = _loadData();
  }

  factory JsonPersistence() {
    return _singleton ??= JsonPersistence._private();
  }

  /// initialize and get data from storage if availa  ble
  /// loading data from storage
  /// only to be called from getInstance
  Persistence _loadData() {
    final dir = Directory(globalApplicationSupportDirectory!.path);
    final fh = File(dir.path + '/' + filename);

    if (fh.existsSync()) {
      final jsonData = jsonDecode(fh.readAsStringSync());
      return Persistence.fromJson(jsonData);
    } else {
      return Persistence([], [], [], [], []);
    }
  }

  void storePersistence() {
    final dir = Directory(globalApplicationSupportDirectory!.path);
    final fh = File(dir.path + '/' + filename);

    final jsonData = jsonEncode(_persistence.toJson());
    fh.writeAsStringSync(jsonData);
  }
}
