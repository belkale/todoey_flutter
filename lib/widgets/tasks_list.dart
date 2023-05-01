import 'package:flutter/material.dart';
import 'package:todoey_flutter/services/task.dart';

import 'task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({
    super.key,
    required this.taskList,
  });

  List<Task> taskList;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30.0),
      children: widget.taskList
          .map((task) => TaskTile(
                task: task,
                onCheckboxToggle: (bool? value) {
                  setState(() {
                    task.status = value!;
                  });
                },
              ))
          .toList(),
    );
  }
}
