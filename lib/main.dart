import 'package:flutter/material.dart';
// import 'day3/practice_ui.dart';
import '../Day4/dialog_practice_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DialogPracticeScreen(), // 👈 directly open your practice screen
    );
  }
}