import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';


class Game extends StatelessWidget {
  Game({this.boxQuantity = 45});

  final int boxQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 157, 239, 1.0),
      appBar: AppBar(
        title: Text("0 - $boxQuantity drink  v1.1   by Romano"),
        backgroundColor: Color.fromRGBO(52, 138, 199, 1.0),
        actions: [
          FlatButton(
            child: Text(
              'Refresh / Configs',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onPressed: () {
              Phoenix.rebirth(context); // reset ALL atributes back to the home page
            },
          ),
        ],
      ),
      body: Center(
        child: new Grid(
          extent: 85,
          boxQuantity: boxQuantity,
          spacing: 8,
        ),
      ),
    );
  }
}
