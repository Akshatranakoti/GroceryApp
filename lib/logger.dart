import 'package:grocery_app/all_imports.dart';
import 'package:flutter/foundation.dart';

class Logger {
  static void message(String tag, String message) {
    debugPrint(" 👉:$tag,$message");
  }
  static void sucess(String tag, String message) {
    debugPrint(" 🆗:$tag,$message");
  }

  static void error(String tag, String message) {
    debugPrint(" ❎:$tag,$message");
  }
}