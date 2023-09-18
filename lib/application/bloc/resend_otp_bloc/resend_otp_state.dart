part of 'resend_otp_bloc.dart';

@freezed
class ResendOtpState with _$ResendOtpState {
  const factory ResendOtpState.initial() = _Initial;

  const factory ResendOtpState.loading() = _Loading;

  const factory ResendOtpState.failed({required String error}) = _Failed;

  const factory ResendOtpState.success({required CommonResponse data}) =
      _Success;
}
