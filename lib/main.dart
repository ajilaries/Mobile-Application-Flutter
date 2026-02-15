import 'package:flutter/material.dart';
import 'Day3/main_screen.dart';
// import 'day1/day1_screen.dart';
// import 'day2/day2_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Learning Dashboard'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),

      body: ListView(
        children: [

          const SizedBox(height: 10),

          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "📚 Flutter Syllabus",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          /// DAY 1
          ListTile(
            leading: const CircleAvatar(child: Text("1")),
            title: const Text("Day 1 – State & Lifecycle"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Day1Screen()),
              // );
            },
          ),

          /// DAY 2
          ListTile(
            leading: const CircleAvatar(child: Text("2")),
            title: const Text("Day 2 – Layouts"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const Day2Screen()),
              // );
            },
          ),

          /// DAY 3
          ListTile(
            leading: const CircleAvatar(child: Text("3")),
            title: const Text("Day 3 – Basic Widgets"),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
              );
            },
          ),

          /// UPCOMING MODULES HEADER
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "🚀 Upcoming",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.animation),
            title: const Text("Animations"),
          ),

          ListTile(
            leading: const Icon(Icons.storage),
            title: const Text("Sqflite Database"),
          ),

          ListTile(
            leading: const Icon(Icons.api),
            title: const Text("REST API"),
          ),

          ListTile(
            leading: const Icon(Icons.map),
            title: const Text("Google Maps"),
          ),

          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Firebase & Push Notification"),
          ),

          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text("Razorpay Payment"),
          ),

          ListTile(
            leading: const Icon(Icons.cloud_upload),
            title: const Text("Play Store Deployment"),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}