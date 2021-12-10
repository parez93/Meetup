import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/network/weather_model.dart';

class WeatherTestJsonPage extends StatelessWidget {

  const WeatherTestJsonPage({Key? key}) : super(key: key);

  Future loadWeather() async {
    final jsonString = await rootBundle.loadString('assets/weather.json');
      return APIWeatherQuery.fromJson(jsonDecode(jsonString));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Test JSON App'),
      ),
      body: FutureBuilder(
        future: loadWeather(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.hasData) {
            APIWeatherQuery query =  snapshot.data as APIWeatherQuery;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('City: ${query.name}'),
                  SizedBox(height: 20),
                  Text('Weather: ${query.weather[0].main}'),
                ],
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            return const Center(
              child: Text('Ops, a error occurred!'),
            );
          }
        },

      ),
    );
  }

 }

