import 'package:design_system/src/theme/theme_data.dart';
import 'package:flutter/material.dart';

class AddTaskButtonWidget extends StatefulWidget {
  const AddTaskButtonWidget({super.key});

  @override
  State<AddTaskButtonWidget> createState() => _AddTaskButtonWidgetState();
}

class _AddTaskButtonWidgetState extends State<AddTaskButtonWidget> {
  DateTime dateTime = // DateTime(2023, 02, 06);
      DateTime.now();

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate:
          // DateTime(2023, 02, 06),
          dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100));

  @override
  Widget build(BuildContext context) {
    final theme = MyThemeData.myTheme;
    return FloatingActionButton(
      tooltip: 'Adicionar Tarefa',
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: theme.backgroundColor,
          context: context,
          builder: (context) => Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Tarefa'),
                  icon: Icon(Icons.task_alt),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('descrição'),
                  icon: Icon(Icons.task_alt),
                ),
              ),
              MaterialButton(
                color: Colors.yellow,
                onPressed: (() async {
                  final date = await pickDate();
                  if (date == null) return; //quando apertar cancel
                  setState(() => dateTime = date);
                  // if (date != null) {
                  //   setState(
                  //     () {
                  //       dateTime = date;
                  //     },
                  //   );
                  // }

                  // showDatePicker(
                  //   context: context,
                  //   initialDate: DateTime.now(),
                  //   firstDate: DateTime(1900),
                  //   lastDate: DateTime(2100),
                  // );
                }),
                child:
                    Text('${dateTime.day}/${dateTime.month}/${dateTime.year}'),
              ),

              Spacer(),
              ElevatedButton(
                child: const Text('Fechar edição'),
                onPressed: () => Navigator.pop(context),
              ),

              Text('${dateTime.day}/${dateTime.month}/${dateTime.year}')
              // DatePickerDialog(
              //   initialDate: DateTime.fromMillisecondsSinceEpoch(Object as int),
              //   firstDate: DateTime(2021),
              //   lastDate: DateTime(2022),
              // )
            ],
          ),
        );

        // showCupertinoModalPopup(
        //   context: context,
        //   builder: (context) => Center(
        //     child: Container(
        //       height: 250,
        //       width: 250,
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(20),
        //         color: Color(0xFFF3FC8A),
        //       ),
        //       child: Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             CupertinoTextFormFieldRow(
        //               placeholder: 'Tarefa',
        //             ),
        //             CupertinoTextFormFieldRow(
        //               placeholder: 'Prazo',
        //             ),
        //           ]),
        //     ),
        //   ),
        // );
      },
      child: const Icon(Icons.add),
    );
  }
}
