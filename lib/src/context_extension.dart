import 'dart:math';

import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get width => size.width;
  double get height => size.height;
}

extension ColorExtension on BuildContext {
  Color get bgRandomColor =>
      Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

extension PaddingExtension on BuildContext {
  EdgeInsets paddingAll(double value) => EdgeInsets.all(value);
}
