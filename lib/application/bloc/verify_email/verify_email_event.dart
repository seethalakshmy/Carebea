part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailEvent with _$VerifyEmailEvent {
  const factory VerifyEmailEvent.verifyEmail(
      {required BuildContext context,
      required String otp,
      required String userId,
      required int type}) = _VerifyEmailEvent;
}
