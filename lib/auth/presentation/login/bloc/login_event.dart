part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String username) =
      _LoginEventUsernameChanged;
  const factory LoginEvent.passwordChanged(String password) =
      _LoginEventPasswordChanged;
  const factory LoginEvent.submitted() = _LoginEventSubmitted;
}
