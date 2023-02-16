import 'package:flutter/material.dart';

class CustomBottomBarWidget extends StatefulWidget {
  const CustomBottomBarWidget({super.key});

  @override
  State<CustomBottomBarWidget> createState() => _CustomBottomBarWidgetState();
}

class _CustomBottomBarWidgetState extends State<CustomBottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.all(12),
      // margin: EdgeInsets.all(12),
      height: screenSize.width * (106 / 375),
      width: screenSize.width,
      decoration: BoxDecoration(
        color: Color(0xFF20232B).withOpacity(0.1),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(36)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            // spreadRadius: 5,
            // blurRadius: 7,
            // offset: const Offset(0, 3),  // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.message_outlined,
            color: Colors.white,
          ),
        ],
      ),
      // CustomBotomBar(
      //   onTap: (value) => print(value),
      // ),
    );
  }
}
