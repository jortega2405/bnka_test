import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:bnka_test/base/domain/use_cases/get_weather_use_case.dart';
import 'package:bnka_test/base/domain/repositories/weather_repository.dart';
import 'package:bnka_test/base/data/datasources/weather_datasource_impl.dart';
import 'package:bnka_test/base/domain/repositories/weather_repository_impl.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  await _initDependencies();
}

Future<void> _initDependencies() async {
  locator.registerLazySingleton<Dio>(() => Dio());

  locator.registerLazySingleton<WeatherDataSourceImpl>(
    () => WeatherDataSourceImpl(dio: locator()),
  );

  locator.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
        weatherDataSource: locator<WeatherDataSourceImpl>()),
  );

  locator.registerLazySingleton<GetWeatherUseCase>(
    () => GetWeatherUseCase(locator<WeatherRepository>()),
  );
}
