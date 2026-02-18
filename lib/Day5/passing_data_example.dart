import 'package:flutter/material.dart';

class PassingDataExample extends StatelessWidget {
  const PassingDataExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Passing Data")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Send Name"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondScreen(name: "Aju 😎"),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String name;

  const SecondScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Received Data")),
      body: Center(
        child: Text(
          "Hello $name",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}