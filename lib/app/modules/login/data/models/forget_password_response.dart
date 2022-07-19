import 'package:json_annotation/json_annotation.dart';

part 'forget_password_response.g.dart';

@JsonSerializable()
class ForgetPasswordResponse {
  ForgetPasswordResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  final Result? result;

  factory ForgetPasswordResponse.fromJson(Map<String, dynamic> json) => _$ForgetPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordResponseToJson(this);
}

@JsonSerializable()
class Result {
  Result({
    this.status,
    this.message,
    this.otp,
    this.validOtp,
    this.email,this.userId,
  });

  final bool? status;
  final String? message;
  final String? otp;
  @JsonKey(name: "valid_otp")
  final String? validOtp;
  @JsonKey(name: "user_id")
  final int? userId;
  final String? email;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
