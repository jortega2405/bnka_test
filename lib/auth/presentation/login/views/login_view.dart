import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/core/utils/validation_constants.dart';
import 'package:bnka_test/auth/presentation/login/bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final LoginState state;

  const LoginView({
    super.key,
    required this.formKey,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildImage(context),
            const SizedBox(height: 50),
            _buildEmailInput(context),
            const SizedBox(height: 15),
            _buildPasswordInput(context),
            const SizedBox(height: 25),
            _buildLoginButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Image.asset(
      'assets/images/bnka.png',
      fit: BoxFit.cover,
    );
  }

  Widget _buildEmailInput(BuildContext context) {
    return TextFormField(
      onChanged: (value) => context.read<LoginBloc>().add(
            LoginEvent.usernameChanged(value.trim()),
          ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r'\s')),
        LengthLimitingTextInputFormatter(ValidationConstants.maxEmailLength),
      ],
      validator: (value) => ValidationConstants.validateEmail(value),
      decoration: const InputDecoration(
        labelText: 'Usuario',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.email),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordInput(BuildContext context) {
    return TextFormField(
      obscureText: true,
      onChanged: (value) => context.read<LoginBloc>().add(
            LoginEvent.passwordChanged(value),
          ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r'\s')),
        LengthLimitingTextInputFormatter(ValidationConstants.maxPasswordLength),
      ],
      validator: (value) => ValidationConstants.validatePassword(value),
      decoration: const InputDecoration(
        labelText: 'Contraseña',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: state.isValid && !state.isLoading
            ? () {
                if (formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(const LoginEvent.submitted());
                }
              }
            : null,
        child: state.isLoading
            ? const CircularProgressIndicator(color: Colors.white)
            : const Text('Iniciar sesión', style: TextStyle(fontSize: 16)),
      ),
    );
  }
}
