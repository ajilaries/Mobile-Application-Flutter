import 'package:flutter/material.dart';
import 'post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("InstaFeed"),
      ),

      body: ListView(
        children: const [

          PostWidget(
            username: "alex",
            caption: "Beautiful sunset 🌅",
            image: "https://picsum.photos/500/300",
          ),

          PostWidget(
            username: "john",
            caption: "Trip vibes ✈️",
            image: "https://picsum.photos/500/301",
          ),

          PostWidget(
            username: "emma",
            caption: "Coffee time ☕",
            image: "https://picsum.photos/500/302",
          ),

        ],
      ),
    );
  }
}