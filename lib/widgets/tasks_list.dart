import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {

  TasksList({required this.tasks});

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {





  @override
  Widget build(BuildContext context) {



    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback : (bool checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            },);
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

