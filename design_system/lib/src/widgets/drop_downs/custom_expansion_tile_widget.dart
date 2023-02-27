import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../theme/custom_color_theme.dart';

class CustomExpansionTileWidget extends StatefulWidget {
  final int quantity;
  const CustomExpansionTileWidget({super.key, required this.quantity});

  @override
  State<CustomExpansionTileWidget> createState() =>
      _CustomExpansionTileWidgetState();
}

class _CustomExpansionTileWidgetState extends State<CustomExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    final quantity = widget.quantity;
    final screenSize = MediaQuery.of(context).size;
    final isOpen = ValueNotifier(false);
    final colorsTheme = Theme.of(context).extension<CustomColorTheme>()!;
    return InkWell(
      onTap: () {
        isOpen.value = !isOpen.value;
      },
      child: AnimatedBuilder(
        animation: isOpen,
        builder: (context, widget) => AnimatedContainer(
          duration: const Duration(milliseconds: 120),

          height: screenSize.width *
              ((isOpen.value
                      ? (screenSize.width * ((102 * quantity) / 375))
                      : 18) /
                  375),
          // width: screenSize.width * (350 / 375),
          color: colorsTheme.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Unread',
                      style: TextStyle(color: colorsTheme.onPrimary),
                    ),
                    AnimatedBuilder(
                      animation: isOpen,
                      builder: (context, widget) => Icon(
                        isOpen.value
                            ? Icons.keyboard_arrow_up_rounded
                            : Icons.keyboard_arrow_down_rounded,
                        color: colorsTheme.onPrimary,
                        size: screenSize.width * (18 / 375),
                      ),
                    ),
                  ],
                ),
                AnimatedBuilder(
                  animation: isOpen,
                  builder: (context, widget) {
                    if (isOpen.value) {
                      return Column(
                        children: const [
                          MessageListItemWidget(),
                          MessageListItemWidget(),
                        ],
                      );
                    }
                    return const SizedBox.shrink();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
