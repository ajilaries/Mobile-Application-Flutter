import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  TextEditingController taskController = TextEditingController();

  List<Map<String, dynamic>> tasks = [];

  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add({
          "task": taskController.text,
          "isDone": false
        });
        taskController.clear();
      });
    }
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Add Task"),
          content: TextField(
            controller: taskController,
            decoration: const InputDecoration(
              hintText: "Enter your task",
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                addTask();
                Navigator.pop(context);
              },
              child: const Text("Add"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("My Todo App"),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: showAddTaskDialog,
        child: const Icon(Icons.add),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Total Tasks: ${tasks.length}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: tasks.isEmpty
                  ? const Center(
                      child: Text(
                        "No Tasks Yet",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  : ListView.builder(
                      itemCount: tasks.length,

                      itemBuilder: (context, index) {

                        return Card(
                          child: ListTile(

                            leading: Checkbox(
                              value: tasks[index]["isDone"],
                              onChanged: (value) {
                                setState(() {
                                  tasks[index]["isDone"] = value;
                                });
                              },
                            ),

                            title: Text(
                              tasks[index]["task"],
                              style: TextStyle(
                                decoration: tasks[index]["isDone"]
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),

                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                deleteTask(index);
                              },
                            ),
                          ),
                        );

                      },
                    ),
            )

          ],
        ),
      ),
    );
  }
}