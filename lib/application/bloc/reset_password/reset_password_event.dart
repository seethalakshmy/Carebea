part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordEvent with _$ResetPasswordEvent {
  const factory ResetPasswordEvent.resetPassword(
      {required BuildContext context,
      required String password,
      required String userId}) = _ResetPasswordEvent;
}
