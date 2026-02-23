import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final int count;

  const HomeScreen({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          "Total Students:$count",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
