import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {

  HomeButton({
    this.text,
    this.onPressed,
    this.heightOfset,
    this.borderRadius
  });

  final VoidCallback onPressed;
  final String text;
  final double heightOfset;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightOfset,
      child: RaisedButton(
        child: Text(text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
