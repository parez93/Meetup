import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final isAnswerGivenCorrect;
  final quizReset;

  Answer(this.isAnswerGivenCorrect, this.quizReset);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "La risposta data è ${isAnswerGivenCorrect ? "corretta" : "errata"}",
            style: TextStyle(fontSize: 30),
          ),
          RaisedButton(
            onPressed: quizReset,
            child: const Text("Quiz reset"),
          ),
        ],
      ),
    );
  }
}
