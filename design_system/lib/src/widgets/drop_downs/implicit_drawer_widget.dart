import 'package:design_system/src/theme/custom_color_theme.dart';
import 'package:flutter/material.dart';

class ImplicitDrawerWidget extends StatefulWidget {
  final String title;
  final double height;
  final bool isOpen;
  final void Function() onTap;
  final Widget child;
  const ImplicitDrawerWidget({
    Key? key,
    required this.title,
    required this.height,
    required this.isOpen,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  State<ImplicitDrawerWidget> createState() => _ImplicitDrawerWidgetState();
}

class _ImplicitDrawerWidgetState extends State<ImplicitDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final colorsTheme = Theme.of(context).extension<CustomColorTheme>()!;

    final screenSize = MediaQuery.of(context).size;
    return ClipRect(
      child: Column(
        children: [
          InkWell(
            onTap: widget.onTap,
            child: SizedBox(
              height: screenSize.width * (60 / 375),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                  ),
                  Icon(
                    widget.isOpen
                        ? Icons.keyboard_arrow_up_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    size: screenSize.width * (60 / 375),
                    color: colorsTheme.primary,
                  )
                ],
              ),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            height: widget.height,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: screenSize.width * (20 / 375),
                  ),
                  child: SizedBox(
                    height: screenSize.width * (92 / 375),
                    child: widget.child,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
