import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {
  const ListviewExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> subjects = ["Flutter", "java", "python"];

    return Scaffold(
      appBar: AppBar(title: const Text("List view example")),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.book),
            title: Text(subjects[index]),
          );
        },
      ),
    );
  }
}
