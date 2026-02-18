import 'package:flutter/material.dart';

class MiniStudentApp extends StatefulWidget {
  const MiniStudentApp({super.key});

  @override
  State<MiniStudentApp> createState() => _MiniStudentAppState();
}

class _MiniStudentAppState extends State<MiniStudentApp> {

  TextEditingController controller = TextEditingController();
  List<String> students = [];

  void addStudent() {
    if (controller.text.isNotEmpty) {
      setState(() {
        students.add(controller.text);
        controller.clear();
      });
    }
  }

  void openList() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StudentListScreen(students: students),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student App")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Enter name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: addStudent,
              child: const Text("Add Student"),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: openList,
              child: const Text("View Students"),
            ),
          ],
        ),
      ),
    );
  }
}

class StudentListScreen extends StatelessWidget {

  final List<String> students;

  const StudentListScreen({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student List")),
      body: students.isEmpty
          ? const Center(child: Text("No Students Added"))
          : ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(students[index]),
                );
              },
            ),
    );
  }
}