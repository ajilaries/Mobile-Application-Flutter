import 'package:flutter/material.dart';

class InstaProfile extends StatelessWidget {
  const InstaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("aju.dev"),
        actions: const [
          Icon(Icons.add_box_outlined),
          SizedBox(width: 15),
          Icon(Icons.menu),
          SizedBox(width: 10),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [

                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/300"),
                  ),

                  const SizedBox(width: 30),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [

                        Column(
                          children: [
                            Text("54",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text("Posts")
                          ],
                        ),

                        Column(
                          children: [
                            Text("1.2K",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text("Followers")
                          ],
                        ),

                        Column(
                          children: [
                            Text("300",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                            Text("Following")
                          ],
                        ),

                      ],
                    ),
                  )

                ],
              ),
            ),

            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Aju",
                        style: TextStyle(
                            fontWeight: FontWeight.bold)),

                    Text("Flutter Developer 🚀"),

                    Text("Building cool apps"),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Share Profile"),
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Icon(Icons.person_add_outlined)

                ],
              ),
            ),

            const SizedBox(height: 20),

            const Divider(),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 12,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Image.network(
                  "https://picsum.photos/200?random=$index",
                  fit: BoxFit.cover,
                );
              },
            )

          ],
        ),
      ),
    );
  }
}


///Row- used for instagram stats layout
///Expanded- equal spacing
///CircleAvathar-profile picture
///OutlinedButton- profile actions
///GridView.builder-post gallery
///SingleChildScrollView- scroll whole page
///