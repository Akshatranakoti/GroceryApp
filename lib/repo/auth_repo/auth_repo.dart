import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/model/dto/update_user_info_dto.dart';
import 'package:grocery_app/model/entity/signup_entity.dart';

abstract class AuthRepo {
  Future<SignupEntity> signUp(SignupDto signupDto);
  Future<void> updateUserInfo(UpdateUserInfoDto updateUserInfoDto);

}
