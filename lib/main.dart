import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent[100],
        appBar: AppBar(
          title: Text('Sex Dices'),
          backgroundColor: Colors.blueAccent[100],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 7;
  int signNumber = 1;
  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(10) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                changeDiceFace();
              });
            },
            child: Image(
              image: AssetImage(
                'images/pose$leftDiceNumber.jpeg',
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
