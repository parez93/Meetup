import 'package:flutter/material.dart';
import 'package:navigator_demo/sample1/second_screen.dart';
import 'package:navigator_demo/sample2/fourth_screen.dart';
import 'package:navigator_demo/sample3/sixth_screen.dart';

class FifthScreen extends StatelessWidget {
  static const routeName = '/fifth';

  const FifthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 5'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Screen 5'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SixthScreen.routeName,
                        arguments: {'idScreen': 6}).then((value) => print(value));
                  },
                  child: Text('Go screen 6'))
            ]),
      ),
    );
  }
}
