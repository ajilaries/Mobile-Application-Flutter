import 'package:flutter/material.dart';

class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  @override
  State<LifecycleDemo> createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  int number = 0;

  @override
  void initState() {
    super.initState();
    print("initState called");
  }

  @override
  void dispose() {
    print("dispose called");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build called");

    return Column(
      children: [
        const Text("Lifecycle Demo", style: TextStyle(fontSize: 18)),
        Text("$number", style: const TextStyle(fontSize: 22)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              number++;
              print("setState called");
            });
          },
          child: const Text("Update"),
        ),
      ],
    );
  }
}