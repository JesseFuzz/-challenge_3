import 'package:flutter/material.dart';
import '../../theme/custom_color_theme.dart';

class CallButtonWidget extends StatelessWidget {
  final Widget icon;
  const CallButtonWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const screenSizeWidth = 375;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    return InkWell(
      child: Container(
        height: screenSize.width * (60 / screenSizeWidth),
        width: screenSize.width * (60 / screenSizeWidth),
        decoration: BoxDecoration(
          color: customColorTheme.onSurface,
          borderRadius: BorderRadius.circular(20),
        ),
        child: icon as Icon,
      ),
    );
  }
}
