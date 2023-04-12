import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../interfaces/i_local_storage_service.dart';
import '../models/to_do_model.dart';
import '../statics/strings.dart';

class ToDoRepository {
  final ILocalStorageService _localStorageService;

  ToDoRepository(this._localStorageService);

  Future<void> createToDo({
    required String title,
    required String description,
    required DateTime date,
    required TimeOfDay time,
  }) async {
    final toDo = ToDoModel(
      title: title,
      description: description,
      date: date,
      time: time,
      isCompleted: false,
    );

    await _localStorageService.post(
      StaticStrings.todoHiveBoxName,
      toDo.toMap(),
    );
  }

  Future<void> deleteToDo({required int index}) async {
    await _localStorageService.delete(
      StaticStrings.todoHiveBoxName,
      index,
    );
  }

  Map<String, dynamic> getToDo({required String box, required int index}) {
    try {
      final todo = _localStorageService.getAt(
        box,
        index,
      );
      final teste = todo.cast<String, dynamic>();
      return teste;
    } catch (e) {
      print('Error in getToDo: $e');
      rethrow;
    }
  }

  Box<dynamic> valueListenable(String table) {
    final todos = _localStorageService.getDBChange(
      table,
    );
    return todos;
  }
}

  // Map<String, dynamic> getAllTodos() {
  //   final todos = _localStorageService.getAll(
  //     StaticStrings.todoHiveBoxName,
  //   );
  //   return todos;
  // }
