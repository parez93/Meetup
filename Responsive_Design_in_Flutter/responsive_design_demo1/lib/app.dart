import 'package:flutter/material.dart';
import 'package:responsive_design_demo1/responsive_screen/mobile_responsive_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
          centerTitle: true,
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.grey[300],
          elevation: 0,
        ),
      ),
      home: MobileResponsiveScreen(),
    );
  }
}
