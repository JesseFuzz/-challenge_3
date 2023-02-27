import 'package:flutter/material.dart';
import 'custom_color_theme.dart';
import 'custom_text_theme.dart';

class MyThemeData {
  static ThemeData myTheme = ThemeData.light().copyWith(
    extensions: <ThemeExtension<dynamic>>[
      CustomTextTheme(
        h5: 24,
        h6: 20,
        caption: 12,
        subtitle1: 16,
        subtitle2: 14,
      ),
      CustomColorTheme(
        //cor principal
        primary: const Color(0xFF20232B),
        //variante clara ou escura da cor principal
        primaryVariant: const Color(0xFF16171B),
        //cor que acentua, normalmente pra botões
        secondary: const Color(0xFFF3FC8A),
        //textos ou ícones que ficam em cima de uma cor escura (para destaque)
        onPrimary: const Color(0xFFFFFFFF),
        //textos ou icons que ficam em cima de uma cor clara (para destaque)
        onSecondary: const Color(0xFF000000),
        //cor para cartões, planilhas e menus
        surface: const Color(0xFF5852D6),
        //textos ou ícones que ficam em cima de uma cor escura (para destaque)
        onSurface: const Color(0xFF6963DB),
      )
    ],
  );
}
