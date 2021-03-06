import 'package:flutter/cupertino.dart';
import 'gamebutton.dart';
import 'dart:math';

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
            heightOfset: 30,
            borderRadius: 8,
            onPressed: () {},
            isChosen: (chosen == i+1) ? true: false,
            inPlay: true,
          ),
        );


  @override
  Widget build(BuildContext context) {
    return _buildGrid();
  }
}

