import 'package:flutter/material.dart';
import '../../views/chat/chat_page.dart';
import '../../views/chat_list/chat_list_page.dart';
import '../../views/profile_page/profile_page.dart';

class AppRoutes {
  final chatListPage = '/';
  final chatPage = '/chatPage';
  final profilePage = '/profilePage';

  Map<String, Widget Function(BuildContext)> pages() {
    final pages = <String, Widget Function(BuildContext)>{
      profilePage: (context) => const ProfilePage(),
      chatListPage: (context) => const ChatListPage(),
      chatPage: (context) => const ChatPage(),
    };
    return pages;
  }
}
