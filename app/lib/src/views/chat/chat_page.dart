import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../utils/routes/app_routes.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    return Scaffold(
      backgroundColor: customColorTheme.primary,
      appBar: const ProfileWidgetAppBar(),
      body: Column(
        children: [
          Expanded(child: MessageBalloonWidget()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: screenSize.width * (36 / 375)),
              child: const SendMessageFieldWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
