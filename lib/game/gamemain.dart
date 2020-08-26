import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class Game extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Game Main Page"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: Grid(
        extent: 60,
        boxQuantity: 80,
        spacing: 8,
      )),
    );
  }
}
