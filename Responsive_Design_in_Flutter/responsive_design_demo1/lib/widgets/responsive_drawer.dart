import 'package:flutter/material.dart';
import 'package:responsive_design_demo1/widgets/drawer_tile.dart';

class ResponsiveDrawer extends StatelessWidget {
  const ResponsiveDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.flutter_dash,
              size: 64,
            ),
          ),

          DrawerTile(title: 'D A S H B O A R D', icon: Icons.home),
          DrawerTile(title: 'S E T T I N G S', icon: Icons.settings),
          DrawerTile(title: 'A B O U T', icon: Icons.info),
          DrawerTile(title: 'L O G O U T', icon: Icons.logout),
        ],
      ),
    );
  }
}
