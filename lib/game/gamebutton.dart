import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/game/dialogbox.dart';

// ignore: must_be_immutable
class GameButton extends StatefulWidget {
  GameButton({
    @required this.number,
    @required this.isChosen,
    @required this.onPressed,
    @required this.inPlay,
    this.heightOfset,
    this.borderRadius,
  });
  final int number;
  final bool isChosen;
  final double heightOfset;
  final double borderRadius;
  final VoidCallback onPressed;
  bool inPlay;

  @override
  _GameButtonState createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {
  @override
  void initState() {
    super.initState();
    _updatePlay(widget.inPlay);
  }

  void _updatePlay(bool inPlay) {
    setState(() {
      widget.inPlay = inPlay;
    });
    
  }

  bool isButtonDisable() {
    if (widget.inPlay) {
      return false;
    } else
      return true;
  }



  @override
  Widget build(BuildContext context) {
    // print('${widget.number}, inPlay is ${widget.inPlay}');
    print('${widget.number}, chosen is ${widget.isChosen}');


    return SizedBox(
      height: widget.heightOfset,
      child: RaisedButton(
        color: Colors.blueGrey[200],
        disabledColor: Colors.redAccent,
        child: Text('${widget.number}'),
        onPressed: isButtonDisable() ? null : () => _updatePlay(false),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
        ),
      ),
    );
  }
}
