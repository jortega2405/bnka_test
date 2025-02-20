import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_event.dart';
part 'tab_state.dart';
part 'tab_bloc.freezed.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(const TabState(currentIndex: 0)) {
    on<TabEvent>((event, emit) {
      event.map(
        changeTab: (e) => emit(TabState(currentIndex: e.index)),
      );
    });
  }
}
