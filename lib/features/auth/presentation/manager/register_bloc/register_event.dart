abstract class BaseSignupEvent {}

class RegisterEvent extends BaseSignupEvent {
  final String email;
  final String password;

  RegisterEvent({
    required this.email,
    required this.password,
  });
}
