import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/game/grid.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class Game extends StatelessWidget {

 /* List<Container> _buildGridTileList(int count) => List.generate(
      count, (i) => Container(
      child: HomeButton(text: "${i+1}",
      onPressed: () {},
      heightOfset: 30,
      borderRadius: 2,
  )
  )
  );

  Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 60,
      padding: const EdgeInsets.all(8),
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: _buildGridTileList(80));
      */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Game Main Page"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: Grid()),
    );
  }
}
