import 'package:dartz/dartz.dart';

import '../../../../core/base_use_case/base_use_case.dart';
import '../../../../core/error/failure.dart';
import '../../data/model/login_model.dart';
import '../repo/base_repo.dart';

class RegisterUseCase extends BaseUseCase<LoginModel, RegisterAuthModel> {
  BaseRepository baseRepository;

  RegisterUseCase({required this.baseRepository});

  @override
  Future<Either<LoginModel, Failure>> call(RegisterAuthModel parameter) async {
    final result = await baseRepository.registerWithEmailAndPassword(parameter);

    return result;
  }
}

class RegisterAuthModel {
  final String email;
  final String password;

  RegisterAuthModel({
    required this.email,
    required this.password,
  });
}
