import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPage();
}

class _BallPage extends State<BallPage> {
  int magicBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  magicBallNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$magicBallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
