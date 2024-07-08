import 'package:get_it/get_it.dart';
import 'package:globaladvice_new/core/service/navigation_service.dart';
import 'package:globaladvice_new/features/auth/data/model/reset_password_model.dart';
import 'package:globaladvice_new/features/auth/domain/use_case/reset_password_us.dart';
import 'package:globaladvice_new/features/auth/presentation/manager/reset_password_bloc/bloc/reset_password_bloc.dart';
import '../../features/auth/data/data_source/remotly_data_source.dart';
import '../../features/auth/data/repo_imp/repo_imp.dart';
import '../../features/auth/domain/repo/base_repo.dart';
import '../../features/auth/domain/use_case/login_uc.dart';
import '../../features/auth/domain/use_case/register_uc.dart';
import '../../features/auth/presentation/manager/login_bloc/login_bloc.dart';
import '../../features/auth/presentation/manager/register_bloc/register_bloc.dart';

final getIt = GetIt.instance;

class ServerLocator {
  Future<void> init() async {
    //bloc
    getIt.registerLazySingleton(() => RegisterBloc(
          registerUseCase: getIt(),
        ));
    getIt.registerLazySingleton(() => LoginBloc(
          loginUseCase: getIt(),
        ));
    getIt.registerLazySingleton(() => ResetPasswordBloc(
          passwordUseCase: getIt(),
        ));

    //use_case
    getIt.registerLazySingleton(() => RegisterUseCase(baseRepository: getIt()));
    getIt.registerLazySingleton(() => LoginUseCase(baseRepository: getIt()));
    getIt.registerLazySingleton(
        () => ResetPasswordUseCase(baseRepository: getIt()));

    //Remote Date
    getIt.registerLazySingleton<BaseRemotelyDataSource>(
        () => AuthRemotelyDateSource());

    //Repository Implementation
    getIt.registerLazySingleton<BaseRepository>(
        () => RepositoryImp(baseRemotelyDataSource: getIt()));

    // navigation service
    getIt.registerLazySingleton(() => NavigationService());
  }
}
