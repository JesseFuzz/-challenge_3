import 'package:flutter/material.dart';

class ProfileWidgetAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileWidgetAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(98);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.width * (98 / 375),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF16171B),
        borderRadius: BorderRadius.only(
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
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Russel Hue',
            style: TextStyle(color: Colors.white),
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
                color: Colors.white,
              ),
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
        ],
      ),
    );
  }
}
