import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/core/resource_manager/string_manager.dart';
import 'package:leap/core/utils/api_helper.dart';
import 'package:leap/features/auth/domain/use_case/login_with_email_and_password_use_case.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_events.dart';
import 'package:leap/features/auth/presentation/controller/login_bloc/login_with_email_and_password_states.dart';

class LoginWithEmailAndPasswordBloc extends Bloc<BaseLoginWithEmailAndPasswordEvent,
    LoginWithEmailAndPasswordState> {
  LoginWithEmailAndPasswordUseCase loginWithEmailAndPasswordUseCase;

  LoginWithEmailAndPasswordBloc({required this.loginWithEmailAndPasswordUseCase})
      : super(LoginWithEmailAndPasswordInitial()) {
    on<LoginWithEmailAndPasswordEvent>((event, emit) async {
      emit(const LoginWithEmailAndPasswordLoadingState());
      final result = await loginWithEmailAndPasswordUseCase
          .call(AuthModel(email: event.phone, password: event.password));
      result.fold(
          (l) => emit(const LoginWithEmailAndPasswordSuccessMessageState(
              successMessage: StringManager.loginSuccessfully)),
          (r) => emit(LoginWithEmailAndPasswordErrorMessageState(
              errorMessage: DioHelper().getTypeOfFailure(r))));
    });
  }
}
