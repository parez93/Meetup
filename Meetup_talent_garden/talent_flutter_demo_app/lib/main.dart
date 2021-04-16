import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'data/quotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var quote = quotes[Random().nextInt(quotes.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Be a Talent Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.format_quote_rounded, size: 50, color: Colors.red,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.yellow.shade100,
                child: Container(
                  height: 400,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text(quote.description, style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(quote.name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent),),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  final index = Random().nextInt(quotes.length);
                  setState(() {
                    quote = quotes[index];
                  });
                },
                child: Text('Random generator'))
          ],
        ),
      ),
    );
  }
}
