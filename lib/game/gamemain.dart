import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';


class Game extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 157, 239, 1.0),
      appBar: AppBar(
        title: Text("Game Main Page"),
        backgroundColor: Color.fromRGBO(52, 138, 199, 1.0)
      ),
      body: Center(child:new Grid(
        extent: 80,
        boxQuantity: 40,
        spacing: 8,
      ),
      ),
    );
  }
}
