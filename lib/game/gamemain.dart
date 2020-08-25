import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Game Main Page"),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
