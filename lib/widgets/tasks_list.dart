import 'package:flutter/material.dart';
import 'package:todobedo/widgets/task_tile.dart';
import 'package:todobedo/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList({this.tasks});
  final List<Task> tasks;
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
