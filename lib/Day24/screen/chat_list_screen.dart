import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  const ChatListScreen({super.key});

  @override
  State<ChatListScreen> createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  List<Map<String, dynamic>> chats = [
    {"name": "Ajil", "message": "hey"},
    {"name": "Ajith", "message": "Are you there"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Chats")),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(chats[index]["name"]!),
            subtitle: Text(chats[index]["message"]!),
            trailing: const Text("10:30AM"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            chats.add({"name": "new user", "message": "hello"});
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
