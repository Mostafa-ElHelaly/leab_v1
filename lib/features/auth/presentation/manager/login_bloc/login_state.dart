import 'package:equatable/equatable.dart';

import '../../../data/model/login_model.dart';



abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoadingState extends LoginState {
  const LoginLoadingState();
}

final class LoginErrorState extends LoginState {
  final String errorMessage;

  const LoginErrorState({required this.errorMessage});
}

final class LoginSuccessState extends LoginState {
  final LoginModel loginAuthModelResponse;

  const LoginSuccessState({required this.loginAuthModelResponse});
}
