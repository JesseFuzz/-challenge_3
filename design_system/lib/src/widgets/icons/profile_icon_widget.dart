import 'package:flutter/material.dart';

class ProfileIconWidget extends StatelessWidget {
  final double photoHeight;
  final double photoWidth;
  const ProfileIconWidget({
    super.key,
    required this.photoHeight,
    required this.photoWidth,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          // margin: EdgeInsets.only(
          //   right: screenSize.width * (20 / 375),
          //   bottom: screenSize.width * (20 / 375),
          // ),
          height: screenSize.width * (photoHeight / 375),
          width: screenSize.width * (photoWidth / 375),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person,
            color: Color(0xFF20232B),
            // size: 30,
          ),
        ),
        // Positioned(
        //   top: screenSize.width * (25 / 375),
        //   left: screenSize.width * (25 / 375),
        //   child: Container(
        //     padding: EdgeInsets.all(
        //       screenSize.width * (4 / 375),
        //     ),
        //     height: screenSize.width * (20 / 375),
        //     width: screenSize.width * (20 / 375),
        //     decoration: const BoxDecoration(
        //       color: Color(0xFF6958FF),
        //       shape: BoxShape.circle,
        //     ),
        //     child: Text(
        //       '2',
        //       textAlign: TextAlign.center,
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: screenSize.width * (12 / 375),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
