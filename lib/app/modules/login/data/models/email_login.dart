// To parse this JSON data, do
//
//     final emailLogin = emailLoginFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'email_login.g.dart';


@JsonSerializable()
class EmailLoginResponse {
  EmailLoginResponse({
    this.jsonrpc,
    this.id,
    this.emailLogin,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  EmailLogin? emailLogin;

  factory EmailLoginResponse.fromJson(Map<String, dynamic> json) => _$EmailLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EmailLoginResponseToJson(this);
}

@JsonSerializable()
class EmailLogin {
  EmailLogin({
    this.status,
    this.userId,
    this.email,
    this.name,
    this.message
  });

  bool? status;
  @JsonKey(name: 'user_id')
  int? userId;
  String? email;
  String? name;
  String? message;

  factory EmailLogin.fromJson(Map<String, dynamic> json) => _$EmailLoginFromJson(json);

  Map<String, dynamic> toJson() => _$EmailLoginToJson(this);
}


