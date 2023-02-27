import 'package:flutter/material.dart';

import '../../../design_system.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;
    return Container(
      margin: EdgeInsets.only(
        top: screenSize.width * (46 / 375),
        left: screenSize.width * (18 / 375),
        right: screenSize.width * (18 / 375),
        bottom: screenSize.width * (15 / 375),
      ),
      height: screenSize.width * (60 / 375),
      width: screenSize.width * (336 / 375),
      decoration: BoxDecoration(
        color: customColorTheme.primaryVariant,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        style: TextStyle(
          color: customColorTheme.onPrimary,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(
            'Search',
            style: TextStyle(
              color: customColorTheme.onPrimary,
              fontSize: customTextTheme.h6,
              // height: 0.1,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: screenSize.width * (20 / 375),
              right: screenSize.width * (12 / 375),
              top: screenSize.width * (20 / 375),
              bottom: screenSize.width * (20 / 375),
            ),
            child: const Icon(
              Icons.search_rounded,
              color: Color(0xFFA2A3A6),
            ),
          ),
        ),
      ),
    );
  }
}
