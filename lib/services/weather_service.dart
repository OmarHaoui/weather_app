import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  static const apiKey = 'bd5e378503939ddaee76f12ad7a97608';
  static const baseUrl = 'https://api.openweathermap.org/data/2.5';

  static Future<Weather> getCurrentWeather(String city) async {
    final url = '$baseUrl/weather?q=$city&appid=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Weather.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather data');
    }
  }

  static Future<List<Weather>> getFiveDayForecast(String city) async {
    final url = '$baseUrl/forecast?q=$city&appid=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<Weather> forecast = [];
      for (var item in data['list']) {
        forecast.add(Weather.fromJson(item));
      }
      return forecast;
    } else {
      throw Exception('Failed to load forecast data');
    }
  }
}
