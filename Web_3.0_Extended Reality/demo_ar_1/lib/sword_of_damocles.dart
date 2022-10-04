import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class SwordOfDamoclesPage extends StatefulWidget {
  const SwordOfDamoclesPage({Key? key}) : super(key: key);

  @override
  _SwordOfDamoclesPageState createState() => _SwordOfDamoclesPageState();
}

class _SwordOfDamoclesPageState extends State<SwordOfDamoclesPage> {
  late ARKitController _arKitController;

  @override
  void dispose() {
    _arKitController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sword of Damocles sample'),
      ),
      body: ARKitSceneView(
        onARKitViewCreated: (c) => onARKitViewCreated(c),
      ),
    );
  }

  void onARKitViewCreated(ARKitController c) {
    _arKitController = c;

    final node = ARKitNode(
      geometry: ARKitPyramid(
          width: 0.1,
          height: 0.1,
          length: 0.1,
          materials: [ARKitMaterial(fillMode: ARKitFillMode.lines)]
      ),
      position: Vector3(0, 0, -0.5),
    );
    _arKitController.add(node);
  }
}
