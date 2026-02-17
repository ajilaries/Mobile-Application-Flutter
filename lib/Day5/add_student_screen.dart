import 'package:flutter/material.dart';
import 'student_list_screen.dart';

class AddStudentScreen extends StatefulWidget {
  const AddStudentScreen({super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {

  TextEditingController nameController = TextEditingController();
  List<String> students = [];

  void addStudent() {
    if (nameController.text.isNotEmpty) {
      setState(() {
        students.add(nameController.text);
        nameController.clear();
      });
    }
  }

  void goToListScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StudentListScreen(studentList: students),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Student")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Enter student name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: addStudent,
              child: const Text("Add"),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: goToListScreen,
              child: const Text("View Students"),
            ),
          ],
        ),
      ),
    );
  }
}