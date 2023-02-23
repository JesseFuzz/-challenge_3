import 'package:flutter/material.dart';

class OnlineBadgeWidget extends StatefulWidget {
  final bool isOnline;
  const OnlineBadgeWidget({super.key, required this.isOnline});

  @override
  State<OnlineBadgeWidget> createState() => _OnlineBadgeWidgetState();
}

class _OnlineBadgeWidgetState extends State<OnlineBadgeWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * (10 / 375),
      height: screenSize.width * (10 / 375),
      decoration: BoxDecoration(
        color: widget.isOnline ? const Color(0xFF00FF00) : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}
