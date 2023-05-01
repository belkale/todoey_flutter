import 'package:flutter/material.dart';
import 'package:todoey_flutter/services/task.dart';

import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.taskList,
  });

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30.0),
      children: taskList.map((task) => TaskTile(task: task)).toList(),
    );
  }
}
