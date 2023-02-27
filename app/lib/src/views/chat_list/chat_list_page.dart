import 'package:flutter/material.dart';

import '../../utils/routes/app_routes.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes().chatPage,
                ),
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.blue,
              size: 50,
            )),
      ),
    );
  }
}
