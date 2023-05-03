import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final int index;
  const TaskTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      Task task = taskData.getTask(index);
      return ListTile(
        title: Text(
          task.name,
          style: TextStyle(
            fontSize: 20.0,
            decoration:
                task.isDone ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Checkbox(
          value: task.isDone,
          onChanged: (value) {
            taskData.toggleTask(index);
          },
        ),
        onLongPress: () {
          taskData.deleteTask(index);
        },
      );
    });
  }
}
