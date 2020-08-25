import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vira Copo",
      home: HomePage(),
    );
  }
}
