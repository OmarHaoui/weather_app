import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/utils/exeptions.dart';

class WeatherController extends GetxController {
  var currentWeather = Weather(
    temperature: 0,
    description: '',
    humidity: 0,
    icon: '',
    minTemp: 0,
    maxTemp: 0,
  ).obs;
  var fiveDayForecast = <Weather>[].obs;
  var isLoading = false.obs;
  var error = ''.obs;
  //var cityName = ''.obs;
  var cityNameController = TextEditingController();

  void fetchWeather() async {
    try {
      isLoading(true);
      String city = cityNameController.value.text;

      // Check network connectivity
      if (!await InternetCheck.hasInternetConnection()) {
        throw NetworkException('No internet connection');
      }
      // Fetch data
      var weatherData = await WeatherService.getCurrentWeather(city);
      var forecastData = await WeatherService.getFiveDayForecast(city);
      currentWeather(weatherData);
      fiveDayForecast(forecastData);
      error('');
    } on NetworkException catch (e) {
      error('Network error: No internet connection');
    } on FormatException catch (e) {
      error('Data format error: ${e.message}');
    } catch (e) {
      error('Unexpected error: Check the city name');
    } finally {
      isLoading(false);
    }
  }
}
