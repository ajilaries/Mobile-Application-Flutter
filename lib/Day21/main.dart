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
      home: FeedScreen(),
    );
  }
}

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List posts = [
      {
        "username": "alex",
        "image": "https://picsum.photos/500/300"
      },
      {
        "username": "john",
        "image": "https://picsum.photos/500/301"
      },
      {
        "username": "emma",
        "image": "https://picsum.photos/500/302"
      },
    ];

    return Scaffold(

      appBar: AppBar(
        title: const Text("Social Feed"),
      ),

      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {

          return PostWidget(
            username: posts[index]["username"],
            imageUrl: posts[index]["image"],
          );

        },
      ),
    );
  }
}