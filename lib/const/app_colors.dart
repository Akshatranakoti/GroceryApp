import '../all_imports.dart';

class AppColors {
  static Color get blue390191 => _colorFromHex("390191");
  static Color get green148914 => _colorFromHex("148914");
  static Color get redff0000 => _colorFromHex("ff0000");
  static Color get whiteFEFFFFE => _colorFromHex("FEFFFFE");
  static Color get grey696969 => _colorFromHex("696969");
  static Color get redFF7E8B => _colorFromHex("FF7E8B");
  static Color get redFE2E44 => _colorFromHex("FE2E44");

  static _colorFromHex(String value) {
    return Color(int.parse("FF$value", radix: 16));
  }
}
