import 'package:flutter/material.dart';
import 'stateless_counter.dart';
import 'stateful_counter.dart';
import 'lifecycle_demo.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Day 1 – State & Lifecycle")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            StatelessCounter(),
            const Divider(),
            const StatefulCounter(),
            const Divider(),
            const LifecycleDemo(),
          ],
        ),
      ),
    );
  }
}