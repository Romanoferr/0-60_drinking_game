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
  int _number = 0;


  void initState() {
    super.initState();
    _updateController(_controller);
    _updateNumber(_number);
  }

  void _updateNumber(int boxes){
    setState(() {
      _number = boxes;
    });
  }

  void _updateController(bool controller) {
    setState(() {
      _controller = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    if ((_controller == true) | (_number != 0)) {
      return Game(boxQuantity: _number);
    }
    return Phoenix(
        child: HomePage(
      onGame: _updateController, boxCount: _updateNumber,
    )
    );
  }
}
