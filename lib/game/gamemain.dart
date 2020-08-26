import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class Game extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 157, 239, 1.0),
      appBar: AppBar(
        title: Text("Game Main Page"),
        backgroundColor: Color.fromRGBO(52, 138, 199, 1.0)
      ),
      body: Center(child: Grid(
        extent: 55,
        boxQuantity: 30,
        spacing: 8,
      ),
      ),
    );
  }
}
