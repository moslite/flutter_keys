import 'package:flutter/material.dart';

import 'stateful_color_tiles.dart';
import 'stateless_color_tiles.dart';

class PositionTiles extends StatefulWidget {
  const PositionTiles({Key? key}) : super(key: key);

  @override
  State<PositionTiles> createState() => _PositionTilesState();
}

class _PositionTilesState extends State<PositionTiles> {
  List<Widget> tiles = [];

  @override
  void initState() {
    super.initState();
    tiles = [
      //StatelessColorTiles(),
      //StatelessColorTiles(),
      StatefulColorTiles(key: UniqueKey()),
      StatefulColorTiles(key: UniqueKey()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: tiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: swapTiles,
        child: const Icon(
          Icons.sentiment_very_satisfied,
        ),
      ),
    );
  }

  void swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}
