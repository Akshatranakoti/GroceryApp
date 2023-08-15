import 'package:grocery_app/all_imports.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _emailError = "";
  String get emailError => _emailError;

  String _passwordError = "";
  String get passwordError => _passwordError;
  bool _obscureText = true;
  bool get obscureText => _obscureText;
  updateObscureText() {
    _obscureText = !obscureText;
    notifyListeners();
  }


  validateForm() {
    _emailError = ValidationHelper.validateEmail(emailController.text);
    _passwordError = ValidationHelper.validatePassword(passwordController.text);
    notifyListeners();
  }
}
