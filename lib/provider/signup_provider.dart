import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:grocery_app/all_imports.dart';
import 'package:grocery_app/model/dto/update_user_info_dto.dart';
import 'package:grocery_app/model/error/firebase_auth_error.dart';
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
    if (_emailError.isEmpty &&
        _usernameError.isEmpty &&
        _passwordError.isEmpty &&
        _confirmPasswordError.isEmpty &&
        profileError.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  AuthRepoImpl authRepoImpl = AuthRepoImpl();
  updateUserInfo(String idToken) async {
    await authRepoImpl.updateUserInfo(UpdateUserInfoDto(
        displayName: usernameController.text,
        idToken: idToken,
        photoUrl: "",
        returnSecureToken: true));
  }
//signup method
  signUp() async {
    if (true) {
      try {
        final response = await authRepoImpl.signUp(SignupDto(
            username: usernameController.text,
            signUpPayload: SignUpPayload(
                email: emailController.text,
                password: passwordController.text,
                returnSecureToken: true),
            imageUrl: ""));
        updateUserInfo(response.idToken!);
      } on DioException catch (e) {
        FirebaseAuthError firebaseAuthError = FirebaseAuthError.fromJson(
            e.response!.data as Map<String, dynamic>);
        log(firebaseAuthError.error!.message!.toString());
        SnackBarHelper.erroSnackBar(firebaseAuthError.error!.message!);
      }
    }
  }
}
