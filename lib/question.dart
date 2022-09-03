// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);
  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(questionText,
            style: const TextStyle(fontSize: 20), textAlign: TextAlign.center));
  }
}
