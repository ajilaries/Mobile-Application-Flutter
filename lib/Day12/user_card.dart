import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'models/user_model.dart';
import 'providers/user_provider.dart';
class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<UserProvider>();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(user.name[0]),
            ),
            const SizedBox(width: 12),

            /// USER INFO
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(user.email),
                  Text(user.city),
                ],
              ),
            ),

            /// FAVORITE BUTTON
            IconButton(
              icon: Icon(
                user.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: user.isFavorite ? Colors.red : null,
              ),
              onPressed: () {
                provider.toggleFavorite(user as int);
              },
            ),
          ],
        ),
      ),
    );
  }
}