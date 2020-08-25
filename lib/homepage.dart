import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  Widget _contentInHome(){
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          RaisedButton(
            onPressed: () {},
          )
        ],
      )
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


