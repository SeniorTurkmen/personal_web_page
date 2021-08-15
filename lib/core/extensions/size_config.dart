import 'package:flutter/material.dart';

extension SizeExtension on BuildContext {
  double get _height => MediaQuery.of(this).size.height;
  double get _width => MediaQuery.of(this).size.width;
  double get _textScale => MediaQuery.of(this).textScaleFactor;
  double get _pixelRatio => MediaQuery.of(this).devicePixelRatio;

  double get height => _height * .01;
  double get width => _width * .01;
  double get textScale => _textScale;
  double get pixelRatio => _pixelRatio;

  DeviceType get deviceType {
    if (_width >= 1025) {
      return DeviceType.large;
    } else if (_width < 1025 && _width > 560) {
      return DeviceType.medium;
    } else {
      return DeviceType.small;
    }
  }
}

enum DeviceType { small, medium, large }
