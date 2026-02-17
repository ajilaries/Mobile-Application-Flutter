import 'package:flutter/material.dart';

class StudentListScreen extends StatelessWidget {

  final List<String> studentList;

  const StudentListScreen({super.key, required this.studentList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student List")),

      body: studentList.isEmpty
          ? const Center(child: Text("No students added"))
          : ListView.builder(
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(studentList[index]),
                );
              },
            ),
    );
  }
}