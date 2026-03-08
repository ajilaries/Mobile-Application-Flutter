import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),

      body: Column(
        children: [

          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              "https://i.pravatar.cc/300",
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Aju",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Text(
            "Flutter Developer",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 30),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.email),
            title: const Text("Email"),
            subtitle: const Text("aju@email.com"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Phone"),
            subtitle: const Text("+91 9876543210"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),

        ],
      ),
    );
  }
}