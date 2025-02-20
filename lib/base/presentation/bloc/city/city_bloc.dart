import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/base/data/model/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_bloc.freezed.dart';
part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  CityBloc() : super(const CityState(favoriteCities: [])) {
    on<CityEvent>((event, emit) async {
      event.map(
        addFavorite: (e) => _onAddFavorite(e, emit),
        removeFavorite: (e) => _onRemoveFavorite(e, emit),
      );
    });
  }

  void _onAddFavorite(_CityEventAddFavorite event, Emitter<CityState> emit) {
    final updatedFavorites = List<City>.from(state.favoriteCities)
      ..add(event.city);
    emit(state.copyWith(favoriteCities: updatedFavorites));
  }

  void _onRemoveFavorite(
      _CityEventRemoveFavorite event, Emitter<CityState> emit) {
    final updatedFavorites =
        state.favoriteCities.where((c) => c != event.city).toList();
    emit(state.copyWith(favoriteCities: updatedFavorites));
  }
}
