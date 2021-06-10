import 'package:flutter/material.dart';

class ErrorSnack extends SnackBar {
  ErrorSnack(String message)
      : super(
          content: Text(message),
          backgroundColor: Color(0x3FFF0000),
        );
}
