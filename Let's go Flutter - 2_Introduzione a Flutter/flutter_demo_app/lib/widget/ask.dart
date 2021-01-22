import 'package:flutter/material.dart';
import 'package:flutter_demo_app/questions_list.dart';

class Ask extends StatelessWidget {

  final Function checkAnswer;

  Ask(this.checkAnswer);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Text(
            questions[0].question,
            style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          onPressed: () => checkAnswer(0),
          child: Text(
            questions[0].answers[0],
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
          color: Colors.red,
        ),
        RaisedButton(
          onPressed: () => checkAnswer(1),
          child: Text(
            questions[0].answers[1],
          ),
          color: Colors.orange,
        ),
        RaisedButton(
          onPressed: () => checkAnswer(2),
          child: Text(questions[0].answers[2]),
          color: Colors.blue,
        ),
        RaisedButton(
          onPressed: () => checkAnswer(3),
          child: Text(questions[0].answers[3]),
          color: Colors.deepPurpleAccent,
        ),
      ],
    );
  }
}
