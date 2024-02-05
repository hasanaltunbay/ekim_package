import 'package:flutter/material.dart';

extension TextExtension on String {
  String get helloText => "hello world";
}

extension CustomTextStyle on TextStyle {
  TextStyle get bold {
    return copyWith(
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle get italic {
    return copyWith(
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle withSize(double fontSize) {
    return copyWith(
      fontSize: fontSize,
    );
  }

  TextStyle withColor(Color color) {
    return copyWith(
      color: color,
    );
  }
}

extension StringExtension on String {
  String reverse() {
    return this.split('').reversed.join('');
  }

  String toUpperCaseFirstLetter() {
    if (this.isEmpty) return this;
    return this[0].toUpperCase() + this.substring(1);
  }
}
