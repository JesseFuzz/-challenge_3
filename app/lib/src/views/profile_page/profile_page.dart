import 'package:app/src/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes().chatListPage,
                ),
            icon: Icon(
              Icons.person_off_outlined,
              color: Colors.blue,
              size: 50,
            )),
      ),
    );
  }
}
