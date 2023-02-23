import 'package:flutter/material.dart';

class ProfileSkills extends StatelessWidget {
  final String skill;
  final Color color;
  const ProfileSkills({super.key, required this.skill, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * (30 / 375),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: screenSize.width * (10 / 375)),
          Text(
            skill,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(width: screenSize.width * (10 / 375)),
        ],
      ),
    );
  }
}
