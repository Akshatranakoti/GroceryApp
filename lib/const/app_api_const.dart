import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/const/keys.dart';
import 'package:grocery_app/model/dto/update_user_info_dto.dart';

class AppApi {
  static String get signUp => getEndPoint("signUp");
  static String get updateUserInfo => getEndPoint("update");
  static String getEndPoint(String value) {
    return "https://identitytoolkit.googleapis.com/v1/accounts:$value?key=$firebaseApiKey";
  }
}
