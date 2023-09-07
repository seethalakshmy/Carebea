part of 'email_otp_verification_bloc.dart';

@freezed
class EmailOtpVerificationEvent with _$EmailOtpVerificationEvent {
  const factory EmailOtpVerificationEvent.verifyOtp(
      {required BuildContext context,
      required String userId,
      required int type,
      required String otp}) = _VerifyOtp;

  const factory EmailOtpVerificationEvent.verifyMobileOtp(
      {required BuildContext context,
      required String userId,
      required int type,
      required String otp}) = _VerifyMobileOtp;

  const factory EmailOtpVerificationEvent.generateOtp(
      {required BuildContext context,
      required String userId,
      required String mobileNumber}) = _GenerateOtp;
}
