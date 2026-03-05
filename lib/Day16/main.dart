import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Weather App",
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  TextEditingController cityController = TextEditingController();

  Map<String, dynamic>? weatherData;

  Future<void> fetchWeather(String city) async {

    final apiKey = "YOUR_API_KEY";

    final url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {

      setState(() {
        weatherData = json.decode(response.body);
      });

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: "Enter City",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                fetchWeather(cityController.text);
              },
              child: Text("Get Weather"),
            ),

            SizedBox(height: 30),

            weatherData == null
                ? Text("Search a city")
                : Column(
                    children: [

                      Text(
                        weatherData!['name'],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        "${weatherData!['main']['temp']} °C",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),

                      Text(
                        weatherData!['weather'][0]['main'],
                        style: TextStyle(fontSize: 20),
                      ),

                      SizedBox(height: 20),

                      Text(
                          "Humidity: ${weatherData!['main']['humidity']}%"),

                      Text(
                          "Wind: ${weatherData!['wind']['speed']} m/s"),

                    ],
                  )
          ],
        ),
      ),
    );
  }
}