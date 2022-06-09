import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final void Function() longPressCallback;

  const TaskTile(
      {Key? key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: const Color(0xffFF6600),
          value: isChecked,
          onChanged: checkboxCallback as void Function(bool?)?,
          //  onChanged: toggleCheckboxState as void Function(bool?)?,
        ));
  }
}
