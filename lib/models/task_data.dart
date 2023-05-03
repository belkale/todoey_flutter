import 'package:flutter/foundation.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy eggs', isDone: false),
    Task(name: 'Buy bread', isDone: true)
  ];

  void toggleTask(int index) {
    _tasks[index].isDone = !_tasks[index].isDone;
    notifyListeners();
  }

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  Task getTask(int index) {
    return _tasks[index];
  }

  int get taskCount {
    return _tasks.length;
  }
}
