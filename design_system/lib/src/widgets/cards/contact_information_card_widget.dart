import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ContactInformationCardWidget extends StatefulWidget {
  const ContactInformationCardWidget({super.key});

  @override
  State<ContactInformationCardWidget> createState() =>
      _ContactInformationCardWidgetState();
}

class _ContactInformationCardWidgetState
    extends State<ContactInformationCardWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;

    return Container(
      height: screenSize.width * (436 / 375),
      decoration: BoxDecoration(
        color: customColorTheme.surface,
        borderRadius: BorderRadius.circular(38),
      ),
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
                    color: customColorTheme.onPrimary,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: customColorTheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          const ProfileIconWidget(photoHeight: 80, photoWidth: 78),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Russel Hue',
                style: TextStyle(
                  color: customColorTheme.onPrimary,
                  fontSize: customTextTheme.h5,
                ),
              ),
              SizedBox(width: screenSize.width * (8 / 375)),
              const OnlineBadgeWidget(isOnline: true)
            ],
          ),
          SizedBox(height: screenSize.width * (12 / 375)),
          Text(
            '+(1) 345-123-5467',
            style: TextStyle(
              color: customColorTheme.onPrimary,
              fontSize: customTextTheme.subtitle1,
            ),
          ),
          SizedBox(height: screenSize.width * (12 / 375)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CallButtonWidget(
                icon: Icon(
                  Icons.phone_in_talk,
                  color: customColorTheme.onPrimary,
                ),
              ),
              CallButtonWidget(
                icon: Icon(
                  Icons.video_camera_back_outlined,
                  color: customColorTheme.onPrimary,
                ),
              ),
              CallButtonWidget(
                icon: Icon(
                  Icons.message_outlined,
                  color: customColorTheme.onPrimary,
                ),
              ),
              CallButtonWidget(
                icon: Icon(
                  Icons.folder_copy_outlined,
                  color: customColorTheme.onPrimary,
                ),
              ),
            ],
          ),
          Text(
            'Hello Everybody 👋',
            style: TextStyle(
              color: customColorTheme.onPrimary,
              fontSize: customTextTheme.subtitle1,
            ),
          ),
          Text(
            'Our company are looking for:',
            style: TextStyle(
              color: customColorTheme.onPrimary,
              fontSize: customTextTheme.subtitle1,
            ),
          ),
          Wrap(
            spacing: screenSize.width * (8 / 375),
            runSpacing: screenSize.width * (8 / 375),
            children: [
              ProfileSkills(
                skill: 'UI/UX Designer',
                color: customColorTheme.onSurface,
              ),
              ProfileSkills(
                skill: 'Project Manager',
                color: customColorTheme.surface,
              ),
              ProfileSkills(skill: 'QA', color: customColorTheme.onSurface),
              ProfileSkills(
                skill: 'Java Script Developer',
                color: customColorTheme.surface,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// }
