import 'package:flutter/material.dart';
import '../Day3/practice1.dart';
import '../Day3/practice2.dart';
import '../Day3/practice3.dart';
import '../Day3/practice4.dart';

class PracticeUi extends StatelessWidget {
  const PracticeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Practice UI Lab")),

      body: ListView(
        children: [

          ListTile(
            title: const Text("Practice 1 – Styled Text"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Practice1()),
              );
            },
          ),

          ListTile(
            title: const Text("Practice 2 – Row Layout"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Practice2()),
              );
            },
          ),

          ListTile(
            title: const Text("Practice 3 – Column Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Practice3()),
              );
            },
          ),

          ListTile(
            title: const Text("Practice 4 – Dashboard UI"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Practice4()),
              );
            },
          ),
        ],
      ),
    );
  }
}
