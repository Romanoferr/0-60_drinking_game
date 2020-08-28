import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../main.dart';

// ignore: must_be_immutable
class GameButton extends StatefulWidget {
  GameButton({
    this.number,
    this.isChosen,
    this.onPressed,
    this.inPlay,
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

  void _checkEndGame(bool chosen) {
    _updatePlay(false);
    if (chosen == true) {
      _endGameAlert();
    }
  }

  _endGameAlert() {
    return showDialog(
        barrierDismissible: false,
        context: context,
        // ignore: missing_return
        builder: (context) {
          return AlertDialog(
            elevation: 18.0,
            content: Text("I mean, i guess you won, DRINK!!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),),
            title: Text(
              "YOU LOST!! (${widget.number})",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 179, 134, 1.0),
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: [
              DialogButton(
                onPressed: () => resetGame(),
                color: Color.fromRGBO(0, 179, 134, 1.0),
                width: 150,
                child: Text(
                  "New Game",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          );
        });
  }

  void resetGame() {
    Navigator.pop(context);
    _updatePlay(true);
    main(); // Back to Grid with new Chosen // no reset
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heightOfset,
      child: RaisedButton(
        elevation: 6.0,
        focusElevation: 2,
        disabledElevation: 0,
        disabledTextColor: Color.fromRGBO(231, 29, 46, 1),
        color: Color.fromRGBO(208, 201, 195, 1),
        disabledColor: Color.fromRGBO(231, 29, 46, 1),
        child: Text(
          '${widget.number}',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.black87,
            shadows: [
              Shadow(
                offset: Offset(0.3, 0.5),
                blurRadius: 0.3,
                color: Colors.black54,
              ),
            ],
          ),
        ),
        onPressed:
            isButtonDisable() ? null : () => _checkEndGame(widget.isChosen),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(widget.borderRadius),
          ),
        ),
      ),
    );
  }
}
