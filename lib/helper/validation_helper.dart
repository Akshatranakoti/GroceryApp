class ValidationHelper {
  static String validateUsename(String value) =>
    value.isEmpty ? "Enter a proper Username" : "";
  static String validateEmail(String value) =>
    value.isEmpty ? "Enter a proper Email" : "";
  static String validatePassword(String value) =>
    value.isEmpty ? "Enter a proper password" : "";
  static String validateConfirmPassword(String value1,String value2) =>
    value1!=value2 ? "Password does not match" : "";
  
}
