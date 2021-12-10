import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/network/weather_model.dart';
import 'package:weather_app/network/weather_service.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late TextEditingController _controller;
  late String city;

  Future loadWeatherByCityName(String city) async {
    final jsonString = await WeatherService().getWeatherByCityName(city);
    return APIWeatherQuery.fromJson(jsonDecode(jsonString));
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: '');
    city = '';
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Test JSON App'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              hintText: 'Search',
            ),
            autofocus: false,
            textInputAction: TextInputAction.done,
            onSubmitted: (value) {
              setState(() {
                city = value;
              });
            },
          ),
        ),
        _buildWeather(context),
      ]),
    );
  }

  Widget _buildWeather(BuildContext context) {
    if (_controller.text.length < 3) {
      return Container();
    }

    return FutureBuilder(
        future: loadWeatherByCityName(_controller.text),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            APIWeatherQuery query = snapshot.data as APIWeatherQuery;
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
        });
  }
}
