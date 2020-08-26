import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  void initState(){
    super.initState();
    _updatePlay(widget.inPlay);
  }

  void _updatePlay(bool inPlay){
    setState(() {
      widget.inPlay = inPlay;
    });
  }

  @override
  Widget build(BuildContext context) {
   // print('${widget.number}, inPlay is ${widget.inPlay}');
    print('${widget.number}, chosen is ${widget.isChosen}');

    return SizedBox(
      height: widget.heightOfset,
      child: RaisedButton(
        color: widget.inPlay ? Colors.blueGrey[200]: Colors.redAccent,
        child: Text('${widget.number}'),
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