class WeatherResponse {
  final double latitude;
  final double longitude;
  final double generationTimeMs;
  final int utcOffsetSeconds;
  final String timezone;
  final String timezoneAbbreviation;
  final int elevation;
  final CurrentUnits currentUnits;
  final Current current;

  WeatherResponse({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.currentUnits,
    required this.current,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
      generationTimeMs: json['generationtime_ms'].toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'].toInt(),
      timezone: json['timezone'],
      timezoneAbbreviation: json['timezone_abbreviation'],
      elevation: json['elevation'].toInt(),
      currentUnits: CurrentUnits.fromJson(json['current_units']),
      current: Current.fromJson(json['current']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'generationtime_ms': generationTimeMs,
      'utc_offset_seconds': utcOffsetSeconds,
      'timezone': timezone,
      'timezone_abbreviation': timezoneAbbreviation,
      'elevation': elevation,
      'current_units': currentUnits.toJson(),
      'current': current.toJson(),
    };
  }
}

class CurrentUnits {
  final String time;
  final String interval;
  final String temperature2m;

  CurrentUnits({
    required this.time,
    required this.interval,
    required this.temperature2m,
  });

  factory CurrentUnits.fromJson(Map<String, dynamic> json) {
    return CurrentUnits(
      time: json['time'],
      interval: json['interval'],
      temperature2m: json['temperature_2m'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'interval': interval,
      'temperature_2m': temperature2m,
    };
  }
}

class Current {
  final String time;
  final int interval;
  final double temperature2m;

  Current({
    required this.time,
    required this.interval,
    required this.temperature2m,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      time: json['time'],
      interval: json['interval'].toInt(),
      temperature2m: json['temperature_2m'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'interval': interval,
      'temperature_2m': temperature2m,
    };
  }
}
