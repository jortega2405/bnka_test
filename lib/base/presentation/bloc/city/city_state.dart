part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
  const factory CityState({
    required List<City> favoriteCities,
    @Default(0.0) double lowestTemperature,
    @Default('') String lowestTemperatureCity,
    @Default(0.0) double highestTemperature,
    @Default('') String highestTemperatureCity,
    @Default(false) bool isLoading,
    String? errorMessage,
    Weather? weather,
  }) = _CityState;

  factory CityState.initial() => const CityState(
        favoriteCities: [],
        lowestTemperature: 0.0,
        lowestTemperatureCity: '',
        highestTemperature: 0.0,
        highestTemperatureCity: '',
        isLoading: false,
        errorMessage: null,
      );
}
