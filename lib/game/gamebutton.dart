import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameButton extends StatefulWidget {

  GameButton({
    @required this.number,
    @required this.isChosen,
    this.onPressed,
    this.heightOfset = 30,
    this.borderRadius = 4,

});
  final String number;
  final bool isChosen;
  final double heightOfset;
  final double borderRadius;
  final VoidCallback onPressed;


  @override
  _GameButtonState createState() => _GameButtonState();
}

class _GameButtonState extends State<GameButton> {

  bool _inPlay;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightOfset,
      child: RaisedButton(
        child: Text(widget.number),
        onPressed: widget.onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
        ),
      ),
    );
  }
}