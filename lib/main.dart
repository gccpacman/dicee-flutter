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

class DicePage extends StatelessWidget {
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
                child: Image.asset('images/dice1.png'),
                onPressed: (){
                  print('Left Button got pressed.');
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
