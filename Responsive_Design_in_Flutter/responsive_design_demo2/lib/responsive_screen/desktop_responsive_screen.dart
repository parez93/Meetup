import 'package:flutter/material.dart';
import 'package:responsive_design_demo2/widgets/my_box.dart';
import 'package:responsive_design_demo2/widgets/my_tile.dart';
import 'package:responsive_design_demo2/widgets/responsive_drawer.dart';

class DesktopResponsiveScreen extends StatelessWidget {
  const DesktopResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Desktop')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            ResponsiveDrawer(),

            // first half of page
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // first 4 boxes in grid
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      },
                    ),
                  ),
                ],
              ),
            ),
            // second half of page
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  // list of stuff
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
