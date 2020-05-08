import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 1;
  String result = 'Even';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: (){
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                        if (leftDiceNumber.compareTo(rightDiceNumber) == 1) {
                          result='Left win.';
                        } else if (leftDiceNumber.compareTo(rightDiceNumber) == 0) {
                          result = 'Even';
                        } else {
                          result='Right win.';
                        }
                        print('Left Button got pressed. leftDiceNumber = $leftDiceNumber');
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: (){
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                        if (leftDiceNumber.compareTo(rightDiceNumber) == 1) {
                          result='Left win.';
                        } else if (leftDiceNumber.compareTo(rightDiceNumber) == 0) {
                          result = 'Even';
                        } else {
                          result='Right win.';
                        }
                        print('Right Button got pressed. rightDiceNumber = $rightDiceNumber');
                      });
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                '$result',
                style: TextStyle(color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
