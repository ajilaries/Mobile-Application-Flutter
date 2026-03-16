import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Discover"),
      body: const Center(child: Text("Discover content")),
    );
  }
}
