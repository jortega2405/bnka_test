import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/base/data/model/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bnka_test/base/domain/entities/weather.dart';
import 'package:bnka_test/base/domain/use_cases/get_weather_use_case.dart';

part 'city_bloc.freezed.dart';
part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final GetWeatherUseCase getWeatherUseCase;

  CityBloc({required this.getWeatherUseCase}) : super(CityState.initial()) {
    on<_CityEventFetchWeather>(_onFetchWeather);
    on<_CityEventAddFavorite>(_onAddFavoriteCity);
    on<_CityEventRemoveFavorite>(_onRemoveFavoriteCity);
  }

  void _onFetchWeather(
      _CityEventFetchWeather event, Emitter<CityState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final weather = await getWeatherUseCase(WeatherParams(
        latitude: event.latitude,
        longitude: event.longitude,
      ));
      emit(state.copyWith(weather: weather, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  void _onAddFavoriteCity(
      _CityEventAddFavorite event, Emitter<CityState> emit) async {
    final updatedCities = List<City>.from(state.favoriteCities)
      ..add(event.city);
    final updatedState = await _calculateTemperatures(updatedCities);
    emit(state.copyWith(
      favoriteCities: updatedCities,
      lowestTemperature: updatedState.lowestTemperature,
      lowestTemperatureCity: updatedState.lowestTemperatureCity,
      highestTemperature: updatedState.highestTemperature,
      highestTemperatureCity: updatedState.highestTemperatureCity,
    ));
  }

  void _onRemoveFavoriteCity(
      _CityEventRemoveFavorite event, Emitter<CityState> emit) async {
    final updatedCities = List<City>.from(state.favoriteCities)
      ..remove(event.city);
    final updatedState = await _calculateTemperatures(updatedCities);
    emit(state.copyWith(
      favoriteCities: updatedCities,
      lowestTemperature: updatedState.lowestTemperature,
      lowestTemperatureCity: updatedState.lowestTemperatureCity,
      highestTemperature: updatedState.highestTemperature,
      highestTemperatureCity: updatedState.highestTemperatureCity,
    ));
  }

  Future<CityState> _calculateTemperatures(List<City> cities) async {
    double lowestTemp = double.infinity;
    double highestTemp = double.negativeInfinity;
    String lowestTempCity = '';
    String highestTempCity = '';

    for (var city in cities) {
      final weather = await getWeatherUseCase(WeatherParams(
        latitude: city.lat,
        longitude: city.long,
      ));
      city.weather = weather;

      if (weather.current.temperature2m < lowestTemp) {
        lowestTemp = weather.current.temperature2m;
        lowestTempCity = city.name;
      }
      if (weather.current.temperature2m > highestTemp) {
        highestTemp = weather.current.temperature2m;
        highestTempCity = city.name;
      }
    }

    return CityState(
      favoriteCities: cities,
      lowestTemperature: lowestTemp == double.infinity ? 0.0 : lowestTemp,
      lowestTemperatureCity: lowestTempCity,
      highestTemperature:
          highestTemp == double.negativeInfinity ? 0.0 : highestTemp,
      highestTemperatureCity: highestTempCity,
    );
  }
}
