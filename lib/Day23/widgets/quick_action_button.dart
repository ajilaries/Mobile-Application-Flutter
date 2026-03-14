import 'package:flutter/material.dart';

class QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 25, child: Icon(icon)),
        const SizedBox(height: 5),

        Text(label),
      ],
    );
  }
}
