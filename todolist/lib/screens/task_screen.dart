// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/task_list.dart';
import 'package:intl/intl.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  Widget buildButtomSheet(BuildContext context) {
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Color(0xFFEC6E0E)),
              ),
              const TextField(
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              FlatButton(
                onPressed: () {},
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEC6E0E),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildButtomSheet);
        },
        backgroundColor: const Color(0xFFEC6E0E),
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const CircleAvatar(
                //   child: Icon(
                //     Icons.view_list_rounded,
                //     size: 30.0,
                //     color: Color(0xFFEC6E0E),
                //   ),
                //   backgroundColor: Colors.white,
                //   radius: 30.0,
                // ),
                // const SizedBox(height: 10.0),

                const Text(
                  'TO DO LIST',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700),
                ),
                // const Text(
                //   '666 Tasks',
                //   style: TextStyle(color: Colors.white, fontSize: 18.0),
                // ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Today',
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 5.0),
            child: Text(DateFormat.yMMMEd().format(DateTime.now()),
                style: const TextStyle(color: Colors.white70, fontSize: 18)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: DatePicker(
              DateTime.now(),
              height: 80.0,
              width: 60.0,
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.white,
              selectedTextColor: const Color(0xFFEC6E0E),
              dateTextStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: const TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
