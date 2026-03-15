import 'package:flutter/material.dart';

class WeatherHomeScreen extends StatelessWidget {
  const WeatherHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Weather screen")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Kottayam",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Center(
              child: Column(
                children: const [
                  Text(
                    "23",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Partially cloud",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Column(
                  children: [
                    Icon(Icons.water_drop),
                    Text("Humidity"),
                    Text("70"),
                  ],
                ),
                Column(
                  children: [Icon(Icons.air), Text("Wind"), Text("12km/hr")],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Forecast",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("Monday"), Text("friday"), Text("sat")],
            ),
          ],
        ),
      ),
    );
  }
}
