import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class HomePage extends StatelessWidget {

  Widget _contentInHome() {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeButton(
            text: "Novo Jogo",
            onPressed: () {},
            heightOfset: 50.0,
            borderRadius: 16.0,
          ),
          SizedBox(height: 150.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vira copo Drinking Game :)"),
      ),
      body: _contentInHome(),
    );
  }
}
