import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todobedo/models/task_data.dart';
import 'package:todobedo/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                title: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (checkboxState) {
                  /*
                setState(() {
                  Provider.of<TaskData>(context).tasks[index].toggleDone();
                });
                */
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
