import 'package:flutter/material.dart';
class AnimatedBoxPractice extends StatefulWidget {
  const AnimatedBoxPractice({super.key});

  @override
  State<AnimatedBoxPractice> createState() => _AnimatedBoxPracticeState();
}

class _AnimatedBoxPracticeState extends State<AnimatedBoxPractice> {
  bool isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Container")),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: isBig ? 200 : 100,
          height: isBig ? 200 : 100,
          decoration: BoxDecoration(
            color: isBig ? Colors.deepPurple : Colors.orange,
            borderRadius: BorderRadius.circular(isBig ? 20 : 50),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isBig = !isBig;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}