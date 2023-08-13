import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:grocery_app/const/app_api_const.dart';
import 'package:grocery_app/model/dto/signup_dto.dart';
import 'package:grocery_app/repo/auth_repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  Dio dio = Dio(BaseOptions(contentType: "application/json"));
  @override
  Future<void> signUp(SignupDto signupDto) async {
    print(AppApi.signUp);
    print(signupDto.signUpPayload.toJson());

    final response = await dio.post(
      AppApi.signUp,
      data: signupDto.signUpPayload.toJson(),
    );
    log(response.data.toString());
  }
}
