import 'package:flutter/material.dart';

class SendMessageFieldWidget extends StatelessWidget {
  const SendMessageFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * (60 / 375),
      width: screenSize.width * (336 / 375),
      decoration: BoxDecoration(
          color: const Color(0xFF16171B),
          borderRadius: BorderRadius.circular(18)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Fantastic! 👍 Let's do it!",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        Icon(
          Icons.emoji_emotions_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.emoji_objects_outlined,
          color: Colors.white,
        ),
        Container(
          height: screenSize.width * (40 / 375),
          width: screenSize.width * (40 / 375),
          decoration: BoxDecoration(
              color: const Color(0xFFF3FC8A),
              borderRadius: BorderRadius.circular(16)),
          child: Icon(
            Icons.telegram_rounded,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
