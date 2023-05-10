import 'package:flutter/material.dart';

class CustomColorTheme extends ThemeExtension<CustomColorTheme> {
  final Color primary;
  final Color primaryVariant;
  final Color secondary;
  final Color onPrimary;
  final Color surface;
  final Color onSurface;
  final Color onSecondary;

  final Color secondaryVariant;
  final Color onSecondaryVariant;
  final Color tertiary;
  final Color tertiaryVariant;
  final Color onTertiary;

  CustomColorTheme({
    required this.onSurface,
    required this.primary,
    required this.primaryVariant,
    required this.secondary,
    required this.onPrimary,
    required this.surface,
    required this.onSecondary,
    required this.secondaryVariant,
    required this.onSecondaryVariant,
    required this.tertiary,
    required this.tertiaryVariant,
    required this.onTertiary,
  });

  @override
  CustomColorTheme copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomColorTheme> lerp(
    ThemeExtension<CustomColorTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}

@override
CustomColorTheme lerp(CustomColorTheme? other, double t) {
  throw UnimplementedError();
}
