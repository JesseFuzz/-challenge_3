import 'package:flutter/material.dart';

class DateTimeParser {
  static String toStringAsDDMMYYYY(DateTime dateTime) {
    return '${dateTime.day.toString().padLeft(2, '0')}/${dateTime.month.toString().padLeft(2, '0')}/${dateTime.year.toString().padLeft(4, '0')}';
  }

  static String toStringAsHHMM(TimeOfDay timeOfDay) {
    // ignore: lines_longer_than_80_chars
    return '${timeOfDay.hour.toString().padLeft(2, '0')}:${timeOfDay.minute.toString().padLeft(2, '0')}';
  }
}
