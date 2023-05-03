import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final int index;
  const TaskTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListTile(
        title: Text(
          taskData.getTask(index).name,
          style: TextStyle(
            fontSize: 20.0,
            decoration: taskData.getTask(index).isDone
                ? TextDecoration.lineThrough
                : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          value: taskData.getTask(index).isDone,
          onChanged: (value) {
            taskData.toggleTask(index);
          },
        ),
      );
    });
  }
}
