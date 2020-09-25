import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue.shade800,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDie = 1;
  int rightDie = 1;

  void rollDice() {
    setState(() {
      leftDie = Random().nextInt(6) + 1;
      rightDie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$leftDie.png"),
              onPressed: () {
                rollDice();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$rightDie.png"),
              onPressed: () {
                rollDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
