import 'package:flutter/material.dart';

class RockCarrotTheme {
  static ThemeData get theme => ThemeData.dark().copyWith(
      //primaryColor: Colors.amber[100],
      textTheme: ThemeData.dark().textTheme.copyWith(
            /// Headline in AppBar
            headline2: ThemeData.dark().textTheme.headline2?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),

            /// Tile Main Text in AppBar
            headline4: ThemeData.dark().textTheme.headline4?.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
          ));
}
