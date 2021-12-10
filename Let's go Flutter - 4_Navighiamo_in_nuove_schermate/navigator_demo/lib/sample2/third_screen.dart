import 'package:flutter/material.dart';
import 'package:navigator_demo/sample1/second_screen.dart';
import 'package:navigator_demo/sample2/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {

  static const routeName = '/third';

  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Screen 3'),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed(FourthScreen.routeName);
              }, child: Text('Go screen 4'))
            ]),
      ),
    );
  }
}
