import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';

class Game extends StatelessWidget {
  Game({this.boxQuantity = 25});

  final int boxQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 207, 118, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(20, 93, 108, 1),
        title: Text(
            "0-$boxQuantity v1.1 Drinking Game",
        softWrap: true,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          FlatButton(
            child: Text(
              'Refresh / Configs',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Phoenix.rebirth(
                  context); // reset ALL atributes back to the home page
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(246, 207, 118, 1),
          Color.fromRGBO(249, 131, 31, 1),
        ])),
        child: Center(
          child: new Grid(
            extent: 85,
            boxQuantity: boxQuantity,
            spacing: 8,
          ),
        ),
      ),
    );
  }
}
