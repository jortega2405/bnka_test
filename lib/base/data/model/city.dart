import 'package:bnka_test/base/domain/entities/weather.dart';

class City {
  final String name;
  final String country;
  final double lat;
  final double long;
  Weather? weather;

  City({
    required this.name,
    required this.country,
    required this.lat,
    required this.long,
    this.weather,
  });
}
