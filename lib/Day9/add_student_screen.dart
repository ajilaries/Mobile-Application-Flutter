import 'package:flutter/material.dart';

class AddStudentScreen extends StatelessWidget {
  final Function(String) onAdd;
  AddStudentScreen({super.key, required this.onAdd});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(labelText: "enter name"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              onAdd(controller.text);
              controller.clear();
            },
            child: const Text("Add student"),
          ),
        ],
      ),
    );
  }
}
