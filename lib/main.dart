import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bnka_test/core/utils/locator.dart';
import 'auth/presentation/login/screens/login_screen.dart';
import 'package:bnka_test/splash/presentation/splash_screen.dart';
import 'package:bnka_test/base/presentation/bloc/city/city_bloc.dart';
import 'package:bnka_test/base/presentation/screens/base_screen.dart';
import 'package:bnka_test/base/presentation/bloc/tab/bloc/tab_bloc.dart';
import 'package:bnka_test/base/domain/use_cases/get_weather_use_case.dart';

void main() async {
  await initLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bnka Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/base': (_) => MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) =>
                      CityBloc(getWeatherUseCase: locator<GetWeatherUseCase>()),
                ),
                BlocProvider(
                  create: (context) => TabBloc(),
                ),
              ],
              child: BaseScreen(),
            ),
      },
    );
  }
}
