import 'package:app/src/services/hive_local_storage_service.dart';
import 'package:app/src/utils/routes/app_routes.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
export 'src/models/contact_model.dart';
export 'src/models/options_model.dart';
export 'src/utils/mocks/contact_model_mock.dart';
export 'src/utils/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveLocalStorageService().initDatabase();
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
      initialRoute: AppRoutes.chatListPage,
      routes: AppRoutes.pages(),
    );
  }
}
