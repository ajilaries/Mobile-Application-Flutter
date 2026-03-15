import 'package:flutter/material.dart';

class YoutubeHomeScreen extends StatelessWidget {
  const YoutubeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YouTube"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.account_circle),
          SizedBox(width: 10),
        ],
      ),

      body: ListView(
        children: [

          // VIDEO 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 200,
                color: Colors.grey,
              ),

              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Text("Flutter UI Tutorial"),
                subtitle: Text("Flutter Dev • 1M views • 2 days ago"),
              ),

            ],
          ),

          const SizedBox(height: 10),

          // VIDEO 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 200,
                color: Colors.grey,
              ),

              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                ),
                title: Text("Build a Weather App in Flutter"),
                subtitle: Text("Tech Channel • 500K views • 1 week ago"),
              ),

            ],
          ),

        ],
      ),
    );
  }
}