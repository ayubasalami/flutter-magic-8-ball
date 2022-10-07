import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(

          centerTitle: true,
          title: const Text('Ask Me Anything!'),
          backgroundColor: Colors.blue,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int firstBallNumber = 1;

  void changeBallFace() {
    firstBallNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              child: Image(
                image: AssetImage('images/ball$firstBallNumber.png'),
              ),
              onPressed: () {
                setState(() {
                  changeBallFace();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
