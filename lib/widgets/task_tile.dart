import 'package:flutter/material.dart';
import 'package:todoey_flutter/services/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final void Function(bool?) onCheckboxToggle;
  const TaskTile(
      {super.key, required this.task, required this.onCheckboxToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          fontSize: 20.0,
          decoration:
              task.status ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: task.status,
        onChanged: onCheckboxToggle,
      ),
    );
  }
}
