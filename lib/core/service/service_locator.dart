
import 'package:get_it/get_it.dart';
import 'package:leap/features/auth/data/auth_remote_data_source.dart';
import 'package:leap/features/auth/data/repo_imp.dart';
import 'package:leap/features/auth/domain/repo/base_repo.dart';
import 'package:leap/features/auth/domain/use_case/login_with_email_and_password_use_case.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_bloc.dart';
import 'package:leap/features/home/home_screen/controller/cubit.dart';

final getIt = GetIt.instance;

class ServerLocator {
  Future<void> init() async {
    //bloc
    getIt.registerLazySingleton<BaseRemotelyDataSource>(
        () => AuthRemotelyDateSource());
    getIt.registerLazySingleton(
        () => HomeScreenCubit());
    getIt.registerLazySingleton<BaseRepository>(
        () => RepositoryImp(baseRemotelyDataSource: getIt()));
    getIt.registerFactory(() => LoginWithEmailAndPasswordBloc(
        loginWithEmailAndPasswordUseCase: getIt()));
    getIt.registerLazySingleton(
        () => LoginWithEmailAndPasswordUseCase(baseRepository: getIt()));

//use_case
  }
}
