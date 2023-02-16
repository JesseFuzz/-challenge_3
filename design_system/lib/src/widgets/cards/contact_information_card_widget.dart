import 'package:design_system/src/widgets/buttons/call_button_widget.dart';
import 'package:design_system/src/widgets/icons/profile_icon_widget.dart';
import 'package:flutter/material.dart';

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
      height: screenSize.width * (432 / 375),
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
          Text('Russel Hue'),
          Text('+(1) 345-123-5467'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CallButtonWidget(icon: Icon(Icons.phone_in_talk)),
              CallButtonWidget(icon: Icon(Icons.video_camera_back_outlined)),
              CallButtonWidget(icon: Icon(Icons.message_outlined)),
              CallButtonWidget(icon: Icon(Icons.folder_copy_outlined)),
            ],
          ),
          Text('Russel Hue'),
          Text('Russel Hue'),
        ],
      ),
    );
  }
}
