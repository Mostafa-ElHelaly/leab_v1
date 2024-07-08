import 'package:dartz/dartz.dart';
import 'package:globaladvice_new/features/auth/domain/use_case/reset_password_us.dart';

import '../../../../core/error/failure.dart';
import '../../data/model/login_model.dart';
import '../../data/model/reset_password_model.dart';
import '../use_case/login_uc.dart';
import '../use_case/register_uc.dart';

abstract class BaseRepository {
  Future<Either<LoginModel, Failure>> loginWithEmailAndPassword(
      AuthModel authModel);
  Future<Either<LoginModel, Failure>> registerWithEmailAndPassword(
      RegisterAuthModel registerAuthModel);
  Future<Either<ResetPasswordModel, Failure>> resetPassword(
      ResetPasswordModel resetPasswordModel);
}
