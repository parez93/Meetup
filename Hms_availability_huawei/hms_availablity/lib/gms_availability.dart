import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hms_gms_availability/flutter_hms_gms_availability.dart';

class GmsAvailability extends StatefulWidget {
  @override
  _GmsAvailabilityState createState() => _GmsAvailabilityState();
}

class _GmsAvailabilityState extends State<GmsAvailability> {
  bool gms = false, hms = false;

  @override
  void initState() {
    super.initState();
    FlutterHmsGmsAvailability.isGmsAvailable.then((t) {
      setState(() {
        gms = t;
      });
    });
    FlutterHmsGmsAvailability.isHmsAvailable.then((t) {
      setState(() {
        hms = t;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HMS/GMS Availability'),
        ),
        body: Center(
          child: Text('GMS Available:  $gms\nHMS Available:  $hms'),
        ),
      ),
    );
  }
}