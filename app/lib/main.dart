import 'package:app/src/utils/routes/app_routes.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger-App-Design',
      theme: MyThemeData.myTheme,
      initialRoute: AppRoutes().chatListPage,
      routes: AppRoutes().pages(),
    );
  }
}
