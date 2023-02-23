import 'package:flutter/material.dart';

class CustomBottomBarWidget extends StatefulWidget {
  const CustomBottomBarWidget({super.key});

  @override
  State<CustomBottomBarWidget> createState() => _CustomBottomBarWidgetState();
}

class _CustomBottomBarWidgetState extends State<CustomBottomBarWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        height: screenSize.width * (106 / 375),
        width: screenSize.width,
        decoration: BoxDecoration(
          color: const Color(0xFF20232B).withOpacity(0.7),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(36)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.document_scanner_outlined,
              ),
              onPressed: () {},
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.contact_phone),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.pie_chart),
              color: Colors.white,
            ),
            Container(
              height: screenSize.width * (50 / 375),
              width: screenSize.width * (50 / 375),
              decoration: BoxDecoration(
                color: isSelected ? Color(0xFFF3FC8A) : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                icon: Icon(Icons.message_outlined,
                    color: isSelected ? Colors.black : Colors.white),
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
          ],
        )
        // CustomBotomBar(
        //   onTap: (value) => print(value),
        // ),
        );
  }
}
