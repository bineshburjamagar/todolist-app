import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   const TaskTile({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;
//   void checkboxCallback(bool checkBoxState) {
//     setState(() {
//       isChecked = checkBoxState;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'This is a task',
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: TaskCheckBox(
//           checkBoxState: isChecked, toggleCheckboxState: checkboxCallback),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxState;
//   final Function toggleCheckboxState;

//   const TaskCheckBox(
//       {Key? key,
//       required this.checkBoxState,
//       required this.toggleCheckboxState})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       activeColor: Colors.blueAccent,
//       onChanged: toggleCheckboxState as void Function(bool?)?,
//     );
//   }
// }

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        isChecked = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'this is a sample task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: checkBoxCallBack,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;
  // ignore: use_key_in_widget_constructors
  const TaskCheckbox(
      {required this.checkboxState, required this.toggleCheckboxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxState as void Function(bool?)?,
    );
  }
}
