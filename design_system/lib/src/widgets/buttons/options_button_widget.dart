import 'package:app/main.dart';
import 'package:flutter/material.dart';
import '../../theme/custom_color_theme.dart';
import '../../theme/custom_text_theme.dart';

class OptionButtonWidget extends StatefulWidget {
  final OptionsModel optionsModel;
  const OptionButtonWidget({super.key, required this.optionsModel});

  @override
  State<OptionButtonWidget> createState() => _OptionButtonWidgetState();
}

class _OptionButtonWidgetState extends State<OptionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const screenSizeWidth = 375;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return GestureDetector(
      onTap: () {
        setState(() {
          widget.optionsModel.isSelected = !widget.optionsModel.isSelected;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          left: screenSize.width * (20 / screenSizeWidth),
        ),
        height: screenSize.width * (44 / screenSizeWidth),
        // clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: widget.optionsModel.isSelected
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
              color: widget.optionsModel.isSelected
                  ? customColorTheme.primary
                  : customColorTheme.tertiary,
            ),
            SizedBox(width: screenSize.width * (10 / screenSizeWidth)),
            Text(
              widget.optionsModel.name,
              style: TextStyle(
                fontSize: customTextTheme.h6,
                color: widget.optionsModel.isSelected
                    ? customColorTheme.primary
                    : customColorTheme.tertiary,
              ),
            ),
            SizedBox(width: screenSize.width * (4 / screenSizeWidth)),
            Container(
              height: screenSize.width * (20 / screenSizeWidth),
              width: screenSize.width * (20 / screenSizeWidth),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.optionsModel.isSelected
                    ? customColorTheme.onSecondaryVariant
                    : customColorTheme.secondaryVariant,
              ),
              child: Center(
                child: Text(
                  widget.optionsModel.unreadMessages,
                  style: TextStyle(
                    fontSize: customTextTheme.caption,
                    color: customColorTheme.onPrimary,
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
