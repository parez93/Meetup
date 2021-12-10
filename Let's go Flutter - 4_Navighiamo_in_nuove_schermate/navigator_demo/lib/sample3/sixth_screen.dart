import 'package:flutter/material.dart';

class SixthScreen extends StatelessWidget {

  static const routeName = '/sixth';

  const SixthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 6'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Screen ${args['idScreen']}'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop('I\'ve travelled to 6 screen');
                  },
                  child: Text('Go screen 5'))
            ]),
      ),
    );
  }
}
