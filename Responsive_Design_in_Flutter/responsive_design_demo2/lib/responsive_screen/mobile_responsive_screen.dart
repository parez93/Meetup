import 'package:flutter/material.dart';
import 'package:responsive_design_demo2/widgets/my_box.dart';
import 'package:responsive_design_demo2/widgets/my_tile.dart';
import 'package:responsive_design_demo2/widgets/responsive_drawer.dart';

class MobileResponsiveScreen extends StatelessWidget {
  const MobileResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobile')),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (ctx, idx) => MyBox(),
                itemCount: 4,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (ctx, idx) => MyTile(),
              itemCount: 4,
            ),
          ),
        ],
      ),
      drawer: ResponsiveDrawer(),
    );
  }
}
