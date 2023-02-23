import 'package:flutter/material.dart';

class CustomTextTheme extends ThemeExtension<CustomTextTheme> {
  final double? h6;
  final double? caption;
  final double? subtitle1;

  CustomTextTheme({this.h6, this.caption, this.subtitle1});

  @override
  ThemeExtension<CustomTextTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<CustomTextTheme> lerp(
    ThemeExtension<CustomTextTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }
}
