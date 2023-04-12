import 'package:app/src/repository/to_do_repository.dart';
import 'package:app/src/services/hive_local_storage_service.dart';
import 'package:app/src/statics/strings.dart';
import 'package:app/src/stores/to_do_store.dart';
import 'package:app/src/views/profile_page/widgets/bottom_sheet_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final db = HiveLocalStorageService();
    final listenTo = ToDoRepository(db).valueListenable(
      StaticStrings.todoHiveBoxName,
    );

    return Scaffold(
      backgroundColor: customColorTheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContactInformationCardWidget(),
            ValueListenableBuilder(
              valueListenable: listenTo.listenable(),
              builder: (context, Box box, _) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    final todos = ToDoRepository(db).getToDo(
                      box: StaticStrings.todoHiveBoxName,
                      index: index,
                    );

                    // final todos = ToDoStore().getToDoList(
                    //   table: StaticStrings.todoHiveBoxName,
                    //   index: index,
                    // );
                    return TaskItemWidget(
                      title: todos['title'],
                      description: todos['description'],
                      isCompleted: todos['isCompleted'],
                      deleteFunction: (context) =>
                          // ToDoStore().deleteToDoItem(index: index),
                          ToDoRepository(db).deleteToDo(index: index),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: customColorTheme.onPrimary),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const BottomSheetWidget();
            },
          );
        },
      ),
    );
  }
}
