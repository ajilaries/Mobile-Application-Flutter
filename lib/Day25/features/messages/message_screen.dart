import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Messages"),
      body: const Center(child: Text("your messages")),
    );
  }
}
