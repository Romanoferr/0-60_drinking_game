import 'dart:async';
import 'dart:ffi';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/controller/controlpage.dart';
import 'package:vira_copo_drinking_game/controller/textform.dart';
import 'package:vira_copo_drinking_game/game/gamemain.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class HomePage extends StatelessWidget {
  HomePage({@required this.onGame, @required this.boxCount});

  final Function(bool) onGame;
  final Function (int) boxCount;

  void newGame() {
    onGame(true);
  }
  void boxCounter(String boxes){
    print('Number of boxes : $boxes');
    boxCount(int.parse(boxes));
  }

  final myController = TextEditingController();

  Widget _contentInHome() {
    Text boxes;
    return Padding(
      padding: EdgeInsets.all(50),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeButton(
              text: "New Game",
              fontSize: 24,
              onPressed: newGame,
              heightOfset: 50.0,
              borderRadius: 16.0,
            ),
            SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.only(left: 150, right: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: myController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                      ),
                      labelText: "# Squares",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(52, 138, 199, 1.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  HomeButton(
                    text: "New Game",
                    fontSize: 14,
                    heightOfset: 30.0,
                    borderRadius: 8.0,
                    onPressed: () {
                      boxCounter(myController.text);
                    },
                  ),
                ],
              ),
            ),
          ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("0 - 45 Drinking Game :)"),
      ),
      body: _contentInHome(),
    );
  }
}
