import 'package:flutter/material.dart';

class YacGuideFlutterMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create Material
    return MaterialApp(
      title: 'YacGuideFlutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("YacGuideFlutter"),
        ),
      ),
    );
  }
}
