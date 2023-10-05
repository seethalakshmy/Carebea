import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_response.freezed.dart';
part 'resend_otp_response.g.dart';

@freezed
class ResendOTPResponse with _$ResendOTPResponse {
  @JsonSerializable(includeIfNull: false, explicitToJson: true)
  const factory ResendOTPResponse({
    bool? status,
    String? message,
    String? data,
  }) = _ResendOTPResponse;

  factory ResendOTPResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendOTPResponseFromJson(json);
}
