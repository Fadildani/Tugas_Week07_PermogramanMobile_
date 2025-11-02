import 'package:flutter/foundation.dart';

class TaskProvider extends ChangeNotifier {
  final List<String> _tasks = [];

  List<String> get tasks => List.unmodifiable(_tasks);

  void addTask(String task) {
    final trimmed = task.trim();
    if (trimmed.isEmpty) return;
    _tasks.insert(0, trimmed);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void clearTasks() {
    _tasks.clear();
    notifyListeners();
  }
}
