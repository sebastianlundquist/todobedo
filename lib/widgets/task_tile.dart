import 'package:flutter/material.dart';
import 'package:todobedo/widgets/task_checkbox.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task',
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: (checkboxState) {
            setState(() {
              isChecked = checkboxState;
            });
          }),
    );
  }
}
