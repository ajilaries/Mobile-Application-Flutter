import 'package:flutter/material.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Good morning Ajil",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),
            ),

            const Text(
              "Lets finish todays task",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Todays task",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [

                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text("Complete flutter UI"),
                  ),

                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text("Study Java DSA"),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Concept: FloatingActionButton

// FloatingActionButton is used for the main action in a screen.

// Example uses:
// - Add task
// - Create post
// - Add contact

// Important Rule:
// FloatingActionButton must be placed inside Scaffold, not inside Column.