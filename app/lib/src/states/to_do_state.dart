import 'package:app/src/models/to_do_model.dart';

abstract class ToDoState {}

class ToDoInitialState extends ToDoState {}

class ToDoSuccessState extends ToDoState {
  final List<ToDoModel> toDoList;
  ToDoSuccessState({required this.toDoList});
}

class ToDoLoadingState extends ToDoState {}

class ToDoErrorState extends ToDoState {
  final String message;
  ToDoErrorState({required this.message});
}
