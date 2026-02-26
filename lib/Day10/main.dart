import 'package:flutter/material.dart';
import 'package:mobile_application_development/Day10/screens/home_screen.dart';
import 'package:mobile_application_development/Day10/screens/watchlist_screen.dart';
import 'package:mobile_application_development/Day10/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  final screens = const [
    HomeScreen(),
    WatchlistScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white54,
          backgroundColor: Colors.black,
          onTap: (value) => setState(() => index = value),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Watchlist"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}