import 'package:flutter/material.dart';

import '../../theme/custom_color_theme.dart';

class ProfileWidgetAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileWidgetAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(98);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    return Container(
      height: screenSize.width * (98 / 375),
      width: double.infinity,
      decoration: BoxDecoration(
        color: customColorTheme.primaryVariant,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: customColorTheme.onPrimary,
              ),
            ),
          ),
          Text(
            'Russel Hue',
            style: TextStyle(color: customColorTheme.onPrimary),
          ),
          Container(
            alignment: Alignment.center,
            height: screenSize.width * (40 / 375),
            width: screenSize.width * (116 / 375),
            decoration: BoxDecoration(
              color: Color(0xFF262626),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              'Agree to Offer',
              style: TextStyle(
                color: customColorTheme.onPrimary,
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
        ],
      ),
    );
  }
}
