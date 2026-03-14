import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const SmartApp());
}

class SmartApp extends StatelessWidget {
  const SmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Smart Application",
      home: const HomeScreen(),
    );
  }
}
