import 'package:flutter/material.dart';

class StatefulCounter extends StatefulWidget {
  const StatefulCounter({super.key});

  @override
  State<StatefulCounter> createState() => _StatefulCounterState();
}

class _StatefulCounterState extends State<StatefulCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    print("Stateful build called");

    return Column(
      children: [
        const Text("Stateful Counter", style: TextStyle(fontSize: 18)),
        Text("$count", style: const TextStyle(fontSize: 22)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text("Increment"),
        ),
      ],
    );
  }
}