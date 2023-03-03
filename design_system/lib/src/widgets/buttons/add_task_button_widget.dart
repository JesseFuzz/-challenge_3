import 'package:design_system/src/theme/theme_data.dart';
import 'package:flutter/material.dart';

class AddTaskButtonWidget extends StatefulWidget {
  const AddTaskButtonWidget({super.key});

  @override
  State<AddTaskButtonWidget> createState() => _AddTaskButtonWidgetState();
}

class _AddTaskButtonWidgetState extends State<AddTaskButtonWidget> {
  DateTime dateTime = DateTime.now();

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );

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
                onPressed: () async {
                  final date = await pickDate();
                  if (date == null) return;
                  setState(() => dateTime = date);
                },
                child: Text(
                    'Selecione a data:  ${dateTime.day}/${dateTime.month}'),
              ),
              const Spacer(),
              ElevatedButton(
                child: const Text('Fechar edição'),
                onPressed: () => Navigator.pop(context),
              ),
              Text('${dateTime.day}/${dateTime.month}/${dateTime.year}')
            ],
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
