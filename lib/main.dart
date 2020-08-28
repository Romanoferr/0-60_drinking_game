import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:vira_copo_drinking_game/controller/controlpage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Phoenix (child: MaterialApp(
      title: "0 - 45 Drinking Game",
      home: ControlPage(),
      ),
    );
  }
}
