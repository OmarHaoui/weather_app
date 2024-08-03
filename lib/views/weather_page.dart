import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/utils/utilities.dart';
import 'package:weather_app/views/widgets/weather_info.dart';
import 'package:weather_app/controllers/weather_controller.dart';

class WeatherPage extends StatelessWidget {
  WeatherPage({super.key});
  final WeatherController weatherController = Get.find<WeatherController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/background.png', // Path to your background image
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text('Weather App'),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                weatherController.cityNameController.clear();
                Get.back();
              },
            ),
          ),
          body: Obx(() {
            if (weatherController.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else if (weatherController.error.value.isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.all(30),
                child: Center(
                    child: Text(
                  weatherController.error.value,
                  textAlign: TextAlign.center,
                )),
              );
            } else {
              return PageView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    // Current day weather
                    return WeatherInfo(
                      weather: weatherController.currentWeather.value,
                      pageIndex: index,
                    );
                  } else {
                    // 5-day forecast
                    return WeatherInfo(
                      weather: weatherController.fiveDayForecast[index - 1],
                      pageIndex: index,
                    );
                  }
                },
              );
            }
          }),
        ),
      ],
    );
  }
}
