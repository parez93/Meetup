import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

class PanoramaPage extends StatefulWidget {
  const PanoramaPage({Key? key}) : super(key: key);

  @override
  _PanoramaPageState createState() => _PanoramaPageState();
}

class _PanoramaPageState extends State<PanoramaPage> {
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
        title: const Text('Panorama sample'),
      ),
      body: ARKitSceneView(
        onARKitViewCreated: (c) => onARKitViewCreated(c),
      ),
    );
  }

  void onARKitViewCreated(ARKitController c) {
    this._arKitController = c;

    final node = ARKitNode(
      geometry: ARKitSphere(
        radius: 1,
        materials: [
          ARKitMaterial(
            diffuse: ARKitMaterialProperty.image('/assets/images/photo360.jpg'),
            doubleSided: true,
          )
        ]
      ),
      position: Vector3.zero()
    );
    this._arKitController.add(node);
  }
}
