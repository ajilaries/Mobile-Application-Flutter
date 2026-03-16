import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Profile"),
      body: const Center(child: Text("User profile")),
    );
  }
}
