// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result({Key? key, required this.resultScore, required this.resetHandler})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and cool!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange';
    } else {
      resultText = 'Freak';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center),
        ElevatedButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz'),
          style: ElevatedButton.styleFrom(primary: Colors.blue),
        )
      ],
    ));
  }
}
