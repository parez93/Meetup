import 'package:flutter/material.dart';
import 'package:flutter_demo_app/page/question_game_page.dart';
import 'package:flutter_demo_app/questions_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuestionGamePage(title: 'Question Game'),
      //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
/*
class MyHomePage extends StatelessWidget {

  MyHomePage({this.title});

  final String title;

  void checkAnswer(int index) {
    questions[0].answerIndex == index ? print('Risposta corretta') : print('Risposta errata');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Column(
          children: [
            Text(questions[0].question, style: TextStyle(
              color: Colors.green,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            RaisedButton(
              onPressed: () {
                questions[0].answerIndex == 0 ? print('Risposta corretta') : print('Risposta errata');
              },
              child: Text(questions[0].answers[0]),
            ),
            RaisedButton(
              onPressed: () {
                checkAnswer(1);
              },
              child: Text(questions[0].answers[1]),
            ),
            RaisedButton(
              onPressed: () => checkAnswer(2),
              child: Text(questions[0].answers[2]),
            ),
            RaisedButton(
              onPressed: () => questions[0].answerIndex == 3 ? print('Risposta corretta') : print('Risposta errata'),
              child: Text(questions[0].answers[3]),
            ),
          ],
        ),
      ),
    );
  }
}*/

/*class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              ? Column(
                  children: [
                    Text(
                      questions[0].question,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () => checkAnswer(0),
                      child: Text(questions[0].answers[0]),
                    ),
                    RaisedButton(
                      onPressed: () => checkAnswer(1),
                      child: Text(questions[0].answers[1]),
                    ),
                    RaisedButton(
                      onPressed: () => checkAnswer(2),
                      child: Text(questions[0].answers[2]),
                    ),
                    RaisedButton(
                      onPressed: () => checkAnswer(3),
                      child: Text(questions[0].answers[3]),
                    ),
                  ],
                )
              : Container(
                  child: Column(
                    children: [
                      Text("La risposta data è ${isAnswerGivenCorrect ? "corretta" : "errata"}"),
                      RaisedButton(
                        onPressed: quizReset,
                        child: Text("Quiz reset"),
                      ),
                    ],
                  ),
                )),
    );
  }
}*/
