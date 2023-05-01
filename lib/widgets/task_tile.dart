import 'package:flutter/material.dart';
import 'package:todoey_flutter/services/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.task,
  });
  final Task task;
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
        onChanged: (value) {},
      ),
    );
  }
}
