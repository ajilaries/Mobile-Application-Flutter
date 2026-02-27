import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeDay11ApiScreen extends StatefulWidget {
  const PracticeDay11ApiScreen({super.key});

  @override
  State<PracticeDay11ApiScreen> createState() =>
      _PracticeDay11ApiScreenState();
}

class _PracticeDay11ApiScreenState
    extends State<PracticeDay11ApiScreen> {

  List allUsers = [];
  List filteredUsers = [];

  int userCount = 0;

  TextEditingController searchController =
      TextEditingController();

  late Future futureUsers;

  Future<List<dynamic>> fetchUsers() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  void initState() {
    super.initState();
    futureUsers = fetchUsers();
  }

  Future<void> refreshData() async {
    setState(() {
      futureUsers = fetchUsers();
    });
  }

  void filterUsers(String query) {
    final results = allUsers.where((user) {
      final name = user["name"].toLowerCase();
      return name.contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredUsers = results;
      userCount = filteredUsers.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users ($userCount)"),
      ),

      body: RefreshIndicator(
        onRefresh: refreshData,

        child: FutureBuilder(
          future: futureUsers,
          builder: (context, snapshot) {

            // 🔄 LOADING
            if (snapshot.connectionState ==
                ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            // ❌ ERROR
            if (snapshot.hasError) {
              return const Center(
                child: Text("Something went wrong"),
              );
            }

            // ✅ SUCCESS
            if (allUsers.isEmpty) {
              allUsers = snapshot.data!;
              filteredUsers = allUsers;
              userCount = filteredUsers.length;
            }

            return Column(
              children: [

                // 🔍 SEARCH BAR
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: searchController,
                    onChanged: filterUsers,
                    decoration: InputDecoration(
                      hintText: "Search user...",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                // 📋 LIST
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredUsers.length,
                    itemBuilder: (context, index) {

                      final user = filteredUsers[index];

                      return Card(
                        margin:
                            const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6),
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text(
                              user["name"][0],
                            ),
                          ),
                          title: Text(user["name"]),
                          subtitle: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(user["email"]),
                              Text(
                                user["address"]["city"],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}