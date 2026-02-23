import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'add_student_screen.dart';
import 'student_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int currentIndex = 0;
  List<String> students = [];

  void addStudent(String name) {
    setState(() {
      students.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {

    final screens = [
      HomeScreen(count: students.length),
      AddStudentScreen(onAdd: addStudent),
      StudentListScreen(students: students),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Student Dashboard")),
        body: screens[currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
          ],
        ),
      ),
    );
  }
}