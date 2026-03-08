import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {

  final String username;
  final String imageUrl;

  const PostCard({
    super.key,
    required this.username,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ListTile(
          leading: const CircleAvatar(
            backgroundImage:
                NetworkImage("https://i.pravatar.cc/150"),
          ),
          title: Text(username),
          trailing: const Icon(Icons.more_vert),
        ),

        Image.network(imageUrl),

        Row(
          children: const [

            IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite_border),
            ),

            IconButton(
              onPressed: null,
              icon: Icon(Icons.comment_outlined),
            ),

            IconButton(
              onPressed: null,
              icon: Icon(Icons.send),
            ),

          ],
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "Liked by user123 and 100 others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 20),

      ],
    );
  }
}