import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';
import 'package:todolist/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  // ignore: use_key_in_widget_constructors
  const TaskList(
    this.tasks,
  );

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: widget.tasks[index].isDone,
            taskTitle: widget.tasks[index].name,
            checkboxCallback: (bool? checkBoxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}
