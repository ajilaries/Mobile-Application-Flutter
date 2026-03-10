import 'package:flutter/material.dart';
import '../models/chat_message.dart';
import '../data/flashcards.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> messages = [];
  int currentIndex = 0;

  void _sendAnswer(String answer) {
    setState(() {
      messages.add(ChatMessage(text: answer, isUser: true));

      // Check correctness
      final correctAnswer = flashcards[currentIndex]["answer"];
      if (answer.toLowerCase().trim() == correctAnswer!.toLowerCase().trim()) {
        messages.add(ChatMessage(text: "✅ Correct!", isUser: false));
      } else {
        messages.add(ChatMessage(text: "❌ Wrong. Correct: $correctAnswer", isUser: false));
      }

      // Move to next question
      currentIndex = (currentIndex + 1) % flashcards.length;
      messages.add(ChatMessage(text: flashcards[currentIndex]["question"]!, isUser: false));
    });
  }

  @override
  void initState() {
    super.initState();
    messages.add(ChatMessage(text: flashcards[0]["question"]!, isUser: false));
  }

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Study Companion")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return Align(
                  alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: msg.isUser ? Colors.blue[200] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(msg.text),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(controller: controller)),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (controller.text.isNotEmpty) {
                      _sendAnswer(controller.text);
                      controller.clear();
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}