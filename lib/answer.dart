import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function()? selectHandler;
  final String answerText;
  //const Answer(this.selectHandler);

  const Answer(this.selectHandler, this.answerText,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
