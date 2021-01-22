import 'package:flutter/material.dart';
import 'package:flutter_demo_app/widget/answer.dart';
import 'package:flutter_demo_app/widget/ask.dart';

import '../questions_list.dart';

class QuestionGamePage extends StatefulWidget {
  final String title;

  QuestionGamePage({this.title});

  @override
  _QuestionGamePageState createState() => _QuestionGamePageState();
}

class _QuestionGamePageState extends State<QuestionGamePage> {
  var isAnswerGivenCorrect = null;

  void checkAnswer(int index) {
    questions[0].answerIndex == index ? print('Risposta corretta') : print('Risposta errata');
    setState(() {
      isAnswerGivenCorrect = questions[0].answerIndex == index;
    });
  }

  void quizReset() {
    setState(() {
      isAnswerGivenCorrect = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: isAnswerGivenCorrect == null
            ? Ask(checkAnswer)
            : Answer(isAnswerGivenCorrect, quizReset),
      ),
    );
  }
}
