import 'package:flutter/material.dart';

class FadePractice extends StatefulWidget {
  const FadePractice({super.key});

  @override
  State<FadePractice> createState() => _FadePracticeState();
}

class _FadePracticeState extends State<FadePractice> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated opacity")),
      body: Center(
        child: AnimatedOpacity(
          opacity: visible ? 1 : 0,
          duration: Duration(seconds: 2),
          child: const FlutterLogo(size: 100),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visible = !visible;
          });
        },
        child: const Icon(Icons.visibility),
      ),
    );
  }
}
