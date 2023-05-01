import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

import 'task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({
    super.key,
    required this.tasks,
  });

  List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        task: widget.tasks[index],
        onCheckboxToggle: (bool? value) {
          setState(() {
            widget.tasks[index].isDone = value!;
          });
        },
      ),
      itemCount: widget.tasks.length,
    );
  }
}
