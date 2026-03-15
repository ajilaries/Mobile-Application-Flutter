import 'package:flutter/material.dart';

class DynamicTaskScreen extends StatefulWidget {
  const DynamicTaskScreen({super.key});

  @override
  State<DynamicTaskScreen> createState() => _DynamicTaskScreenState();
}

class _DynamicTaskScreenState extends State<DynamicTaskScreen> {
  TextEditingController taskController = TextEditingController();

  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dynamic task manager")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: "enter task",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tasks.add(taskController.text);
                  taskController.clear();
                });
              },
              child: const Text("Add task"),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.check_circle),
                    title: Text(tasks[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          tasks.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
