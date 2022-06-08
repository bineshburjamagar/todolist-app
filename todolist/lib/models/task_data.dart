import 'package:flutter/foundation.dart';
import 'package:todolist/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [Task(name: 'Buy weed'), Task(name: 'Buy bonf')];
}
