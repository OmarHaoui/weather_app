import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/controllers/weather_controller.dart';
import 'package:weather_app/utils/enums.dart';
import 'package:weather_app/utils/utilities.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherInfo extends StatelessWidget {
  final Weather weather;
  final int pageIndex;

  const WeatherInfo(
      {super.key, required this.weather, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    var weatherController = Get.find<WeatherController>();
    final currentDay = WeekDay.values[pageIndex].name;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        Text(
          currentDay,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        TUtilities.getWeatherIcon(weather.description),
        const SizedBox(height: 10),
        Text(
          '${weather.temperature.round()}°C',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          weather.description,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    WeatherIcons.humidity,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Humidity: ${weather.humidity}%',
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    WeatherIcons.thermometer,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Min Temp: ${weather.minTemp.round()}°C',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    WeatherIcons.thermometer,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Max Temp: ${weather.maxTemp.round()}°C',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
