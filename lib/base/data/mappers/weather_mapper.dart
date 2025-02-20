import 'package:bnka_test/base/domain/entities/weather.dart';
import 'package:bnka_test/base/data/model/weather_response.dart';

extension WeatherMapper on WeatherResponse {
  Weather toentity() {
    return Weather(
      latitude: latitude,
      longitude: longitude,
      generationTimeMs: generationTimeMs,
      utcOffsetSeconds: utcOffsetSeconds,
      timezone: timezone,
      timezoneAbbreviation: timezoneAbbreviation,
      elevation: elevation,
      currentUnits: currentUnits,
      current: current,
    );
  }
}
