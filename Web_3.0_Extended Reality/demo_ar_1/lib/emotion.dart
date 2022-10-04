import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmotionPage extends StatefulWidget {
  const EmotionPage({Key? key}) : super(key: key);

  @override
  _EmotionPageState createState() => _EmotionPageState();
}

class _EmotionPageState extends State<EmotionPage> {
  late ARKitController _arKitController;
  String person = "";

  @override
  void dispose() {
    _arKitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emotion sample'),
      ),
      body: Stack(
        children: [
          ARKitSceneView(
            configuration: ARKitConfiguration.faceTracking,
            onARKitViewCreated: (c) => onARKitViewCreated(c),
          ),
          Align(alignment: Alignment.topCenter, child: Text(person, style: Theme
              .of(context)
              .textTheme
              .headline4
              ?.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ))),
        ],
      ),
    );
  }

  void onARKitViewCreated(ARKitController c) {
    this._arKitController = c;
    this._arKitController.onUpdateNodeForAnchor = onUpdateNodeForAnchor;
  }

  void onUpdateNodeForAnchor(ARKitAnchor anchor) {
    if (anchor is ARKitFaceAnchor) {
      final ARKitFaceAnchor faceAnchor = anchor;
      final tongueOut = faceAnchor.blendShapes['tongueOut'];
      if (tongueOut != null && tongueOut > 0.5) {
        // happy
        setState(() => person = "Linguaccia");
      } else {
        // nothing
        setState(() => person = "Nessuna linguaccia");
      }
    }

  }
}
