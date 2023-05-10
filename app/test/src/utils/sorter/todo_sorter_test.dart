import 'package:app/src/models/to_do_model.dart';
import 'package:app/src/utils/sorter/todo_sorter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'deve testar a ordenação de tarefas',
    () {
      final testedList = ToDoSorter.sort(unorderedList);
      expect(testedList, orderedList);
    },
  );
}

final todo1 = ToDoModel(
  title: 'Tarefa 1',
  description: 'Descrição da tarefa 1',
  date: DateTime(2020, 10, 10),
  time: const TimeOfDay(hour: 10, minute: 10),
  isCompleted: false,
);

final todo2 = ToDoModel(
  title: 'Tarefa 2',
  description: 'Descrição da tarefa 2',
  date: DateTime(2023, 10, 11),
  time: const TimeOfDay(hour: 10, minute: 10),
  isCompleted: true,
);

final todo3 = ToDoModel(
  title: 'Tarefa 3',
  description: 'Descrição da tarefa 3',
  date: DateTime(2022, 10, 12),
  time: const TimeOfDay(hour: 10, minute: 10),
  isCompleted: false,
);

final unorderedList = [todo1, todo2, todo3];
final orderedList = [todo1, todo3, todo2];
