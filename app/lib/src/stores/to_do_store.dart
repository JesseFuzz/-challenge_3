import 'package:app/src/repository/to_do_repository.dart';
import 'package:app/src/services/hive_local_storage_service.dart';
import 'package:app/src/states/to_do_state.dart';
import 'package:flutter/cupertino.dart';

class ToDoStore extends ValueNotifier<ToDoState> {
  final List<Map<String, dynamic>> _tasks = [];
  final ToDoRepository _toDoRepository =
      ToDoRepository(HiveLocalStorageService());
  ToDoStore() : super(ToDoInitialState());

  Future getToDoList({required String table, required int index}) async {
    value = ToDoLoadingState();
    try {
      final toDoList = _toDoRepository.getToDo(box: table, index: index);
      _tasks.add(toDoList);
      value = ToDoSuccessState(toDoMap: toDoList);
    } catch (e) {
      value = ToDoErrorState(message: e.toString());
    }
  }

  //   Map<String, dynamic> getToDoList({required String box, required int index}) {
  //   final toDoList = _toDoRepository.getToDo(box: box, index: index);
  //   return toDoList;
  // }

  void deleteToDoItem({required int index}) {
    _toDoRepository.deleteToDo(index: index);
  }

  // void add(ToDoModel toDoModel) {
  //   final toDoList = value as List<ToDoModel>;
  //   toDoList.add(toDoModel);
  //   value = toDoList;
  // }

  // void remove(ToDoModel toDoModel) {
  //   final toDoList = value as List<ToDoModel>;
  //   toDoList.remove(toDoModel);
  //   value = toDoList;
  // }

  // void update(ToDoModel toDoModel) {
  //   final toDoList = value as List<ToDoModel>;
  //   final index = toDoList.indexWhere((element) => element.id == toDoModel.id);
  //   toDoList[index] = toDoModel;
  //   value = toDoList;
  // }
}
