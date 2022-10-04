import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key? key, required this.title, required this.icon})
      : super(key: key);

  final title;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8, top: 8),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }
}
