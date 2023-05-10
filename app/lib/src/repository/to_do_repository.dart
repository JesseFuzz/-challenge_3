import 'package:flutter/material.dart';
import '../interfaces/i_local_storage_service.dart';
import '../models/to_do_model.dart';
import '../statics/strings.dart';

class ToDoRepository {
  final ILocalStorageService _localStorageService;

  ToDoRepository(this._localStorageService);

  Future<void> createToDo({
    required String id,
    required String title,
    required String description,
    required DateTime date,
    required TimeOfDay time,
  }) async {
    final parsedTime = '${time.hour}:${time.minute}';
    await _localStorageService.post(
      StaticStrings.todoHiveBoxName,
      {
        'id': id,
        'title': title,
        'description': description,
        'date': date.toString(),
        'time': parsedTime,
        'isCompleted': false,
      },
    );
  }

  Future<void> deleteToDo({required int index}) async {
    await _localStorageService.delete(
      StaticStrings.todoHiveBoxName,
      index,
    );
  }

  ToDoModel getToDo({required String box, required int index}) {
    try {
      final todo = _localStorageService.getAt(
        box,
        index,
      );
      final teste = todo.cast<String, dynamic>();
      return ToDoModel.fromMap(teste);
    } on Exception catch (e) {
      debugPrint('Error in getToDo: $e');
      rethrow;
    }
  }

  // Box<dynamic> valueListenable(String table) {
  //   final todos = _localStorageService.getDBChange(
  //     table,
  //   );
  //   return todos;
  // }

  Future<List<ToDoModel>> getAllTodos() async {
    final todos = await _localStorageService.getAll(
      StaticStrings.todoHiveBoxName,
    );
    final todosList = todos.map((e) {
      final teste = Map<String, dynamic>.from(e);
      // final teste = e.cast<String, dynamic>();
      //não usar cast, usar .from
      return ToDoModel.fromMap(teste);
    }).toList();
    return todosList;
  }

  Future<void> updateToDo({
    required int index,
    required bool isCompleted,
    required ToDoModel todo,
  }) async {
    await _localStorageService.update(
      StaticStrings.todoHiveBoxName,
      index,
      {
        'isCompleted': isCompleted,
      },
    );
  }
}
