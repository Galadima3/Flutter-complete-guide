// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Rice', 'Pounded Yam', 'Spaghetti', 'Beans']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Dog', 'Cat', 'Dolphin', 'Eagle']
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Red', 'Yellow', 'Blue', 'White']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('First App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : const Result(),
      ),
    );
  }
}
