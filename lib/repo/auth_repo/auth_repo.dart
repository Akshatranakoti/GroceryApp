import 'package:grocery_app/model/dto/signup_dto.dart';

abstract class AuthRepo {
  Future<void> signUp(SignupDto signupDto);
}
