import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class UserProvider extends ChangeNotifier {
  List users = [];
  List filteredUsers = [];

  bool isLoading = false;
  String? error;
  bool showFavoritesOnly = false;

  get visibleUsers => null;

  get favoriteCount => null;

  Future<void> fetchUsers() async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users"),
      );

      if (response.statusCode == 200) {
        users = jsonDecode(response.body);

        // Add favorite field
        for (var user in users) {
          user["isFavorite"] = false;
        }

        filteredUsers = users;
        error = null;
      } else {
        error = "Failed to load data";
      }
    } catch (e) {
      error = "Something went wrong";
    }

    isLoading = false;
    notifyListeners();
  }

  void searchUsers(String query) {
    filteredUsers = users.where((user) {
      final name = user["name"].toLowerCase();
      return name.contains(query.toLowerCase());
    }).toList();

    notifyListeners();
  }

  void toggleFavorite(int index) {
    filteredUsers[index]["isFavorite"] =
        !filteredUsers[index]["isFavorite"];

    notifyListeners();
  }

  void deleteUser(int index) {
    final userToRemove = filteredUsers[index];
    users.remove(userToRemove);
    filteredUsers.removeAt(index);

    notifyListeners();
  }

  void toggleFavoriteFilter() {
    showFavoritesOnly = !showFavoritesOnly;

    if (showFavoritesOnly) {
      filteredUsers =
          users.where((u) => u["isFavorite"] == true).toList();
    } else {
      filteredUsers = users;
    }

    notifyListeners();
  }

  void updateSearch(String value) {}
}