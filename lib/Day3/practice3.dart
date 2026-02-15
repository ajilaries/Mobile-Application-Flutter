import 'package:flutter/material.dart';

class Practice3 extends StatelessWidget {
  const Practice3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Practice 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 40,
              child: Icon(Icons.person, size: 40),
            ),

            const SizedBox(height: 15),

            const Text(
              "Aju",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const Text("Flutter Learner"),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Follow"),
            )
          ],
        ),
      ),
    );
  }
}

//column ,sizedbox, circle avathar, button
