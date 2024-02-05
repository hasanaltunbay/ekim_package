import 'package:flutter/material.dart';

extension ButtonExtension on ElevatedButton {
  ElevatedButton elevatedButtonStyle({
    Color backgroundColor = Colors.blue,
    double borderRadius = 8.0,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: this.onPressed,
      child: this.child,
    );
  }
}
