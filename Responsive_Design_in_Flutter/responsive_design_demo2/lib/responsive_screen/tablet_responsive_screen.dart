import 'package:flutter/material.dart';
import 'package:responsive_design_demo2/widgets/my_box.dart';
import 'package:responsive_design_demo2/widgets/my_tile.dart';
import 'package:responsive_design_demo2/widgets/responsive_drawer.dart';

class TabletResponsiveScreen extends StatelessWidget {
  const TabletResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tablet')),
      drawer: ResponsiveDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),

            // list of previous days
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
