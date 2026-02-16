import 'package:flutter/material.dart';
import 'package:mobile_application_development/Day4/alert_practice.dart';
import 'package:mobile_application_development/Day4/animatedbox_practice.dart';

class AnimationsDialogs extends StatelessWidget {
  const AnimationsDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations and dialog practice")),
      body: ListView(
        children: [
          ListTile(
            title: const Text('animated opacity'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AnimatedBoxPractice()),
              );
            },
          ),
          ListTile(
            title: const Text("alert dialog"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AlertDialog()),
              );
            },
          ),
          ListTile(
            title: const Text("bottom sheet"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AlertPractice()),
              );
            },
          ),
        ],
      ),
    );
  }
}
