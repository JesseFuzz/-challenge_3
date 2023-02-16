import 'package:flutter/material.dart';

class CallButtonWidget extends StatelessWidget {
  final Widget icon;
  const CallButtonWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const screenSizeWidth = 375;
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(),
        height: screenSize.width * (60 / screenSizeWidth),
        width: screenSize.width * (60 / screenSizeWidth),
        decoration: BoxDecoration(
          color: const Color(0xFF6D67E1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: icon as Icon,
      ),
    );
  }
}
