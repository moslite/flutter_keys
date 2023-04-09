import 'dart:math';

import 'package:flutter/material.dart';

class StatelessColorTiles extends StatelessWidget {
  final colors = const <Color>[
    Colors.black,
    Colors.purple,
    Colors.pink,
    Colors.blue,
    Colors.teal,
    Colors.orange,
    Colors.green,
    Colors.cyan,
  ];
  final value = Random().nextInt(7);

  StatelessColorTiles({super.key});

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
