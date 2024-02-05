import 'package:flutter/material.dart';

extension ImageRotateExtension on Image {
  Widget get rightRotation =>
      RotationTransition(turns: AlwaysStoppedAnimation(0.25), child: this);
  Widget get bottomRotation =>
      RotationTransition(turns: AlwaysStoppedAnimation(0.50), child: this);
  Widget get leftRotation =>
      RotationTransition(turns: AlwaysStoppedAnimation(0.75), child: this);
}
