import 'package:flutter/material.dart';

class LogoutDialogPractice extends StatelessWidget {
  const LogoutDialogPractice({super.key});

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Logout"),
        content: const Text("'Do you want to logout"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("No"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text("Logged out")));
            },
            child: const Text("yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logout dialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showLogoutDialog(context),
          child: const Text("logout"),
        ),
      ),
    );
  }
}
