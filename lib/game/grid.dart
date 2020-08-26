import 'package:flutter/cupertino.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class Grid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return _buildGrid();
  }

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 60,
      padding: const EdgeInsets.all(8),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: _buildGridTileList(80),);

  List<Container> _buildGridTileList(int count) => List.generate(
        count,
        (i) => Container(
          child: HomeButton(  // change to game Button
            text: "${i + 1}", 
            onPressed: () {},
            heightOfset: 30,
            borderRadius: 2,
          ),
        ),
      );
}
