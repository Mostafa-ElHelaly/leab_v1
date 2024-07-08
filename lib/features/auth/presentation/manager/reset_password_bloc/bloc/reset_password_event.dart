abstract class ResetEvent {}

class ResetPasswordEvent extends ResetEvent {
  final String email;
  ResetPasswordEvent({
    required this.email,
  });
}
