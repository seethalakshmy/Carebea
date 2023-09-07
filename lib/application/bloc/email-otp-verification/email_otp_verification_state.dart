part of 'email_otp_verification_bloc.dart';

@freezed
class EmailOtpVerificationState with _$EmailOtpVerificationState {
  const factory EmailOtpVerificationState({
    required bool isLoading,
    required bool isError,
    required VerifyOtpResponse? verifyOtpResponse,
    required GenerateOtpResponse? generateOtpResponse,
    required String? error,
    required bool? isMobileOtpVerified,
    @Default(false) bool isClientError,
  }) = _EmailOtpVerificationState;

  factory EmailOtpVerificationState.initial() {
    return const EmailOtpVerificationState(
      isLoading: false,
      isError: false,
      verifyOtpResponse: null,
      error: null,
      generateOtpResponse: null,
      isMobileOtpVerified: false,
    );
  }
}
