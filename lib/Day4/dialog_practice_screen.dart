import 'package:flutter/material.dart';

class DialogPracticeScreen extends StatefulWidget {
  const DialogPracticeScreen({super.key});

  @override
  State<DialogPracticeScreen> createState() => _DialogPracticeScreenState();
}

class _DialogPracticeScreenState extends State<DialogPracticeScreen> {

  String name = "";

  // 🔴 DELETE DIALOG
  void showDeleteDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete"),
        content: const Text("Are you sure you want to delete?"),
        actions: [

          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              Navigator.pop(context);
              showSuccessDialog("Deleted successfully");
            },
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }

  // 🟡 INPUT DIALOG
  void showInputDialog() {
    TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Enter your name"),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: "Type here...",
            border: OutlineInputBorder(),
          ),
        ),
        actions: [

          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          ElevatedButton(
            onPressed: () {
              setState(() {
                name = controller.text;
              });
              Navigator.pop(context);
              showSuccessDialog("Hello $name 🎉");
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }

  // 🟢 SUCCESS DIALOG
  void showSuccessDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: const Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green),
            SizedBox(width: 10),
            Text("Success"),
          ],
        ),
        content: Text(message),
        actions: [

          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  // 🎨 UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog Practice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: showDeleteDialog,
              child: const Text("Delete Dialog"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: showInputDialog,
              child: const Text("Input Dialog"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => showSuccessDialog("Task Completed ✅"),
              child: const Text("Success Dialog"),
            ),

          ],
        ),
      ),
    );
  }
}