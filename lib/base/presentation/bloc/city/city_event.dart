part of 'city_bloc.dart';

@freezed
class CityEvent with _$CityEvent {
  const factory CityEvent.fetchWeather({
    required double latitude,
    required double longitude,
  }) = _CityEventFetchWeather;

  const factory CityEvent.addFavorite({
    required City city,
  }) = _CityEventAddFavorite;

  const factory CityEvent.removeFavorite({
    required City city,
  }) = _CityEventRemoveFavorite;
}
