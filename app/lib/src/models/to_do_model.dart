class ToDoModel {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime date;

  ToDoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.isCompleted,
  });

  factory ToDoModel.fromMap(Map<String, dynamic> json) {
    DateTime parsedDateTime;
    try {
      parsedDateTime = DateTime.parse(json['date'].toString());
    } catch (e) {
      parsedDateTime = DateTime.now();
    }

    return ToDoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: parsedDateTime,
      isCompleted: json['isCompleted'],
    );
  }
}
