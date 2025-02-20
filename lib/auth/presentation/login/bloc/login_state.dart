part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String username,
    @Default('') String password,
    @Default(false) bool isValid,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
  }) = _LoginState;
}
