import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.title, this.isChecked, this.checkboxCallback});
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
