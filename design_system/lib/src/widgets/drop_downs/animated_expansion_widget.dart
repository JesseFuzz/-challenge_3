import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimatedExpansionContainer extends StatefulWidget {
  final Widget title;
  bool isExpanded;
  final Widget trailing;
  final Widget children;

  AnimatedExpansionContainer({
    super.key,
    required this.isExpanded,
    required this.title,
    required this.trailing,
    required this.children,
  });

  @override
  AnimatedExpansionContainerState createState() =>
      AnimatedExpansionContainerState();
}

class AnimatedExpansionContainerState
    extends State<AnimatedExpansionContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              widget.isExpanded = !widget.isExpanded;
            });
          },
          child: ListTile(
            title: widget.title,
            trailing: AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              transformAlignment: Alignment.center,
              transform: Matrix4.rotationZ(widget.isExpanded ? 3.14 / 2 : 55),
              child: widget.trailing,
            ),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          height: widget.isExpanded ? null : 0,
          child: widget.children,
        ),
      ],
    );
  }
}
