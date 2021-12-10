import 'package:http/http.dart';

const String apiId = '49e5516599d7d75e8035bb045c4f7f8d';
const String apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherService {

  Future getData(String url) async {
    print('Calling url: $url');
    final response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getWeatherByCityName(String cityName) async {
    final weatherData = await getData('$apiUrl?q=$cityName&appid=$apiId');
    return weatherData;
  }

}