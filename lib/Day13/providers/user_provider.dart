import 'package:flutter/material.dart';
import '../models/user_model.dart';

enum Status { idle, loading, success, error }

class UserProvider extends ChangeNotifier {
  List<UserModel> _users = [];
  String _searchQuery = "";
  bool showFavoritesOnly = false;
  Status _status = Status.idle;

  List<UserModel> get users => _users;
  Status get status => _status;

  int get favoriteCount =>
      _users.where((u) => u.isFavorite).length;

  List<UserModel> get visibleUsers {
    var list = _users;

    if (showFavoritesOnly) {
      list = list.where((u) => u.isFavorite).toList();
    }

    if (_searchQuery.isNotEmpty) {
      list = list.where((u) =>
          u.name.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }

    return list;
  }

  Future<void> fetchUsers() async {
    try {
      _status = Status.loading;
      notifyListeners();

      await Future.delayed(const Duration(seconds: 2));

      // fake data for practice
      _users = List.generate(
        10,
        (index) => UserModel(
          id: index,
          name: "User $index",
          email: "user$index@mail.com",
          city: "City $index",
        ),
      );

      _status = Status.success;
      notifyListeners();
    } catch (e) {
      _status = Status.error;
      notifyListeners();
    }
  }

  void updateSearch(String value) {
    _searchQuery = value;
    notifyListeners();
  }

  void toggleFavorite(UserModel user) {
    user.isFavorite = !user.isFavorite;
    notifyListeners();
  }

  void toggleFavoriteFilter() {
    showFavoritesOnly = !showFavoritesOnly;
    notifyListeners();
  }

  void deleteUser(UserModel user) {
    _users.remove(user);
    notifyListeners();
  }
}