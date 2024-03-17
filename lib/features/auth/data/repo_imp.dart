import 'package:dartz/dartz.dart';
import 'package:leap/core/error/failure.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/auth/data/auth_remote_data_source.dart';
import 'package:leap/features/auth/domain/repo/base_repo.dart';
import 'package:leap/features/auth/domain/use_case/login_with_email_and_password_use_case.dart';

class RepositoryImp extends BaseRepository {
  final BaseRemotelyDataSource baseRemotelyDataSource;

  RepositoryImp({required this.baseRemotelyDataSource});

  @override
  Future<Either<Map<String, dynamic>, Failure>> loginWithEmailAndPassword(AuthModel authModel) async {
    try {
      final result =
          await baseRemotelyDataSource.loginWithEmailAndPassword(authModel);
      return Left(result);
    } on Exception catch (e) {
      return right(DioHelper.buildFailure(e));
    }
  }
}
