import 'dart:math';

import 'package:flutter/material.dart';

class StatefulColorTiles extends StatefulWidget {
  const StatefulColorTiles({Key? key}) : super(key: key);

  @override
  State<StatefulColorTiles> createState() => StatefulColorTilesState();
}

class StatefulColorTilesState extends State<StatefulColorTiles> {
  final colors = <Color>[
    Colors.black,
    Colors.purple,
    Colors.pink,
    Colors.blue,
    Colors.teal,
    Colors.orange,
    Colors.green,
    Colors.cyan,
  ];
  late int value;

  @override
  void initState() {
    value = Random().nextInt(7);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      color: colors[value],
      child: Text(
        '$value',
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
