import 'package:bnka_test/base/data/model/weather_response.dart';

abstract class WeatherDataSource {
  Future<WeatherResponse> getWeather(double lat, double lon);
}
