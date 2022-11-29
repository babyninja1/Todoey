import 'package:flutter/material.dart';


class AddTaskScreen extends StatefulWidget {
  AddTaskScreen(this.addTaskCallback);

  final Function addTaskCallback;

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              onChanged: (newText) {
                setState((){
                  newTaskTitle = newText;
                });

                  print(newTaskTitle);
              },
              textAlign: TextAlign.center,
              autofocus: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: ElevatedButton(
                child: Text(
                  "Add",
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
                onPressed: () {
                  //Task userAddedTask=Task(isDone: false, name: taskText);

                  setState((){
                    widget.addTaskCallback(newTaskTitle);
                  });

                  print(newTaskTitle);
                  //print('pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
