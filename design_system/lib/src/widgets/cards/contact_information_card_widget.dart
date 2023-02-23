import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../online_badges/online_badge_widget.dart';
import '../profile_skills/profile_skill_widget.dart';

class ContactInformationCard extends StatefulWidget {
  const ContactInformationCard({super.key});

  @override
  State<ContactInformationCard> createState() => _ContactInformationCardState();
}

class _ContactInformationCardState extends State<ContactInformationCard> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.width * (436 / 375),
      decoration: BoxDecoration(
          color: Color(0xFF5852D6), borderRadius: BorderRadius.circular(38)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18, right: 32, top: 56),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          ProfileIconWidget(photoHeight: 80, photoWidth: 78),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Russel Hue',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(width: screenSize.width * (8 / 375)),
              OnlineBadgeWidget(isOnline: true)
            ],
          ),
          SizedBox(height: screenSize.width * (12 / 375)),
          Text('+(1) 345-123-5467',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: screenSize.width * (12 / 375)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CallButtonWidget(
                  icon: Icon(
                Icons.phone_in_talk,
                color: Colors.white,
              )),
              CallButtonWidget(
                  icon: Icon(
                Icons.video_camera_back_outlined,
                color: Colors.white,
              )),
              CallButtonWidget(
                  icon: Icon(
                Icons.message_outlined,
                color: Colors.white,
              )),
              CallButtonWidget(
                  icon: Icon(
                Icons.folder_copy_outlined,
                color: Colors.white,
              )),
            ],
          ),
          Text('Hello Everybody 👋',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          Text('Our company are looking for:',
              style: TextStyle(color: Colors.white, fontSize: 16)),
          Wrap(
            spacing: screenSize.width * (8 / 375),
            runSpacing: screenSize.width * (8 / 375),
            children: [
              ProfileSkills(skill: 'UI/UX Designer', color: Colors.blue),
              ProfileSkills(skill: 'Project Manager', color: Colors.red),
              ProfileSkills(skill: 'QA', color: Colors.green),
              ProfileSkills(
                  skill: 'Java Script Developer', color: Colors.purple),
            ],
          ),
        ],
      ),
    );
  }
}

// class ProfileSkills extends StatelessWidget {
//   final String skill;
//   const ProfileSkills({super.key, required this.skill});

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.of(context).size;
//     return Container(
//       height: screenSize.width * (30 / 375),
//       decoration: BoxDecoration(
//           color: Color.fromARGB(255, 108, 214, 82),
//           borderRadius: BorderRadius.circular(8)),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(width: screenSize.width * (10 / 375)),
//           Text(
//             skill,
//             style: const TextStyle(color: Colors.white, fontSize: 16),
//           ),
//           SizedBox(width: screenSize.width * (10 / 375)),
//         ],
//       ),
//     );
//   }
// }
