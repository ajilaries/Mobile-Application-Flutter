import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {

  final String username;
  final String imageUrl;

  const PostWidget({
    super.key,
    required this.username,
    required this.imageUrl,
  });

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // USER INFO
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/150?img=3",
            ),
          ),
          title: Text(widget.username),
          trailing: const Icon(Icons.more_vert),
        ),

        // POST IMAGE
        Image.network(widget.imageUrl),

        // ACTION BUTTONS
        Row(
          children: [

            IconButton(
              icon: Icon(
                isLiked ? Icons.favorite : Icons.favorite_border,
                color: isLiked ? Colors.red : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),

            IconButton(
              icon: const Icon(Icons.comment_outlined),
              onPressed: () {},
            ),

            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),

          ],
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Liked by user123 and 120 others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 20)

      ],
    );
  }
}
