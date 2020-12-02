import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.lightBlue[200],
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 30),
            ),
          ),
          body: AskMe()),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class AskMe extends StatefulWidget {
  @override
  AskMeState createState() => AskMeState();
}

class AskMeState extends State<AskMe> {
  int ballNumber = 1;
  void getBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            getBall();
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
