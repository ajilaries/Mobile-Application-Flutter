import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/task.dart';

class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier() : super([]);

  void addTask(String title) {
    if (title.isEmpty) return;
    state = [...state, Task(title: title)];
  }

  void removeTask(int index) {
    state = state.where((task) => state.indexOf(task) != index).toList();
  }

  void toggleTask(int index) {
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index)
          state[i].toggle()
        else
          state[i]
    ];
  }

  void clearAll() {
    state = [];
  }
}

final taskProvider =
    StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier();
});