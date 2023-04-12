import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class TaskItemWidget extends StatefulWidget {
  final String title;
  final String description;
  final String? date;
  bool isCompleted;
  final dynamic Function(BuildContext)? deleteFunction;
  TaskItemWidget({
    super.key,
    required this.title,
    required this.description,
    this.date,
    required this.isCompleted,
    required this.deleteFunction,
  });

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const screenSizeWidth = 375;
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: widget.deleteFunction,
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
          color: const Color(0xFF1B1D22),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.isCompleted = !widget.isCompleted;
                });
              },
              child: Container(
                margin: EdgeInsets.all(
                  screenSize.width * (14 / screenSizeWidth),
                ),
                height: screenSize.width * (40 / screenSizeWidth),
                width: screenSize.width * (40 / screenSizeWidth),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFF3FC8A)),
                  color: widget.isCompleted
                      ? const Color(0xFFF3FC8A)
                      : const Color(0xFF1B1D22),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
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
                  widget.title,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: screenSize.width * (6 / screenSizeWidth),
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
