import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
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
  int leftno = 1, rightno = 6;
  void change() {
    setState(() {
      leftno = Random().nextInt(6) + 1;
      rightno = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$leftno.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$rightno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
