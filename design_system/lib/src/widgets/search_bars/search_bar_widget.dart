import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(
        top: screenSize.width * (46 / 375),
        left: screenSize.width * (18 / 375),
        right: screenSize.width * (18 / 375),
        bottom: screenSize.width * (15 / 375),
      ),
      height: screenSize.width * (60 / 375),
      width: screenSize.width * (336 / 375),
      decoration: BoxDecoration(
        color: const Color(0xFF16171B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(
            'Search',
            style: TextStyle(
              color: theme.colorScheme.secondary,
              fontSize: 20,
              // height: 0.1,
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: screenSize.width * (20 / 375),
              right: screenSize.width * (12 / 375),
              top: screenSize.width * (20 / 375),
              bottom: screenSize.width * (20 / 375),
            ),
            child: const Icon(
              Icons.search_rounded,
              color: Color(0xFFA2A3A6),
            ),
          ),
        ),
      ),
    );
  }
}
