import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;

    DateTime date = DateTime.now();
    TimeOfDay time = TimeOfDay.now();

    return Scaffold(
      backgroundColor: customColorTheme.primary,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ContactInformationCardWidget(),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
            TaskItemWidget(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Título',
                          icon: Icon(Icons.task_alt),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Descrição',
                          icon: Icon(Icons.task_alt),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.width * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              var selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100),
                              );
                              if (selectedDate != null) {
                                setState(() {
                                  selectedDate = date;
                                });
                              }
                            },
                            child: const Icon(Icons.calendar_today),
                          ),
                          SizedBox(
                            width: screenSize.width * 0.1,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              var selectedTime = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (selectedTime != null) {
                                setState(() {
                                  selectedTime = time;
                                });
                              }
                            },
                            child: const Icon(Icons.timer),
                          )
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        child: const Text('Adicionar tarefa'),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: screenSize.width * 0.1,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
