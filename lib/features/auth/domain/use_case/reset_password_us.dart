import 'package:dartz/dartz.dart';
import '../../../../core/base_use_case/base_use_case.dart';
import '../../../../core/error/failure.dart';
import '../../data/model/reset_password_model.dart';
import '../repo/base_repo.dart';

class ResetPasswordUseCase
    extends BaseUseCase<ResetPasswordModel, ResetPasswordModel> {
  BaseRepository baseRepository;

  ResetPasswordUseCase({required this.baseRepository});

  @override
  Future<Either<ResetPasswordModel, Failure>> call(
      ResetPasswordModel parameter) async {
    final result = await baseRepository.resetPassword(parameter);

    return result;
  }
}
