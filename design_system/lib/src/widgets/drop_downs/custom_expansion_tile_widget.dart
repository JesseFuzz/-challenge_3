import 'package:flutter/material.dart';

class CustomExpansionTileWidget extends StatefulWidget {
  const CustomExpansionTileWidget({super.key});

  @override
  State<CustomExpansionTileWidget> createState() =>
      _CustomExpansionTileWidgetState();
}

class _CustomExpansionTileWidgetState extends State<CustomExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isOpen = ValueNotifier(false);
    return InkWell(
      onTap: () {
        isOpen.value = !isOpen.value;
      },
      child: AnimatedBuilder(
        animation: isOpen,
        builder: (context, Widget) => Container(
          height: screenSize.width * ((isOpen.value ? 200 : 18) / 375),
          width: screenSize.width * (328 / 375),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Unread'),
                    AnimatedBuilder(
                      animation: isOpen,
                      builder: (context, widget) => Icon(
                        isOpen.value
                            ? Icons.keyboard_arrow_up_rounded
                            : Icons.keyboard_arrow_down_rounded,
                        size: screenSize.width * (18 / 375),
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                AnimatedBuilder(
                  animation: isOpen,
                  builder: (context, Widget) {
                    if (isOpen.value) {
                      return const ExpandedCollumnWidget();
                    }
                    return SizedBox.shrink();
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

class ExpandedCollumnWidget extends StatefulWidget {
  const ExpandedCollumnWidget({super.key});

  @override
  State<ExpandedCollumnWidget> createState() => _ExpandedCollumnWidgetState();
}

class _ExpandedCollumnWidgetState extends State<ExpandedCollumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text('data'),
        Text('data'),
      ],
    );
  }
}
