import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:movegui_core/enum/enum_core_platform.dart';

class CorePlatform {
  static EnumCorePlatform getCurrentPlatform() {
    if (kIsWeb) return EnumCorePlatform.WEB;

    if (!kIsWeb && Platform.isAndroid || !kIsWeb && Platform.isIOS) {
      return EnumCorePlatform.SDK;
    }

    return EnumCorePlatform.DESKTOP;
  }
}
