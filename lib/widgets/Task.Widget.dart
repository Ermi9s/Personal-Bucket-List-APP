import 'package:flutter/material.dart';
import 'package:kum/models/task.dart';
class TaskWidget extends StatelessWidget {
  final Task task;
  const TaskWidget({super.key , required this.task});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Card(
        shadowColor: const Color.fromARGB(255, 71, 221, 76),
        child: ListTile(
          leading: Icon(Icons.task_sharp),
          title: Text(task.name),
          subtitle: Text(task.reminder),
          trailing: Text(task.registeredDate),
        ),
      ),
    );
  }
}