import 'package:flutter/material.dart';

class OptionButtonWidget extends StatefulWidget {
  const OptionButtonWidget({super.key});

  @override
  State<OptionButtonWidget> createState() => _OptionButtonWidgetState();
}

class _OptionButtonWidgetState extends State<OptionButtonWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          left: screenSize.width * (20 / 375),
        ),
        height: screenSize.width * (44 / 375),
        // clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF3FC8A) : const Color(0xFF20232B),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: screenSize.width * (20 / 375)),
            Icon(
              Icons.message_outlined,
              color: isSelected
                  ? Color.fromARGB(255, 17, 16, 16)
                  : Color(0xFFB0B2B5),
            ),
            SizedBox(width: screenSize.width * (10 / 375)),
            Text(
              'all',
              style: TextStyle(
                fontSize: 20,
                color: isSelected
                    ? Color.fromARGB(255, 17, 16, 16)
                    : Color(0xFFB0B2B5),
              ),
            ),
            SizedBox(width: screenSize.width * (4 / 375)),
            Container(
              height: screenSize.width * (20 / 375),
              width: screenSize.width * (20 / 375),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? const Color(0xFF6958FF) : Color(0xFF3C3E43),
              ),
              child: const Center(
                child: Text(
                  '35',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(width: screenSize.width * (20 / 375)),
          ],
        ),
      ),
    );
  }
}
