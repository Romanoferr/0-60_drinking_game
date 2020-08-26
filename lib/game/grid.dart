import 'package:flutter/cupertino.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class Grid extends StatelessWidget {
  Grid({
    this.extent,
    this.spacing,
    this.boxQuantity,
  });

  final double extent;
  static const double pad = 8;
  final double spacing;
  final int boxQuantity;

  @override
  Widget build(BuildContext context) {
    return _buildGrid();
  }

  Widget _buildGrid() => GridView.extent(
        maxCrossAxisExtent: extent,
        padding: const EdgeInsets.all(pad),
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        children: _buildGridTileList(boxQuantity),
      );

  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
          child: HomeButton(
            // change to game Button
            text: "${i + 1}",
            onPressed: () {},
            heightOfset: 30,
            borderRadius: 2,
          ),
        ),
      );
}
