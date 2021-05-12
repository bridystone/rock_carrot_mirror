import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart'; // for runApp

import 'main_material.dart';
import 'main_cupertino.dart';

void main() {
  try {
    // Platform is not working on Web
    if (Platform.isAndroid) {
      runApp(YacGuideFlutterMaterial());
      return;
    }
    if (Platform.isIOS) {
      runApp(YacGuideFlutterCupertino());
      return;
    }
  } catch (e) {}
  print("not a supported platform");
}
