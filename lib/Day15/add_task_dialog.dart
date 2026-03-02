import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_provider.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({super.key});

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Add task"),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: "Task title"),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {
            if (controller.text.isNotEmpty) {
              Provider.of<TaskProvider>(context, listen: false).addTask(controller.text);
              Navigator.pop(context);
            }
          },
          child: const Text("add"),
        ),
      ],
    );
  }
}
