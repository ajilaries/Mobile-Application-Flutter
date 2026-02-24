import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final String image;
  final String title;
  const MusicCard({super.key, required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(image, height: 140, fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text(title, maxLines: 1, overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
