import 'package:flutter/material.dart';

extension ContainerExtension on Widget {
  Widget containerStyle(
      {Color color = Colors.grey,
      Color borderColor = Colors.black,
      double borderRadius = 8.0,
      double height = 150,
      double width = 150,
      double borderWidth = 1.0}) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
      child: this,
    );
  }
}
