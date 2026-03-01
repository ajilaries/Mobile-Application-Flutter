import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user_provider.dart';
import 'user_card.dart';

class Day12Screen extends StatelessWidget {
  const Day12Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Users"),
            Text(
              "Total: ${provider.users.length} | Fav: ${provider.favoriteCount}",
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              provider.toggleFavoriteFilter();
            },
          ),
        ],
      ),

      body: Column(
        children: [
          /// 🔍 SEARCH BAR
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search users...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onChanged: (value) {
                provider.updateSearch(value);
              },
            ),
          ),

          /// 👥 USER LIST
          Expanded(
            child: provider.visibleUsers.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off,
                            size: 60, color: Colors.grey),
                        SizedBox(height: 10),
                        Text("No users found"),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: provider.visibleUsers.length,
                    itemBuilder: (context, index) {
                      final user = provider.visibleUsers[index];
                      return UserCard(user: user);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}