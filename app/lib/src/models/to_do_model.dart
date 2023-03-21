import 'package:flutter/material.dart';

class ToDoModel {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;
  final DateTime date;
  final TimeOfDay time;

  ToDoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.isCompleted,
  });

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};

    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['isCompleted'] = isCompleted;
    data['date'] = date.millisecondsSinceEpoch;
    data['time'] = time.toString();
    return data;
  }

//how to convert string to TimeOfday flutter
//how to convert millisecondsSinceEpoch to DateTime flutter

  factory ToDoModel.fromMap(Map<String, dynamic> json) {
    return ToDoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: json['date'],
      time: json['time'],
      isCompleted: json['isCompleted'],
    );
  }
}

// {
//     "title": "teste",
//     "description": "teste",
//     "isCompleted": false,
//     "date": "2023-03-13 00:00:00.000",
//     "time": "19:30"
// }
// flutter packages pub run build_runner build --delete-conflicting-outputs
