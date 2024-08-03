class Weather {
  final double temperature;
  final String description;
  final int humidity;
  final String icon;
  final double minTemp;
  final double maxTemp;

  Weather({
    required this.minTemp,
    required this.maxTemp,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      minTemp: (json['main']['temp_min'] - 273.15).toDouble(),
      maxTemp: (json['main']['temp_max'] - 273.15).toDouble(),
      temperature: (json['main']['temp'] - 273.15)
          .toDouble(), // Convert from Kelvin to Celsius
      description: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
      icon: json['weather'][0]['icon'],
      //TODO: add min and max temp + wind speed
    );
  }

  String get iconUrl => 'http://openweathermap.org/img/w/$icon.png';
}
