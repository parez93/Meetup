// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIWeatherQuery _$APIWeatherQueryFromJson(Map<String, dynamic> json) {
  return APIWeatherQuery(
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    IdCity: (json['id'] as num).toDouble(),
    name: json['name'] as String,
    cod: json['cod'] as int,
  );
}

Map<String, dynamic> _$APIWeatherQueryToJson(APIWeatherQuery instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'id': instance.IdCity,
      'name': instance.name,
      'cod': instance.cod,
    };
