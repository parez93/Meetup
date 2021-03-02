import 'package:flutter/material.dart';
import 'package:pokedex_demo_app/const/color_type.dart';
import 'package:pokedex_demo_app/widget/poke_attribute.dart';

class PokeCard extends StatelessWidget {
  final id;
  final name;
  final List<String> types;

  PokeCard({this.name, this.types, this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      //color: Colors.green,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorType.getColorType(type: types[0]),
            ColorType.getColorType(type: types[0]).withOpacity(0.7),
          ]),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    this.name,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                ...types
                    .map((attr) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: PokeAttribute(attr),
                        ))
                    .toList(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Opacity(
                  child: Image.asset(
                    'assets/images/cover.png',
                    width: 80,
                    height: 80,
                  ),
                  opacity: 0.3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.network(
                  'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$id.png',
                  fit: BoxFit.cover,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
