import 'package:flutter/cupertino.dart';
import 'globals.dart';
import 'gamebutton.dart';
import 'dart:math';
import 'gamebuttonlist.dart';
import 'globals.dart';

class Grid extends StatelessWidget {

  Grid({
    this.extent,
    this.spacing,
    this.boxQuantity,
  });

  final double extent;
  static const double pad = 12;
  final double spacing;
  final int boxQuantity;
  List<GameButton> gameButtonList = [];



  @override
  Widget build(BuildContext context) {
    Widget a = _buildGrid();
    //GameButtonList(buttonList: gameButtonList, grid: Grid);
    return a;
  }

  int chosenNumber(){
    Random random = new Random();
    int chosenNumber = random.nextInt(boxQuantity) + 1;
    print(chosenNumber);
    return chosenNumber;
  }

  Widget _buildGrid(
      ) => GridView.extent(
        maxCrossAxisExtent: extent,
        padding: const EdgeInsets.all(pad),
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        children:(_buildGridTileList(boxQuantity, chosenNumber())),
      );

  List<GameButton> _buildGridTileList(int count, int chosen)
  => List.generate(count,
        (i) => new GameButton(
            number: i + 1,
            heightOfset: 40,
            borderRadius: 3,
            onPressed: () {},
            isChosen: (chosen == i+1) ? true: false,
            inPlay: true,
            grid: Grid
          ),
        );

}

