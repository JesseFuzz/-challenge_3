import 'package:flutter/material.dart';
import '../../theme/custom_color_theme.dart';

class CustomBottomBarWidget extends StatefulWidget {
  const CustomBottomBarWidget({super.key});

  @override
  State<CustomBottomBarWidget> createState() => _CustomBottomBarWidgetState();
}

class _CustomBottomBarWidgetState extends State<CustomBottomBarWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * (106 / 375),
      width: screenSize.width,
      decoration: BoxDecoration(
        color: customColorTheme.primary.withOpacity(0.7),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(36)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(
              Icons.document_scanner_outlined,
            ),
            onPressed: () {},
            color: customColorTheme.onPrimary,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.contact_phone),
            color: customColorTheme.onPrimary,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.pie_chart),
            color: customColorTheme.onPrimary,
          ),
          Container(
            height: screenSize.width * (50 / 375),
            width: screenSize.width * (50 / 375),
            decoration: BoxDecoration(
              color:
                  isSelected ? customColorTheme.secondary : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              icon: Icon(
                Icons.message_outlined,
                color: isSelected
                    ? customColorTheme.onSecondary
                    : customColorTheme.onPrimary,
              ),
              color: customColorTheme.onPrimary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: customColorTheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
