import 'package:dio/dio.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/core/utils/constant_api.dart';
import 'package:leap/core/utils/methods.dart';
import 'package:leap/features/auth/domain/use_case/login_with_email_and_password_use_case.dart';

abstract class BaseRemotelyDataSource {
  Future<Map<String, dynamic>> loginWithEmailAndPassword(AuthModel authModel);


}
class AuthRemotelyDateSource extends BaseRemotelyDataSource{
  @override
  Future<Map<String, dynamic>> loginWithEmailAndPassword(
      AuthModel authModel) async {

    final body = {
      ConstantApi.email: authModel.email,
      ConstantApi.password: authModel.password,
    };

    try {
      final response = await Dio().post(
        ConstantApi.login,
        data: body,
      );
      Map<String, dynamic> jsonData = response.data;
      Methods.instance.saveUserToken(authToken: jsonData['access_token']);
      return jsonData;
    } on DioException catch (e) {
      throw DioHelper.handleDioError(
          dioError: e, endpointName: "loginWithEmailAndPassword");
    }
  }
}