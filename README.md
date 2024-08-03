```markdown
# 🌤️ Weather Forecast Application

A simple weather forecast application built with Flutter that displays the current weather and a 5-day weather forecast for a selected city. This app fetches data from the OpenWeatherMap API.

## 📸 Screenshots
![weather page](lib/assets/screenshots/weather_page.jpg)
![search page](lib/assets/screenshots/search_page.png)

## ✨ Features
- Search for a city to get the current weather.
- View a 5-day weather forecast.
- Display detailed weather information including temperature, humidity, and weather descriptions.
- Visually appealing UI with weather icons and images representing different weather conditions.

## 🛠️ Getting Started

### Prerequisites
- Flutter SDK
- An API key from [OpenWeatherMap](https://openweathermap.org/)

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/weather_app.git
   cd weather_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Create a file `lib/utils/api_key.dart` and add your OpenWeatherMap API key:
   ```dart
   const String apiKey = 'YOUR_API_KEY';
   ```

4. Run the application:
   ```bash
   flutter run
   ```

## 📚 Usage
- Enter the name of the city in the search bar.
- The app will display the current weather and a 5-day weather forecast for the entered city.

## 📁 Project Structure
```
weather_app/
├── lib/
│   ├── controllers/
│   │   └── weather_controller.dart
│   ├── models/
│   │   └── weather.dart
│   ├── utils/
│   │   └── api_key.dart
│   ├── widgets/
│   │   └── weather_info.dart
│   ├── main.dart
├── assets/
│   ├── icons/
│   ├── images/
└── pubspec.yaml
```

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing
Contributions are welcome! Please fork the repository and submit a pull request.

## 🧑‍💻 Authors
- **Omar Haoui** - [OmarHaoui](https://github.com/OmarHaoui)

## 📧 Contact
For any inquiries, please contact [omarhaoui955@gmail.com](mailto:omarhaoui955@gmail.com).

## 🙏 Acknowledgements
- [OpenWeatherMap API](https://openweathermap.org/)

```
