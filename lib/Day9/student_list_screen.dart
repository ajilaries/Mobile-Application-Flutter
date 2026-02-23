import 'package:flutter/material.dart';

class StudentListScreen extends StatelessWidget {

  final List<String> students;

  const StudentListScreen({super.key, required this.students});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text(students[index]),
        );
      },
    );
  }
}