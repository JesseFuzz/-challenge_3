abstract class ToDoState {}

class ToDoInitialState extends ToDoState {}

class ToDoSuccessState extends ToDoState {
  final Map<String, dynamic> toDoMap;

  ToDoSuccessState({required this.toDoMap});
}

class ToDoLoadingState extends ToDoState {}

class ToDoErrorState extends ToDoState {
  final String message;

  ToDoErrorState({required this.message});
}
