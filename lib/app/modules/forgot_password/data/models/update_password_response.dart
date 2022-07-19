import 'package:json_annotation/json_annotation.dart';

part 'update_password_response.g.dart';

@JsonSerializable()
class UpdatePasswordResponse {
  UpdatePasswordResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  final String? jsonrpc;
  final dynamic id;
  @JsonKey(name: "result")
  final UpdatePasswordResult? result;

  factory UpdatePasswordResponse.fromJson(Map<String, dynamic> json) => _$UpdatePasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePasswordResponseToJson(this);
}

@JsonSerializable()
class UpdatePasswordResult {
  UpdatePasswordResult({
    this.status,
    this.userId,
    this.email,
  });

  final bool? status;
  @JsonKey(name: "user_id")
  final int? userId;
  final String? email;

  factory UpdatePasswordResult.fromJson(Map<String, dynamic> json) => _$UpdatePasswordResultFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePasswordResultToJson(this);
}
