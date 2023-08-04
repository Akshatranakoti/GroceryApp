import '../all_imports.dart';

class AppColors {
  static Color blue390191 = _colorFromHex("390191");
  static Color green148914= _colorFromHex("148914");
  static Color redff0000= _colorFromHex("ff0000");

  static _colorFromHex(String value) {
    return Color(int.parse("FF$value", radix: 16));
  }
}
