import 'package:flutter/material.dart';

class Practice2 extends StatelessWidget {
  const Practice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Practice 2")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.star, size: 40),
          Icon(Icons.favorite, size: 40, color: Colors.red),
          Icon(Icons.person, size: 40),
        ],
      ),
    );
  }
}

// Goal gives the row, mainaxisalignment, and spacing