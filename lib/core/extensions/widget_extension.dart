import 'dart:js_util';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_web_site/core/extensions/size_config.dart';
import 'package:personal_web_site/main.dart';

extension WidgetExtension on DeviceType {
  Widget get get {
    switch (this) {
      case DeviceType.small:
        return const Small();
      case DeviceType.medium:
        return const Medium();
      case DeviceType.large:
        return const Large();
      default:
        throw PlatformException(code: 'Unhandled Device type');
    }
  }
}
