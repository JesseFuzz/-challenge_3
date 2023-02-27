import 'package:flutter/material.dart';
import '../../../design_system.dart';

class SendMessageFieldWidget extends StatelessWidget {
  const SendMessageFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;
    return Container(
      height: screenSize.width * (60 / 375),
      width: screenSize.width * (336 / 375),
      decoration: BoxDecoration(
        color: customColorTheme.primaryVariant,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Fantastic! 👍 Let's do it!",
              style: TextStyle(
                color: customColorTheme.onPrimary,
                fontSize: customTextTheme.subtitle2,
              ),
            ),
          ),
          Icon(
            Icons.emoji_emotions_outlined,
            color: customColorTheme.onPrimary,
          ),
          Icon(
            Icons.emoji_objects_outlined,
            color: customColorTheme.onPrimary,
          ),
          Container(
            height: screenSize.width * (40 / 375),
            width: screenSize.width * (40 / 375),
            decoration: BoxDecoration(
              color: const Color(0xFFF3FC8A),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.telegram_rounded,
              color: customColorTheme.onSecondary,
            ),
          )
        ],
      ),
    );
  }
}
