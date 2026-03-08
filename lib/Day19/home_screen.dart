import 'package:flutter/material.dart';
import 'widgets/story_section.dart';
import 'widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Instagram",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.favorite_border),
          SizedBox(width: 15),
          Icon(Icons.send),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        children: const [

          StorySection(),

          Divider(),

          PostCard(
            username: "aju.dev",
            imageUrl: "https://picsum.photos/500",
          ),

          PostCard(
            username: "flutter_coder",
            imageUrl: "https://picsum.photos/501",
          ),

          PostCard(
            username: "dev_world",
            imageUrl: "https://picsum.photos/502",
          ),

        ],
      ),
    );
  }
}