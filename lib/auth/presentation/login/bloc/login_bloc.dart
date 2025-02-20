import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bnka_test/core/utils/validation_constants.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<_LoginEventUsernameChanged>(_onUsernameChanged);
    on<_LoginEventPasswordChanged>(_onPasswordChanged);
    on<_LoginEventSubmitted>(_onSubmitted);
  }

  void _onUsernameChanged(
    _LoginEventUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    final username = event.username.trim();
    final isValid = _isFormValid(username, state.password);
    emit(state.copyWith(username: username, isValid: isValid));
  }

  void _onPasswordChanged(
    _LoginEventPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = event.password;
    final isValid = _isFormValid(state.username, password);
    emit(state.copyWith(password: password, isValid: isValid));
  }

  bool _isFormValid(String username, String password) {
    return ValidationConstants.validateEmail(username) == null &&
        ValidationConstants.validatePassword(password) == null;
  }

  Future<void> _onSubmitted(
    _LoginEventSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await Future.delayed(const Duration(seconds: 2));

    if (state.isValid) {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
      ));
    } else {
      emit(state.copyWith(
        isLoading: false,
        isSuccess: false,
      ));
    }
  }
}
