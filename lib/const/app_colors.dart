import '../all_imports.dart';

class AppColors {
  static Color get blue390191 => _colorFromHex("390191");
  static Color get green148914=> _colorFromHex("148914");
  static Color get redff0000=> _colorFromHex("ff0000");

  static _colorFromHex(String value) {
    return Color(int.parse("FF$value", radix: 16));
  }
}
