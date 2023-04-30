import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';

class Debug {
  static log(String message) {
    if (kDebugMode) dev.log(message);
  }
}
