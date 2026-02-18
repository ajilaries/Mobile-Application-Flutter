import 'package:flutter/material.dart';

class StudentAppBottomNav extends StatefulWidget {
  const StudentAppBottomNav({super.key});

  @override
  State<StudentAppBottomNav> createState() => _StudentAppBottomNavState();
}

class _StudentAppBottomNavState extends State<StudentAppBottomNav> {

  int currentIndex = 0;

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

  @override
  Widget build(BuildContext context) {

    final pages = [

      /// 🏠 HOME
      const Center(
        child: Text("Welcome to Student App 🎓", style: TextStyle(fontSize: 22)),
      ),

      /// ➕ ADD STUDENT
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: "Enter student name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: addStudent,
              child: const Text("Add Student"),
            ),
          ],
        ),
      ),

      /// 📋 STUDENT LIST
      students.isEmpty
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
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Student App")),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Students"),
        ],
      ),
    );
  }
}