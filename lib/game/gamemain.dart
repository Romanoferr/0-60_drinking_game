import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var boxq = 45;
    return Scaffold(
      backgroundColor: Color.fromRGBO(209, 157, 239, 1.0),
      appBar: AppBar(
        title: Text("0 - $boxq drink  v0.1   by Romano"),
        backgroundColor: Color.fromRGBO(52, 138, 199, 1.0),
        actions: [
          FlatButton(
            child: Text(
              'Refresh / Configs',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onPressed: () {
              Phoenix.rebirth(context);
            },
          ),
        ],
      ),
      body: Center(
        child: new Grid(
          extent: 85,
          boxQuantity: boxq,
          spacing: 8,
        ),
      ),
    );
  }
}
