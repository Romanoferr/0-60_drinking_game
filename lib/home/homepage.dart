import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vira_copo_drinking_game/home/homebutton.dart';

class HomePage extends StatelessWidget {
  HomePage({@required this.onGame, @required this.boxCount});

  final Function(bool) onGame;
  final Function(int) boxCount;

  void newGame() {
    onGame(true);
  }

  void boxCounter(String boxes) {
    print('Number of boxes : $boxes');
    boxCount(int.parse(boxes));
  }

  final myController = TextEditingController();

  Widget _contentInHome() {
    return Padding(
      padding: EdgeInsets.all(45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.asset("images/drinkg2.png")),
          HomeButton(
              text: "New Game",
              fontSize: 24,
              onPressed: newGame,
              heightOfset: 50.0,
              borderRadius: 16.0,
          ),
          SizedBox(height: 32.0),
          Padding(
            padding: const EdgeInsets.only(left: 150, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  controller: myController,
                  decoration: InputDecoration(
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    labelText: "# Squares",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(52, 138, 199, 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                HomeButton(
                  text: "New Game",
                  fontSize: 14,
                  heightOfset: 30.0,
                  borderRadius: 8.0,
                  onPressed: () {
                    boxCounter(myController.text);
                  },
                ),
                SizedBox(height: 8),
              ],

            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 187, 216, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(20, 93, 108, 1),
        title: Text("0-25 Drinking Game :)"),
      ),
      body: _contentInHome(),
    );
  }
}
