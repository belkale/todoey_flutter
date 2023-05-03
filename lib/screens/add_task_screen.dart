import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String taskName = '';
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskName = value;
              },
            ),
            const SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
                context.read<TaskData>().addTask(taskName);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20.0),
              ),
              child: const Text(
                'Add',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
