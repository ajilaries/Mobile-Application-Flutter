import 'package:flutter/material.dart';
class AlertPractice extends StatelessWidget {
  const AlertPractice({super.key});

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Delete"),
        content: const Text("Are you sure?"),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cancel")),
          ElevatedButton(onPressed: () {}, child: const Text("Delete")),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alert Dialog")),

      body: Center(
        child: ElevatedButton(
          onPressed: () => showAlert(context),
          child: const Text("Show Alert"),
        ),
      ),
    );
  }
}