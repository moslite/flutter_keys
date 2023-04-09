import 'package:flutter/material.dart';

import 'position_tiles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Keys Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PositionTiles(),
    );
  }
}
