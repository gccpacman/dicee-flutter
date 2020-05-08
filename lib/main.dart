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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: (){
                  setState(() {
                    leftDiceNumber = Random().nextInt(6) + 1;
                    print('Left Button got pressed. leftDiceNumber = $leftDiceNumber');
                  });
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image.asset('images/dice3.png'),
                onPressed: (){
                  print('Right Button got pressed.');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
