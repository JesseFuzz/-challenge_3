import 'package:app/src/models/to_do_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../design_system.dart';
import '../../parsers/date_time_parser.dart';

class TaskItemWidget extends StatefulWidget {
  final ToDoModel toDo;

  final void Function()? onCheck;
  final String? title;
  final String? description;
  final DateTime? date;
  final TimeOfDay? time;
  final bool? isCompleted;

  final void Function(BuildContext) onDelete;
  const TaskItemWidget({
    Key? key,
    required this.toDo,
    required this.onDelete,
    required this.onCheck,
    this.title,
    this.description,
    this.date,
    this.time,
    this.isCompleted,
  }) : super(key: key);

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  // String get title => widget.toDo.title;
  // String get description => widget.toDo.description;
  // DateTime get date => widget.toDo.date;
  // TimeOfDay get time => widget.toDo.time;
  // bool get isCompleted => widget.toDo.isCompleted;

  @override
  Widget build(BuildContext context) {
    final isCompleted = widget.toDo.isCompleted;
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;
    const screenSizeWidth = 375;
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: widget.onDelete,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade500,
            //borda circular pra ficar igual o container abaixo
            borderRadius: BorderRadius.circular(12),
          )
        ],
      ),
      child: Container(
        height: screenSize.width * (67 / screenSizeWidth),
        width: screenSize.width * (338 / screenSizeWidth),
        margin: EdgeInsets.only(
          top: screenSize.width * (12 / screenSizeWidth),
          left: screenSize.width * (12 / screenSizeWidth),
          right: screenSize.width * (12 / screenSizeWidth),
        ),
        decoration: BoxDecoration(
          color: Color(0xFF1B1D22),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: widget.onCheck,
              child: Container(
                margin: EdgeInsets.all(
                  screenSize.width * (14 / screenSizeWidth),
                ),
                height: screenSize.width * (40 / screenSizeWidth),
                width: screenSize.width * (40 / screenSizeWidth),
                decoration: BoxDecoration(
                  border: Border.all(color: customColorTheme.secondary),
                  color: isCompleted ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.check,
                  color: Color(0xFF1B1D22),
                ),
              ),
            ),
            // Checkbox(
            //   value: true,
            //   onChanged: (value) {},
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.toDo.title,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: screenSize.width * (6 / screenSizeWidth),
                ),
                Text(
                  widget.toDo.description,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      DateTimeParser.toStringAsDDMMYYYY(widget.toDo.date),
                      style: TextStyle(
                        color: widget.toDo.date.isAfter(DateTime.now())
                            ? Colors.white
                            : Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      DateTimeParser.toStringAsHHMM(widget.toDo.time),
                      style: TextStyle(
                        color: widget.toDo.date.isAfter(DateTime.now())
                            ? Colors.white
                            : Colors.red,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
