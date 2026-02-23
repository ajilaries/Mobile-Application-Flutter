import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
          SizedBox(height: 10),
          Text("Aju", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("Flutter Developer 🚀"),
        ],
      ),
    );
  }
}