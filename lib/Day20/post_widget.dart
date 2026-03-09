import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {

  final String username;
  final String caption;
  final String image;

  const PostWidget({
    super.key,
    required this.username,
    required this.caption,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        // Profile Row
        ListTile(
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(username),
          trailing: const Icon(Icons.more_vert),
        ),

        // Image
        Image.network(image),

        // Action Buttons
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

          child: Row(
            children: const [

              Icon(Icons.favorite_border),
              SizedBox(width: 15),

              Icon(Icons.comment_outlined),
              SizedBox(width: 15),

              Icon(Icons.send),

            ],
          ),
        ),

        // Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(caption),
        ),

        const SizedBox(height: 20),

      ],
    );
  }
}