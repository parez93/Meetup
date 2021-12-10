import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/network/weather.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class APIWeatherQuery {

  List<Weather> weather;
  @JsonKey(name: 'id')
  double IdCity;
  String name;
  int cod;

  APIWeatherQuery({
    required this.weather,
    required this.IdCity,
    required this.name,
    required this.cod
  });

  factory APIWeatherQuery.fromJson(Map<String, dynamic> json) =>
      _$APIWeatherQueryFromJson(json);

  Map<String, dynamic> toJson() => _$APIWeatherQueryToJson(this);
}

