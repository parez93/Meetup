import 'package:flutter/material.dart';
import 'package:navigator_demo/sample1/first_screen.dart';
import 'package:navigator_demo/sample2/fourth_screen.dart';
import 'package:navigator_demo/sample2/third_screen.dart';
import 'package:navigator_demo/sample3/fifth_screen.dart';
import 'package:navigator_demo/sample3/sixth_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 30
          )
        )
      ),
      routes: {
        ThirdScreen.routeName: (ctx) => ThirdScreen(),
        FourthScreen.routeName: (ctx) => FourthScreen(),
        FifthScreen.routeName: (ctx) => FifthScreen(),
        SixthScreen.routeName: (ctx) => SixthScreen(),
      },
      // home: const FirstScreen(),
      // home: const ThirdScreen(),
      home: const FifthScreen(),
    );
  }
}
