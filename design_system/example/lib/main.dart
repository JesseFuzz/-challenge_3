import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotreloadWidgetbook());
}

class HotreloadWidgetbook extends StatelessWidget {
  const HotreloadWidgetbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      devices: [
        Device(
          name: 'Custom Device',
          resolution: Resolution.dimensions(
            nativeWidth: 500,
            nativeHeight: 500,
            scaleFactor: 2,
          ),
          type: DeviceType.tablet,
        ),
        Apple.iPhone11,
        Samsung.s21ultra,
        Apple.iPhone8
      ],
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'call',
                  builder: (context) => const CallButtonWidget(
                    icon: Icon(Icons.phone),
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'Options',
                  builder: (context) => const OptionButtonWidget(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'bottom bar',
                  builder: (context) => BottomBarWidget(onTap: (value) {}),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'custom bottom bar',
                  builder: (context) => const CustomBottomBarWidget(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'add task',
                  builder: (context) => const AddTaskButtonWidget(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'contact information',
                  builder: (context) => const ContactInformationCard(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'profile icon',
                  builder: (context) => const ProfileIconWidget(
                    photoHeight: 200,
                    photoWidth: 200,
                  ),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'message list item',
                  builder: (context) => const MessageListItemWidget(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'search bar',
                  builder: (context) => const SearchBarWidget(),
                ),
              ],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'search bar',
                  builder: (context) => Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: MyThemeData.myTheme,
        ),
      ],
      appInfo: AppInfo(name: 'Example'),
    );
  }
}
