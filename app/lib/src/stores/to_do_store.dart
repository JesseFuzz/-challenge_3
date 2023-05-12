import 'package:app/src/repository/to_do_repository.dart';
import 'package:app/src/states/to_do_state.dart';
import 'package:app/src/utils/sorter/todo_sorter.dart';
import 'package:flutter/cupertino.dart';

import '../models/to_do_model.dart';

class ToDoStore extends ValueNotifier<ToDoState> {
  final ToDoRepository _toDoRepository;
  ToDoStore(this._toDoRepository) : super(ToDoInitialState());

  Future<void> getToDoList() async {
    value = ToDoLoadingState();
    try {
      await Future.delayed(const Duration(seconds: 2));
      final todos = await _toDoRepository.getAllTodos();

      final todosSorted = ToDoSorter.sort(todos);

      value = ToDoSuccessState(toDoList: todosSorted);
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      value = ToDoErrorState(message: e.toString());
    }
  }

  Future<void> addToDoItem({required Map<String, dynamic> todo}) async {
    try {
      await _toDoRepository.createToDo(
        id: todo['id'],
        title: todo['title'],
        description: todo['description'],
        date: todo['date'],
      );

      await getToDoList();
    } catch (e) {
      value = ToDoErrorState(message: e.toString());
      rethrow;
    }
  }

  void deleteToDoItem({required ToDoModel todo}) {
    try {
      final id = todo.id;
      final index = _findToDoIndex(id);

      if (index == null) {
        return;
      }
      _toDoRepository.deleteToDo(index: index);
      getToDoList();
    } catch (e) {
      value = ToDoErrorState(message: e.toString());
      rethrow;
    }
  }

  void updateToDoItem({
    required String id,
    required ToDoModel todo,
  }) {
    final index = _findToDoIndex(id);

    if (index == null) {
      return;
    }

    final isCompleted = todo.isCompleted;
    _toDoRepository.updateToDo(
      index: index,
      todo: todo,
      isCompleted: isCompleted,
    );
    getToDoList();
  }

  int? _findToDoIndex(String id) {
    int? index;
    final state = value;
    if (state is ToDoSuccessState) {
      final currentToDoList = state.toDoList;
      index = currentToDoList.indexWhere((element) => element.id == id);
    }
    return index;
  }
}
