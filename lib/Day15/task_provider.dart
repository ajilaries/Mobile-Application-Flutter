import 'package:flutter/material.dart';
import 'task_model.dart';

enum Filter { all, completed, pending }

class TaskProvider extends ChangeNotifier {
  final List<TaskModel> _tasks = [];
  Filter _currentFilter = Filter.all;

  List<TaskModel> get tasks => _tasks;
  Filter get currentFilter => _currentFilter;

  int get totalCount => _tasks.length;

  int get completedCount =>
      _tasks.where((t) => t.isCompleted).length;

  List<TaskModel> get visibleTasks {
    switch (_currentFilter) {
      case Filter.completed:
        return _tasks.where((t) => t.isCompleted).toList();
      case Filter.pending:
        return _tasks.where((t) => !t.isCompleted).toList();
      case Filter.all:
      default:
        return _tasks;
    }
  }

  void addTask(String title) {
    _tasks.add(
      TaskModel(
        id: DateTime.now().millisecondsSinceEpoch,
        title: title,
      ),
    );
    notifyListeners();
  }

  void toggleTask(TaskModel task) {
    task.isCompleted = !task.isCompleted;
    notifyListeners();
  }

  void deleteTask(TaskModel task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void changeFilter(Filter filter) {
    _currentFilter = filter;
    notifyListeners();
  }
}