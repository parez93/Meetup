class WeatherHandMadeModel {
  final double timezone;
  final double id;
  final String name;
  final double cod;

  WeatherHandMadeModel({required this.timezone, required this.id, required this.name, required this.cod});

  factory WeatherHandMadeModel.fromJson(Map<String, dynamic> json) {
    return WeatherHandMadeModel(
        timezone: json['timezone'] as double,
        id: json['id'] as double,
        name: json['name'] as String,
        cod: json['cod'] as double
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "timezone": timezone,
      "id": id,
      "name": name,
      "cod": cod
    };
  }

}