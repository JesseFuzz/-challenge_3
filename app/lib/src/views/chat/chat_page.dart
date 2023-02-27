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
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes().profilePage,
                ),
            icon: Icon(
              Icons.chat,
              color: Colors.blue,
              size: 50,
            )),
      ),
    );
  }
}
