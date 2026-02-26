import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            /// 🔥 COVER IMAGE
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                /// 😎 PROFILE IMAGE
                Positioned(
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.white,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/300",
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            /// 👤 NAME + BIO
            const Text(
              "Aju",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "Flutter Developer 🚀 | Foodie 🍔",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),

            /// 📊 STATS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  _StatItem(title: "Orders", value: "120"),
                  _StatItem(title: "Favorites", value: "45"),
                  _StatItem(title: "Reviews", value: "30"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// ✏️ EDIT PROFILE BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Edit Profile"),
                ),
              ),
            ),

            const SizedBox(height: 25),

            /// ⚙️ SETTINGS LIST
            const _ProfileTile(icon: Icons.person, title: "Account"),
            const _ProfileTile(icon: Icons.notifications, title: "Notifications"),
            const _ProfileTile(icon: Icons.lock, title: "Privacy"),
            const _ProfileTile(icon: Icons.help, title: "Help & Support"),
            const _ProfileTile(icon: Icons.logout, title: "Logout"),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

/// 📊 STAT WIDGET
class _StatItem extends StatelessWidget {
  final String title;
  final String value;

  const _StatItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

/// ⚙️ LIST TILE WIDGET
class _ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ProfileTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}