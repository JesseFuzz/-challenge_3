import 'package:flutter/material.dart';

class MessageModel {
  final String message;
  final bool isUser;

  MessageModel({required this.message, required this.isUser});
}

class MessageBalloonWidget extends StatelessWidget {
  final messageList = <MessageModel>[
    MessageModel(message: 'How does it sound for you?', isUser: false),
    MessageModel(message: 'Yes, that sounds good', isUser: true),
    MessageModel(message: 'Good, send you their visual', isUser: false),
    MessageModel(message: 'How does it sound for you?', isUser: false),
    MessageModel(message: 'Yes, that sounds good', isUser: true),
    MessageModel(message: 'Good, send you their visual', isUser: false),
    MessageModel(message: 'How does it sound for you?', isUser: false),
    MessageModel(message: 'Yes, that sounds good', isUser: true),
    MessageModel(message: 'Good, send you their visual', isUser: false),
    MessageModel(message: 'How does it sound for you?', isUser: false),
    MessageModel(message: 'Yes, that sounds good', isUser: true),
    MessageModel(message: 'Good, send you their visual', isUser: false),
    MessageModel(message: 'How does it sound for you?', isUser: false),
    MessageModel(message: 'Yes, that sounds good', isUser: true),
    MessageModel(message: 'Good, send you their visual', isUser: false),
  ];

  MessageBalloonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: messageList.length,
      itemBuilder: ((context, index) => Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!messageList[index].isUser)
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 22,
                      ),
                      SizedBox(
                        width: screenSize.width * (6 / 375),
                      ),
                      Text(
                        'Russel Hue',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: screenSize.width * (6 / 375),
                      ),
                      Text(
                        '13:50',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                Row(
                  mainAxisAlignment: messageList[index].isUser
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: screenSize.width * (62 / 375),
                      constraints: const BoxConstraints(
                        maxWidth: 250,
                      ),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: messageList[index].isUser
                              ? const Color(0xFFB785F5)
                              : const Color(0xFF16171B),
                          borderRadius: messageList[index].isUser
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )
                              : const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                )),
                      child: Text(
                        messageList[index].message,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
