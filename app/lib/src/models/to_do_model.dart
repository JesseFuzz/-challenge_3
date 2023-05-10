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
    DateTime parsedDateTime;
    try {
      parsedDateTime = DateTime.parse(json['date'].toString());
    } catch (e) {
      parsedDateTime = DateTime.now();
    }

    final timeToString = json['time'].toString();

    final splitted = timeToString.split(':');
    var hour = splitted[0];
    var minute = splitted[1];

    if (hour.length < 2) {
      hour = '0$hour';
    }
    if (minute.length < 2) {
      minute = '0$minute';
    }

    // hour = timeToString.substring(0, 2);
    // minute = timeToString.substring(3, 5);

    final parsedTime = TimeOfDay(
      hour: int.parse(hour),
      minute: int.parse(minute),
    );

    return ToDoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      date: parsedDateTime,
      time: parsedTime,
      isCompleted: json['isCompleted'],
    );
  }
}
