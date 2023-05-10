import 'package:app/src/stores/to_do_store.dart';
import 'package:app/src/views/profile_page/widgets/bottom_sheet_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../../states/to_do_state.dart';

class ProfilePage extends StatefulWidget {
  final ToDoStore store;
  const ProfilePage({super.key, required this.store});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //passar por injeção na classe da página em questão
  ToDoStore get store => widget.store;

  @override
  void initState() {
    super.initState();
    store.getToDoList();
  }

  @override
  Widget build(BuildContext context) {
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;

    return Scaffold(
      backgroundColor: customColorTheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContactInformationCardWidget(),
            ValueListenableBuilder(
              valueListenable: store,
              builder: (context, todoState, __) {
                if (todoState is ToDoLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (todoState is ToDoErrorState) {
                  return Center(
                    child: Text(
                      todoState.message,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  );
                }
                if (todoState is ToDoSuccessState) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: todoState.toDoList.length,
                    itemBuilder: (context, index) {
                      return TaskItemWidget(
                        toDo: todoState.toDoList[index],
                        onDelete: (context) => store.deleteToDoItem(
                          todo: todoState.toDoList[index],
                        ),
                        onCheck: () => store.updateToDoItem(
                          id: todoState.toDoList[index].id,
                          todo: todoState.toDoList[index],
                        ),
                      );
                    },
                  );
                }
                return Container();
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
              return BottomSheetWidget(
                store: store,
              );
            },
          );
        },
      ),
    );
  }
}
