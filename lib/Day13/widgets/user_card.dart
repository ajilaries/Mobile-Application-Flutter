import 'package:flutter/material.dart';
import 'package:mobile_application_development/Day12/providers/user_provider.dart';
import 'package:provider/provider.dart' show ReadContext;
import '../models/user_model.dart';

class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final provider = context.read<UserProvider>();

    return Card(
      margin:
          const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          child: Text(user.name[0]),
        ),
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              ScaleTransition(
                  scale: animation, child: child),
          child: IconButton(
            key: ValueKey(user.isFavorite),
            icon: Icon(
              user.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color:
                  user.isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              provider.toggleFavorite(user as int);
            },
          ),
        ),
      ),
    );
  }
}