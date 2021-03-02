import 'package:flutter/material.dart';

class PokeAttribute extends StatelessWidget {

  final attributeName;


  PokeAttribute(this.attributeName);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        child: FittedBox(
          child: Text(
            this.attributeName,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        color: Colors.white.withOpacity(0.3),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      ),
      borderRadius: BorderRadius.circular(50.0),
    );
  }
}
