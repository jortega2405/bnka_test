part of 'city_bloc.dart';

@freezed
class CityState with _$CityState {
  const factory CityState({
    required List<City> favoriteCities,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _CityState;
}
