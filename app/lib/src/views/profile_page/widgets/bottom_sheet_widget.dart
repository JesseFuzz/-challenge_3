import 'package:flutter/material.dart';

import '../../../stores/to_do_store.dart';

class BottomSheetWidget extends StatefulWidget {
  final ToDoStore store;
  const BottomSheetWidget({super.key, required this.store});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay.now();
  final _formKey = GlobalKey<FormState>();

  Future<void> _showDatePicker() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    ).then(
      (value) {
        setState(
          () {
            _date = value!;
          },
        );
      },
    );
  }

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      errorInvalidText: 'Horário inválido',
    ).then(
      (
        value, {
        errorInvalidText,
      }) {
        setState(
          () {
            _time = value!;
          },
        );
      },
    );
  }

  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (value) {
                title = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Título',
                icon: Icon(Icons.task_alt),
              ),
            ),
            TextFormField(
              onSaved: (value) {
                description = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
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
                  onPressed: _showDatePicker,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const Icon(Icons.calendar_today),
                          Text(
                            '${_date.day}/${_date.month}/${_date.year}',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.1,
                ),
                ElevatedButton(
                  onPressed: _showTimePicker,
                  child: Column(
                    children: [
                      const Icon(Icons.timer),
                      Text(
                        '${_time.hour}:${_time.minute}',
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              child: const Text('Adicionar tarefa'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('adicionado com sucesso')),
                  );
                  _formKey.currentState!.save();
                  widget.store.addToDoItem(
                    todo: {
                      'id': DateTime.now().millisecond.toString(),
                      'title': title,
                      'description': description,
                      'date': _date,
                      'time': _time,
                    },
                  );
                  _formKey.currentState!.reset();
                  Navigator.pop(context);
                }
              },
            ),
            SizedBox(
              height: screenSize.width * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
