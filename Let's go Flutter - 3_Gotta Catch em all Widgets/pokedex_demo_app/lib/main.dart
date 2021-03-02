import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pokedex_demo_app/widget/poke_card.dart';
import 'package:pokedex_demo_app/data/pokemon.dart';


void main() {
  // https://dribbble.com/shots/6540871-Pokedex-App/attachments/6540871-Pokedex-App?mode=media
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.black,
              ),
              onPressed: null,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Pokedex",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 180,
                child: GridView.count(
                  crossAxisCount: 2,
                  children: pokemon.map((e) => PokeCard(name: getName(e), types: getTypes(e), id: getId(e))).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        backgroundColor: Colors.indigo,
      ),
    );
  }

}
