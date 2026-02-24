import 'package:flutter/material.dart';
import '../widgets/music_card.dart';
import '../widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [

            const Text(
              "Good Evening 🎧",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            const SectionTitle(title: "Recently Played"),

            const SizedBox(height: 15),

            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  MusicCard(
                    image:
                        "https://i.scdn.co/image/ab67616d0000b273c0c4b3c7b6b5f4a4f7f8e6f2",
                    title: "Blinding Lights",
                  ),
                  MusicCard(
                    image:
                        "https://i.scdn.co/image/ab67616d0000b2734d4f8c5c9c3f1c6e6e3d4f6a",
                    title: "Starboy",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const SectionTitle(title: "Trending Now"),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}