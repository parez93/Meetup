import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ## RAISED BUTTONS
            RaisedButton(
              onPressed: () {},
              child: Text('RaisedButton - OLD'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ElevatedButton - NEW'),
            ),

            // ## FLAT BUTTONS
            FlatButton(
              onPressed: () {},
              child: Text('FlatButton - OLD'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton - NEW'),
            ),

            // ## OUTLINE BUTTONS
            OutlineButton(
              onPressed: () {},
              child: Text('OutlineButton - OLD'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlinedButton - NEW'),
            ),

            // #####################################

            // ## NEW BUTTON STYLE WAY
            TextButton(
              onPressed: () {},
              child: Text(
                'Style button all state',
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),

            // ## MANAGE BUTTON STYLE STATE
            TextButton(
              onPressed: () {},
              child: Text(
                'Style managing with state',
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.green;
                  }
                  return Colors.blue;
                }),
              ),
            ),


            // ## TARGET BUTTON STYLE STATE BEAHAVIOUR
            TextButton(
                onPressed: () {},
                child: Text(
                  'TextButton behaviour PRIMARY',
                ),
                style: TextButton.styleFrom(
                  primary: Colors.green,
                )),

            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'ElevatedButton  behaviour PRIMARY',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                )),


            // ## CUSTOMIZE A PROP
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'TextButton',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreenAccent,
                onPrimary: Colors.orange,
              ).copyWith(
                shadowColor: MaterialStateProperty.resolveWith<Color>((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.indigoAccent;
                  }
                  return Colors.red;
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
