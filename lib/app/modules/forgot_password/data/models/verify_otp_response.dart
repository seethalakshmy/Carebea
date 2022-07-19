import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable()
class VerifyOtpResponse {
  VerifyOtpResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  @JsonKey(name: "result")
  final VerifyOtpResult? result;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) => _$VerifyOtpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);
}

@JsonSerializable()
class VerifyOtpResult {
  VerifyOtpResult({
    this.status,
    this.email,
    this.message,
  });

  final bool? status;
  final String? email;
  final String? message;

  factory VerifyOtpResult.fromJson(Map<String, dynamic> json) => _$VerifyOtpResultFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResultToJson(this);
}
