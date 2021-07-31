import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart'; // for runApp
import 'package:flutter/foundation.dart';
import 'package:rock_carrot/blocs/simple_bloc_observer.dart';

import 'package:rock_carrot/rock_carrot_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* GLOBAL VARIABLES - ASYNC WORKAROUND */
Directory? globalApplicationSupportDirectory;
void main() {
  if (kDebugMode) {
    Bloc.observer = SimpleBlocObserver();
  }

  try {
    // Platform is not working on Web
    if ((Platform.isAndroid) || (Platform.isIOS) || Platform.isMacOS) {
      // TODO: use get getApplicationSupportDirectory() -> WHERE?!?!?! - Why does it crash?!?!
      // final globalApplicationSupportDirectory = getApplicationSupportDirectory();
      /*
      globalApplicationSupportDirectoryPath = Platform.isAndroid
          ? '/data/user/0/info.breidenstein.rock_carrot/files'
          : '';
*/
      runApp(RockCarrotApp());
    }
  } catch (e) {
    throw Exception(e);
  }
  print('not a supported platform');
}
