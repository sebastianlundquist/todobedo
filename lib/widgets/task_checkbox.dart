import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});
  final bool checkboxState;
  final Function toggleCheckboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
