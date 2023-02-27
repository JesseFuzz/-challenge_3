import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final customColorTheme = Theme.of(context).extension<CustomColorTheme>()!;
    return Scaffold(
      backgroundColor: customColorTheme.primary,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBarWidget(),
            SizedBox(
              height: screenSize.width * (46 / 375),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => const OptionButtonWidget(),
              ),
            ),
            const CustomExpansionTileWidget(),
            const CustomExpansionTileWidget(),
            const CustomExpansionTileWidget(),
            const CustomExpansionTileWidget(),
            const CustomExpansionTileWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomBarWidget(),
    );
  }
}
