import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/controller/textform.dart';
import 'package:vira_copo_drinking_game/game/gamemain.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class HomePage extends StatelessWidget {
  HomePage({@required this.onGame});

  final Function(bool) onGame;


  void _newGame(){
    onGame(true);
  }

  Widget _contentInHome() {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeButton(
            text: "New Game",
            onPressed: _newGame,
            heightOfset: 50.0,
            borderRadius: 16.0,
          ),
          SizedBox(height: 32.0),
          MyCustomForm(),
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
