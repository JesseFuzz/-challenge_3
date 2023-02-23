import 'package:flutter/material.dart';

class TaskItemWidget extends StatefulWidget {
  const TaskItemWidget({super.key});

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  bool isCompleted = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const screenSizeWidth = 375;
    return Container(
      height: screenSize.width * (67 / screenSizeWidth),
      width: screenSize.width * (338 / screenSizeWidth),
      decoration: BoxDecoration(
        color: const Color(0xFF1B1D22),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isCompleted = !isCompleted;
              });
            },
            child: Container(
              margin: EdgeInsets.all(
                screenSize.width * (14 / screenSizeWidth),
              ),
              height: screenSize.width * (40 / screenSizeWidth),
              width: screenSize.width * (40 / screenSizeWidth),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFF3FC8A)),
                color: isCompleted
                    ? const Color(0xFFF3FC8A)
                    : const Color(0xFF1B1D22),
                borderRadius: BorderRadius.circular(10),
                // border: Border.all(width: 1, color: Colors.blue),
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
                'Interview with CTO',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: screenSize.width * (6 / screenSizeWidth),
              ),
              Text('Sep 28, 2022, 14:25 AM',
                  style: TextStyle(
                    color: Colors.grey,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
