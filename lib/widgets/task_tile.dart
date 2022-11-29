import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        //onChanged: toggleCheckboxState(checkBoxState),
        onChanged: (value) {
          //toggleCheckboxState(value);
          checkboxCallback(value);
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(
      {required this.checkBoxState, required this.toggleCheckboxState});

  final bool checkBoxState;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      //onChanged: toggleCheckboxState(checkBoxState),
      onChanged: (value) {
        toggleCheckboxState(value);
      },
    );
  }
}

