// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:grocery_app/all_imports.dart';

class SignupDto {
  SignUpPayload signUpPayload;
  String imageUrl;
  String username;

  SignupDto({
    required this.username,
    required this.signUpPayload,
    required this.imageUrl,
  });
}

class SignUpPayload {
  String email;
  String password;
  bool returnSecureToken;
  SignUpPayload(
      {required this.email,
      required this.password,
      required this.returnSecureToken});
  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "returnSecureToken": returnSecureToken
      };
}
