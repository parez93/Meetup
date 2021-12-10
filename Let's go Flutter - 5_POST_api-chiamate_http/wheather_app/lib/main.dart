import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather_test_json_page.dart';

import 'pages/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 30),
        ),
      ),
      // home: const WeatherTestJsonPage(),
      home: WeatherPage(),
    );
  }
}

