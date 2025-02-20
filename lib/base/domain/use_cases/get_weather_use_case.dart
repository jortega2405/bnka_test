import 'package:bnka_test/core/utils/generic_use_case.dart';
import 'package:bnka_test/base/domain/entities/weather.dart';
import 'package:bnka_test/base/domain/repositories/weather_repository.dart';

class GetWeatherUseCase extends FutureUseCase<Weather, WeatherParams> {
  final WeatherRepository _repository;

  GetWeatherUseCase(this._repository);

  @override
  ResultFuture<Weather> call(WeatherParams params) async {
    return await _repository.getWeather(params.latitude, params.longitude);
  }
}

class WeatherParams {
  final double latitude;
  final double longitude;

  WeatherParams({required this.latitude, required this.longitude});
}
