import 'package:grocery_app/all_imports.dart';

class AppApi {
  static String signUp = getEndPoint(AppStrings.signUp);
  static String getEndPoint(String value) {
    return "https://identitytoolkit.googleapis.com/v1/accounts:$value?key=[API_KEY]";
  }
}
