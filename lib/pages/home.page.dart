import 'package:flutter/material.dart';
import 'package:kum/data/repository.dart';
import 'package:kum/models/task.dart';
import 'package:kum/widgets/Task.Widget.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
    
  @override
  Widget build(BuildContext context) {
    final Repository repo = Repository();
    final List<Task>data = repo.fetchTask();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child : const Text("ALL"),
        ),
        Divider(
          color: const Color.fromARGB(255, 165, 178, 169),
          thickness: 0.3,
        ),
        Expanded(child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context , index) => TaskWidget(task: data[index]),
        ))
      ],

    );
  }
}
