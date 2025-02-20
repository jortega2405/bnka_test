import 'package:bnka_test/base/domain/entities/weather.dart';
import 'package:bnka_test/base/data/mappers/weather_mapper.dart';
import 'package:bnka_test/base/data/datasources/weather_datasource.dart';
import 'package:bnka_test/base/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource weatherDataSource;

  WeatherRepositoryImpl({required this.weatherDataSource});

  @override
  Future<Weather> getWeather(double lat, double lon) async {
    final weatherResponse = await weatherDataSource.getWeather(lat, lon);
    return weatherResponse.toentity();
  }
}
