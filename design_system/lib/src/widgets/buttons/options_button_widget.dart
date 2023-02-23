import 'package:flutter/material.dart';

import '../../theme/custom_color_theme.dart';
import '../../theme/custom_text_theme.dart';

class OptionButtonWidget extends StatefulWidget {
  const OptionButtonWidget({super.key});

  @override
  State<OptionButtonWidget> createState() => _OptionButtonWidgetState();
}

class _OptionButtonWidgetState extends State<OptionButtonWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const screenSizeWidth = 375;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>();

    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          left: screenSize.width * (20 / screenSizeWidth),
        ),
        height: screenSize.width * (44 / screenSizeWidth),
        // clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: isSelected
              ? customColorTheme.secondary
              : customColorTheme.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: screenSize.width * (20 / screenSizeWidth)),
            Icon(
              Icons.message_outlined,
              color: isSelected
                  ? Color.fromARGB(255, 17, 16, 16)
                  : Color(0xFFB0B2B5),
            ),
            SizedBox(width: screenSize.width * (10 / screenSizeWidth)),
            Text(
              'all',
              style: TextStyle(
                fontSize: 20,
                color: isSelected
                    ? Color.fromARGB(255, 17, 16, 16)
                    : Color(0xFFB0B2B5),
              ),
            ),
            SizedBox(width: screenSize.width * (4 / screenSizeWidth)),
            Container(
              height: screenSize.width * (20 / screenSizeWidth),
              width: screenSize.width * (20 / screenSizeWidth),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? const Color(0xFF6958FF) : Color(0xFF3C3E43),
              ),
              child: const Center(
                child: Text(
                  '35',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: screenSize.width * (20 / screenSizeWidth)),
          ],
        ),
      ),
    );
  }
}
