import 'package:flutter/material.dart';
import '../Day8/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Hey Aju 👋",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.1,

                children: const [

                  DashboardCard(
                    title: "Total Tasks",
                    value: "12",
                    icon: Icons.task_alt,
                  ),

                  DashboardCard(
                    title: "Completed",
                    value: "5",
                    icon: Icons.check_circle,
                  ),

                  DashboardCard(
                    title: "Pending",
                    value: "7",
                    icon: Icons.pending_actions,
                  ),

                  DashboardCard(
                    title: "Productivity",
                    value: "80%",
                    icon: Icons.trending_up,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}