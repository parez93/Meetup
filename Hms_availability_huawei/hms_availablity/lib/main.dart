import 'package:flutter/material.dart';
import 'package:hms_availablity/gms_availability.dart';
import 'package:hms_availablity/hms_availability.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         // home: HmsAvailability(), debugShowCheckedModeBanner: false);
        home: GmsAvailability(), debugShowCheckedModeBanner: false);
  }
}
