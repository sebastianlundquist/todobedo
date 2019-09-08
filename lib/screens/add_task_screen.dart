import 'package:flutter/material.dart';

String newTaskTitle;

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTaskCallback);
  final Function addTaskCallback;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(32.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton(
              child: Text('Add'),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
