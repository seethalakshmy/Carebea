part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.forgotPassword(
      {required BuildContext context, required String email}) = _ForgotPassword;
}
