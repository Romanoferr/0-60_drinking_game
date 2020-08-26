import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'gamebutton.dart';
import 'grid.dart';

class GameButtonList extends GameButton{
  GameButtonList({
    this.buttonList,
    this.grid,
  });

  List<GameButton> buttonList = [];
  final grid;


  List<GameButton> getButtonList(List buttons){
    return buttons;
  }


  int chosenNumber(List buttonList){
    var j = buttonList.length;
    var i;
    for (i=0; i<j; i++){
      if (buttonList[i].isChosen){
        return buttonList[i].number;
      }
    }
    return null;
  }

}