import 'package:flutter/material.dart';

import '../online_badges/online_badge_widget.dart';

class MessageListItemWidget extends StatefulWidget {
  final dynamic route;
  const MessageListItemWidget({super.key, this.route});

  @override
  State<MessageListItemWidget> createState() => _MessageListItemWidgetState();
}

class _MessageListItemWidgetState extends State<MessageListItemWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          top: screenSize.width * (12 / 375),
        ),
        height: screenSize.width * (80 / 375),
        width: screenSize.width * (350 / 375),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  widget.route.profilePage,
                );
              },
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: screenSize.width * (20 / 375),
                      bottom: screenSize.width * (20 / 375),
                    ),
                    height: screenSize.width * (40 / 375),
                    width: screenSize.width * (40 / 375),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Color(0xFF20232B),
                      size: 30,
                    ),
                  ),
                  Positioned(
                    top: screenSize.width * (25 / 375),
                    left: screenSize.width * (25 / 375),
                    child: Container(
                      padding: EdgeInsets.all(
                        screenSize.width * (4 / 375),
                      ),
                      height: screenSize.width * (20 / 375),
                      width: screenSize.width * (20 / 375),
                      decoration: const BoxDecoration(
                        color: Color(0xFF6958FF),
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width * (12 / 375),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
              child: SizedBox(
                width: screenSize.width * (244 / 375),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Jon Tornton',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenSize.width * (16 / 375),
                          ),
                        ),
                        SizedBox(
                          width: screenSize.width * (8 / 375),
                        ),
                        OnlineBadgeWidget(isOnline: true)
                      ],
                    ),
                    SizedBox(
                      height: screenSize.width * (8 / 375),
                    ),
                    Text(
                      '+(1) 345-123-5467',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * (16 / 375),
                      ),
                    ),
                    SizedBox(
                      height: screenSize.width * (14 / 375),
                    ),
                    Text(
                      'Maybe on friday? can you show...',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width * (16 / 375),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Spacer(),
            // SizedBox(
            //   width: screenSize.width * (1 / 375),
            // ),
            const Text(
              '12:30',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
