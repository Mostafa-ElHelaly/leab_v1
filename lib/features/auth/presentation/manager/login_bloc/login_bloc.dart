import 'package:bloc/bloc.dart';
import '../../../../../core/utils/api_helper.dart';
import '../../../domain/use_case/login_uc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginUseCase loginUseCase;

  LoginBloc({required this.loginUseCase}) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(const LoginLoadingState());
      final result = await loginUseCase
          .call(AuthModel(email: event.email, password: event.password));
      result.fold(
          (l) => emit(LoginSuccessState(
            loginAuthModelResponse: l,
              )),
          (r) => emit(
              LoginErrorState(errorMessage: DioHelper().getTypeOfFailure(r))));
    });
  }
}
