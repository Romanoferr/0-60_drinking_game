import 'package:flutter/cupertino.dart';
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

  void _endGameAlert() {
    Alert(
      context: context,
      type: AlertType.none,
      title: "YOU LOST",
      desc: "Get drunk!",
      buttons: [
        DialogButton(
          child: Text(
            "New Game",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => resetGame(),
          color: Color.fromRGBO(0, 179, 134, 1.0),
        ),
      ],
    ).show();
  }

  void resetGame() {
    Navigator.pop(context);
    _updatePlay(true);
    main();  // Back to Grid with new Chosen // no reset
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: widget.heightOfset,
      child: RaisedButton(
        color: Colors.blueGrey[200],
        disabledColor: Colors.redAccent,
        child: Text(
          '${widget.number}',
          style: TextStyle(fontSize: 18, color: Colors.black87, shadows: [
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
