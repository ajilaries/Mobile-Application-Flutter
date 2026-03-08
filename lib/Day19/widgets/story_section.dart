import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,

        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.all(8),

            child: Column(
              children: [

                const CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage("https://i.pravatar.cc/150"),
                ),

                const SizedBox(height: 5),

                Text("user$index")

              ],
            ),
          );
        },
      ),
    );
  }
}