import 'package:dio/dio.dart';
import 'package:bnka_test/base/data/model/weather_response.dart';
import 'package:bnka_test/base/data/datasources/network_constants.dart';
import 'package:bnka_test/base/data/datasources/weather_datasource.dart';

class WeatherDataSourceImpl implements WeatherDataSource {
  final Dio dio;

  WeatherDataSourceImpl({required this.dio});

  @override
  Future<WeatherResponse> getWeather(double lat, double lon) async {
    final response = await dio.get(
      NetworkConstants.weatherUrl,
      queryParameters: {
        'latitude': lat,
        'longitude': lon,
        'current': 'temperature_2m',
      },
    );
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(response.data);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
