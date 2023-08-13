import 'dart:io';

import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/repo/auth_repo/auth_repo_implementation.dart';

import '../model/dto/signup_dto.dart';

class SignUpProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  File? selectedProfileImage;
  String _emailError = "";
  String get emailError => _emailError;

  String _passwordError = "";
  String get passwordError => _passwordError;
  String _usernameError = "";
  String get usernameError => _usernameError;
  String _confirmPasswordError = "";
  String get confirmPasswordError => _confirmPasswordError;
  String _profileError = "";
  String get profileError => _profileError;

  getProfileImage(File file) {
    selectedProfileImage = file;
    notifyListeners();
  }

  bool _obscureText = true;
  bool get obscureText => _obscureText;
  updateObscureText() {
    _obscureText = !obscureText;
    notifyListeners();
  }

  validateForm() {
    _emailError = ValidationHelper.validateEmail(emailController.text);
    _passwordError = ValidationHelper.validatePassword(passwordController.text);
    _confirmPasswordError = ValidationHelper.validateConfirmPassword(
        passwordController.text, confirmPasswordController.text);
    _usernameError = ValidationHelper.validateUsename(usernameController.text);
    _profileError =
        selectedProfileImage == null ? "Please select an Image" : "";
    notifyListeners();
  }

  AuthRepoImpl authRepoImpl = AuthRepoImpl();
  signUp() async {
    await authRepoImpl.signUp(SignupDto(
        username: usernameController.text,
        signUpPayload: SignUpPayload(
            email: emailController.text,
            password: passwordController.text,
            returnSecureToken: true),
        imageUrl: ""));
  }
}
