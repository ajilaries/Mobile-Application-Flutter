import 'package:flutter/material.dart';
import '../widgets/weather_card.dart';
import '../widgets/quick_action_button.dart';
import '../widgets/activity_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Hello Aju 👋",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const WeatherCard(),

            const SizedBox(height: 20),

            const Text(
              "Quick Actions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuickActionButton(icon: Icons.warning, label: "Emergency"),
                QuickActionButton(icon: Icons.note, label: "Notes"),
                QuickActionButton(icon: Icons.location_on, label: "Location"),
                QuickActionButton(icon: Icons.notifications, label: "Alerts"),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              "Recent Activity",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  ActivityTile(title: "Location Updated"),
                  ActivityTile(title: "Emergency Contact Added"),
                  ActivityTile(title: "Weather Synced"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}