import 'package:flutter/material.dart';

import '../../theme/custom_color_theme.dart';

class BottomBarWidget extends StatefulWidget {
  final void Function(int value) onTap;
  const BottomBarWidget({super.key, required this.onTap});

  @override
  State<BottomBarWidget> createState() => _BottomBarWidget();
}

class _BottomBarWidget extends State<BottomBarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * (106 / 375),
      width: screenSize.width,
      decoration: BoxDecoration(
        color: customColorTheme.primary.withOpacity(0.5),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(36)),
        boxShadow: [
          BoxShadow(
            color: customColorTheme.onSecondary.withOpacity(0.9),
            // spreadRadius: 5,
            // blurRadius: 7,
            // offset: const Offset(0, 3),  // changes position of shadow
          ),
        ],
      ),
      child: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        elevation: 0,
        // backgroundColor: Color(0xFF20232B).withOpacity(0.9),
        backgroundColor: Colors.transparent,
        selectedItemColor: customColorTheme.onPrimary,
        currentIndex: selectedIndex,
        onTap: (value) => {
          widget.onTap(value),
          setState(() {
            selectedIndex = value;
          })
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
