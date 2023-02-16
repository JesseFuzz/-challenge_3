import 'package:flutter/material.dart';

class CustomTheme extends ThemeExtension<CustomTheme> {
  final Color? cor;

  CustomTheme({this.cor});

  @override
  ThemeExtension<CustomTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomTheme> lerp(
    ThemeExtension<CustomTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
