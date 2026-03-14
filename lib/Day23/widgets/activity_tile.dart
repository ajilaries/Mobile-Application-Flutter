import 'package:flutter/material.dart';

class ActivityTile extends StatelessWidget {
  final String title;

  const ActivityTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.check_circle),
      title: Text(title),
    );
  }
}
