import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:globaladvice_new/core/utils/api_helper.dart';
import 'package:globaladvice_new/core/utils/constant_api.dart';
import 'package:globaladvice_new/core/utils/methods.dart';
import 'package:globaladvice_new/features/auth/data/model/login_model.dart';

import '../../domain/use_case/login_uc.dart';
import '../../domain/use_case/register_uc.dart';
import '../../domain/use_case/reset_password_us.dart';
import '../model/reset_password_model.dart';

abstract class BaseRemotelyDataSource {
  Future<LoginModel> loginWithEmailAndPassword(AuthModel authModel);

  Future<LoginModel> registerWithEmailAndPassword(
      RegisterAuthModel registerAuthModel);

  Future<ResetPasswordModel> resetPasswordWithEmail(
      ResetPasswordModel resetModel);
}

class AuthRemotelyDateSource extends BaseRemotelyDataSource {
  @override
  Future<LoginModel> loginWithEmailAndPassword(AuthModel authModel) async {
    final body = {"email": authModel.email, "password": authModel.password};

    try {
      final response = await Dio().post(
        ConstantApi.login,
        data: body,
      );
      Map<String, dynamic> jsonData = response.data;

      LoginModel authModelResponse = LoginModel.fromJson(jsonData);

      Methods.instance.saveUserToken(authToken: authModelResponse.token);
      return authModelResponse;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(
          dioError: e, endpointName: "loginWithEmailAndPassword");
    }
  }

  @override
  Future<LoginModel> registerWithEmailAndPassword(
      RegisterAuthModel registerAuthModel) async {
    final body = {
      "email": registerAuthModel.email,
      "password": registerAuthModel.password,
    };

    try {
      final response = await Dio().post(
        ConstantApi.register,
        data: body,
      );
      Map<String, dynamic> jsonData = response.data;

      LoginModel authModelResponse = LoginModel.fromJson(jsonData);

      Methods.instance.saveUserToken(authToken: authModelResponse.token);
      return authModelResponse;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(
          dioError: e, endpointName: "RegisterWithEmailAndPassword");
    }
  }

  @override
  Future<ResetPasswordModel> resetPasswordWithEmail(
      ResetPasswordModel resetModel) async {
    int generateRandomNumber(int min, int max) {
      Random random = Random();
      return min + random.nextInt(max - min + 1);
    }

    int randomNumber = generateRandomNumber(100000, 200000);

    final Email email = Email(
        subject: "Reset Password",
        isHTML: false,
        cc: ['${resetModel.email}'],
        body: 'Your new password is ${randomNumber}');
    final body = {
      "password": randomNumber.toString(),
      'email': resetModel.email,
    };
    await FlutterEmailSender.send(email);

    try {
      final response = await Dio().post(
        ConstantApi.resetPassword,
        data: body,
      );
      Map<String, dynamic> jsonData = response.data;

      ResetPasswordModel resetmodelresponse =
          ResetPasswordModel.fromJson(jsonData);

      Methods.instance.saveUserToken(authToken: resetmodelresponse.token);
      return resetmodelresponse;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(
          dioError: e, endpointName: "RegisterWithEmailAndPassword");
    }
  }
}
