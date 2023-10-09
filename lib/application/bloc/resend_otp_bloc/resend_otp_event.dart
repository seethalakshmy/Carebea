part of 'resend_otp_bloc.dart';

@freezed
class ResendOtpEvent with _$ResendOtpEvent {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory ResendOtpEvent.resend({
    required String userId,
    required int type,
  }) = _Resend;
}
