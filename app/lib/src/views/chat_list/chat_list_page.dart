import 'package:app/src/utils/mocks/options_model_mock.dart';
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
    final customTextTheme = Theme.of(context).extension<CustomTextTheme>()!;
    final optionsModel = OptionsModelMock.getOptions();
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
                itemCount: optionsModel.length,
                itemBuilder: (context, index) => OptionButtonWidget(
                  optionsModel: optionsModel[index],
                ),
              ),
            ),
            Column(
              children: [
                AnimatedExpansionContainer(
                  isExpanded: true,
                  title: Text(
                    'Unread',
                    style: TextStyle(
                      color: customColorTheme.onPrimary,
                      fontSize: customTextTheme.subtitle2,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: customColorTheme.onPrimary,
                  ),
                  children: Column(
                    children: const [
                      MessageListItemWidget(),
                      MessageListItemWidget(),
                      MessageListItemWidget(),
                    ],
                  ),
                ),
                AnimatedExpansionContainer(
                  isExpanded: false,
                  title: Text(
                    'From team',
                    style: TextStyle(
                      color: customColorTheme.onPrimary,
                      fontSize: customTextTheme.subtitle2,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: customColorTheme.onPrimary,
                  ),
                  children: Column(
                    children: const [
                      MessageListItemWidget(),
                      MessageListItemWidget(),
                      MessageListItemWidget(),
                    ],
                  ),
                ),
                AnimatedExpansionContainer(
                  isExpanded: true,
                  title: Text(
                    'From companies',
                    style: TextStyle(
                      color: customColorTheme.onPrimary,
                      fontSize: customTextTheme.subtitle2,
                    ),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: customColorTheme.onPrimary,
                  ),
                  children: Column(
                    children: const [
                      MessageListItemWidget(),
                      MessageListItemWidget(),
                      MessageListItemWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomBarWidget(),
    );
  }
}
