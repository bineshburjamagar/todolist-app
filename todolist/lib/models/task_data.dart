import 'package:flutter/foundation.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Buy weed'), Task(name: 'Buy bonf')];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}
