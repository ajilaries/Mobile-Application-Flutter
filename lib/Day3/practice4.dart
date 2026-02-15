import 'package:flutter/material.dart';

class Practice4 extends StatelessWidget {
  const Practice4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Practice 4")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.grey.shade200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const Text(
                "Dashboard",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.home, size: 30),
                  Icon(Icons.settings, size: 30),
                  Icon(Icons.person, size: 30),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//row inside column and column inside container