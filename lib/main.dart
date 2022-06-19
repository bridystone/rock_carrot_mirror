import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart'; // for runApp
import 'package:flutter/foundation.dart';
import 'package:rock_carrot/blocs/simple_bloc_observer.dart';

import 'package:rock_carrot/rock_carrot_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

/* GLOBAL VARIABLES - ASYNC WORKAROUND */
Directory? globalApplicationSupportDirectory;
void main() {
  // TODO: Re-enable
  // if (kDebugMode) {
  //   Bloc.observer = SimpleBlocObserver();
  // }

  try {
    // Platform is not working on Web
    if ((Platform.isAndroid) ||
        (Platform.isIOS) ||
        Platform.isMacOS ||
        Platform.isWindows) {
      // TODO: use get getApplicationSupportDirectory() -> WHERE?!?!?! - Why does it crash?!?!
      // final globalApplicationSupportDirectory = getApplicationSupportDirectory();
      /*
      globalApplicationSupportDirectoryPath = Platform.isAndroid
          ? '/data/user/0/info.breidenstein.rock_carrot/files'
          : '';
*/
      // https://github.com/tekartik/sqflite/blob/master/sqflite_common_ffi/doc/using_ffi_instead_of_sqflite.md
      if (Platform.isWindows) {
        // initialize Windows SQFLite
        // Initialize FFI
        sqfliteFfiInit();
      }
      // Change the default factory. On iOS/Android, if not using `sqlite_flutter_lib` you can forget
      // this step, it will use the sqlite version available on the system.
      databaseFactory = databaseFactoryFfi;
      runApp(RockCarrotApp());
    }
  } catch (e) {
    throw Exception(e);
  }
  print('not a supported platform');
}
