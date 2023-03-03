import 'package:flutter/cupertino.dart';

class OptionsModel {
  final String name;
  final Icon icon;
  final String unreadMessages;
  bool isSelected;

  OptionsModel({
    required this.name,
    required this.unreadMessages,
    required this.icon,
    required this.isSelected,
  });
}
