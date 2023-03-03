import 'package:flutter/material.dart';

import '../../models/options_model.dart';

class OptionsModelMock {
  static List<OptionsModel> getOptions() {
    return [
      OptionsModel(
        name: 'all',
        unreadMessages: '35',
        icon: const Icon(Icons.chat),
        isSelected: true,
      ),
      OptionsModel(
        name: 'Live Chat',
        unreadMessages: '2',
        icon: const Icon(Icons.archive),
        isSelected: false,
      ),
      OptionsModel(
        name: 'Live chat',
        unreadMessages: '5',
        icon: const Icon(Icons.bookmark),
        isSelected: false,
      )
    ];
  }
}
