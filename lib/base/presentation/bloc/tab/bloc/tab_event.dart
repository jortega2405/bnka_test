part of 'tab_bloc.dart';

@freezed
class TabEvent with _$TabEvent {
  const factory TabEvent.changeTab(int index) = _TabEventChangeTab;
}
