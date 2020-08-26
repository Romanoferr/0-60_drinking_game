import 'package:flutter/cupertino.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:vira_copo_drinking_game/game/gamemain.dart';
import 'package:vira_copo_drinking_game/home/homepage.dart';

class ControlPage extends StatefulWidget {
  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {

  bool _controller = false;

  void initState(){
    super.initState();
    _updateController(_controller);
  }

  void _updateController(bool controller){
    setState(() {
      _controller = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == true){
      return Phoenix(child: Game());
    }
    return HomePage(
      onGame: _updateController,
    );
  }
}
