import 'package:flutter/material.dart';

class TUtilities {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static showErrorSnackBar(String content, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
            child: Text(
          content,
          textAlign: TextAlign.center,
        )),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(milliseconds: 1000),
        backgroundColor: Colors.red,
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.0),
          ), // Example radius
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  static Color getBackgroundColor(double temperature) {
    if (temperature < 0) {
      return Colors.blue[200]!;
    } else if (temperature < 15) {
      return Colors.blue[100]!;
    } else if (temperature < 25) {
      return Colors.yellow[100]!;
    } else {
      return Colors.red[100]!;
    }
  }

  static Image getWeatherIcon(String description) {
    switch (description.toLowerCase()) {
      case 'clear sky':
        return Image.asset(
          'assets/icons/clear_sky.png',
          height: 150,
          width: 200,
        );
      case 'few clouds':
        return Image.asset(
          'assets/icons/few_clouds.png',
          height: 150,
          width: 200,
        );
      case 'scattered clouds':
        return Image.asset(
          'assets/icons/scattered_clouds.png',
          height: 150,
          width: 200,
        );
      case 'broken clouds':
        return Image.asset(
          'assets/icons/broken_clouds.png',
          height: 150,
          width: 200,
        );
      case 'shower rain':
        return Image.asset(
          'assets/icons/shower_rain.png',
          height: 150,
          width: 200,
        );
      case 'rain':
        return Image.asset(
          'assets/icons/rain.png',
          height: 150,
          width: 200,
        );
      case 'thunderstorm':
        return Image.asset(
          'assets/icons/thunderstorm.png',
          height: 150,
          width: 200,
        );
      case 'snow':
        return Image.asset(
          'assets/icons/snow.png',
          height: 150,
          width: 200,
        );
      case 'mist':
        return Image.asset(
          'assets/icons/mist.png',
          height: 150,
          width: 200,
        );
      default:
        return Image.asset(
          'assets/icons/clear_sky.png',
          height: 150,
          width: 200,
        );
    }
  }
}
