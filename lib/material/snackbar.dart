import 'package:flutter/material.dart';

/*
Usage:
ScaffoldMessenger.of(context)
    .showSnackBar(ErrorSnack(e.toString()));
*/
class ErrorSnack extends SnackBar {
  ErrorSnack(String message)
      : super(
          content: Text(message),
          backgroundColor: Color(0x3FFF0000),
        );
}

class InfoSnack extends SnackBar {
  InfoSnack(String message)
      : super(
          content: Text(message),
          backgroundColor: Colors.grey,
        );
}

class UnhandledStateSnack extends SnackBar {
  UnhandledStateSnack(dynamic state)
      : super(
          content: Text(state.toString()),
          backgroundColor: Colors.grey,
        );
}
