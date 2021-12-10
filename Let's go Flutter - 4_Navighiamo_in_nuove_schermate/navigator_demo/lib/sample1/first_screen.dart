import 'package:flutter/material.dart';
import 'package:navigator_demo/sample1/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Screen 1'),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => SecondScreen()));
              }, child: Text('Go screen 2'))
            ]),
      ),
    );
  }
}
