import 'package:flutter/material.dart';
// import 'day3/practice_ui.dart';
import '../Day4/animations_dialogs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimationsDialogs(), // 👈 directly open your practice screen
    );
  }
}