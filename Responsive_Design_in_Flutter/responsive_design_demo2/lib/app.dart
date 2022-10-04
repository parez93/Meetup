import 'package:flutter/material.dart';
import 'package:responsive_design_demo2/responsive_screen/desktop_responsive_screen.dart';
import 'package:responsive_design_demo2/responsive_screen/mobile_responsive_screen.dart';
import 'package:responsive_design_demo2/responsive_screen/tablet_responsive_screen.dart';

import 'widgets/responsive_layout.dart';

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
      home: ResponsiveLayout(
        mobileBody: const MobileResponsiveScreen(),
        tabletBody: const TabletResponsiveScreen(),
        desktopBody: const DesktopResponsiveScreen(),
      ),
    );
  }
}
