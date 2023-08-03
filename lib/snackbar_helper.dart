import 'package:grocery_app/all_imports.dart';

class SnackBarHelper {
  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  static sucessSnackBar(String message) {
    scaffoldMessengerKey.currentState!
        .showSnackBar(SnackBar(backgroundColor: AppColors.green148914, content: Text(message)));
  }
  static erroSnackBar(String message) {
    scaffoldMessengerKey.currentState!
        .showSnackBar(SnackBar(backgroundColor: AppColors.redff0000, content: Text(message)));
  }
}
