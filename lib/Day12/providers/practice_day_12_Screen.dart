import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class PracticeDay12Screen extends StatefulWidget {
  const PracticeDay12Screen({super.key});

  @override
  State<PracticeDay12Screen> createState() =>
      _PracticeDay12ScreenState();
}

class _PracticeDay12ScreenState
    extends State<PracticeDay12Screen> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        context.read<UserProvider>().fetchUsers());
  }

  @override
  Widget build(BuildContext context) {

    final provider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Users (${provider.filteredUsers.length})"),
      ),

      body: Builder(
        builder: (_) {

          if (provider.isLoading) {
            return const Center(
                child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            return Center(
                child: Text(provider.error!));
          }

          return Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  onChanged: provider.searchUsers,
                  decoration: InputDecoration(
                    hintText: "Search user...",
                    prefixIcon:
                        const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount:
                      provider.filteredUsers.length,
                  itemBuilder: (context, index) {

                    final user =
                        provider.filteredUsers[index];

                    return Card(
                      margin:
                          const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 6),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text(
                              user["name"][0]),
                        ),
                        title: Text(user["name"]),
                        subtitle: Text(user["email"]),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}