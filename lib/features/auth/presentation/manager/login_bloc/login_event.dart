abstract class BaseLoginEvent {}

class LoginEvent extends BaseLoginEvent {
  final String email;
  final String password;

  LoginEvent({
    required this.email,
    required this.password,
  });
}
