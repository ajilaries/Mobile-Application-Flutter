import 'package:flutter/material.dart';
class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final TextEditingController controller = TextEditingController();
  List<String> students = [];

  void addStudent() {
    if (controller.text.isNotEmpty) {
      setState(() {
        students.add(controller.text);
        controller.clear();
      });
    }
  }

  void deleteStudent(int index) {
    setState(() {
      students.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student List")),
      body: Column(
        children: [
          TextField(controller: controller),
          ElevatedButton(onPressed: addStudent, child: const Text("Add")),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(students[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => deleteStudent(index),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}