// To parse this JSON data, do
//
//     final getAccessTokenResponse = getAccessTokenResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'access_token.g.dart';

@JsonSerializable()
class GetAccessTokenResponse {
  GetAccessTokenResponse({
    this.jsonrpc,
    this.id,
    this.result,
  });

  String? jsonrpc;
  dynamic id;
  GetAccessTokenResult? result;

  factory GetAccessTokenResponse.fromJson(Map<String, dynamic> json) => _$GetAccessTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccessTokenResponseToJson(this);
}
@JsonSerializable()
class GetAccessTokenResult {
  GetAccessTokenResult({
    this.status,
    this.statusCode,
    this.message,
    this.accessToken,
    this.refreshToken,
  });

  bool? status;
  @JsonKey(name: 'status_code')
  int? statusCode;
  String? message;
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'refresh_token')
  String? refreshToken;

  factory GetAccessTokenResult.fromJson(Map<String, dynamic> json) => _$GetAccessTokenResultFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccessTokenResultToJson(this);
}



