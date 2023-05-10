import 'package:app/src/models/to_do_model.dart';

class ToDoSorter {
  static List<ToDoModel> sort(List<ToDoModel> todos) {
    return todos.map((e) => e).toList()
      ..sort((a, b) => a.date.compareTo(b.date));
  }
}
