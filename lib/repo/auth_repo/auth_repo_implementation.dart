import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:grocery_app/const/app_api_const.dart';
import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/model/dto/update_user_info_dto.dart';
import 'package:grocery_app/model/entity/signup_entity.dart';
import 'package:grocery_app/repo/auth_repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  Dio dio = Dio(BaseOptions(contentType: "application/json"));
  @override
  Future<SignupEntity> signUp(SignupDto signupDto) async {

    final response = await dio.post(
      AppApi.signUp,
      data: signupDto.signUpPayload.toJson(),
    );
    return SignupEntity.fromJson(response.data as Map<String,dynamic>);
    
  }

  @override
  Future<void> updateUserInfo(UpdateUserInfoDto updateUserInfoDto) async {
    final response =
        await dio.post(AppApi.updateUserInfo, data: updateUserInfoDto.toJson());
    log(response.data.toString());
  }
}
