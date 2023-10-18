// // To parse this JSON data, do
// //
// //     final emailLogin = emailLoginFromJson(jsonString);
//
// import 'dart:convert';
//
// import 'package:json_annotation/json_annotation.dart';
// part 'email_login.g.dart';
//
// @JsonSerializable()
// class EmailLoginResponse {
//   EmailLoginResponse({
//     this.jsonrpc,
//     this.id,
//     this.emailLogin,
//   });
//
//   String? jsonrpc;
//   dynamic id;
//   @JsonKey(name: 'result')
//   EmailLogin? emailLogin;
//
//   factory EmailLoginResponse.fromJson(Map<String, dynamic> json) => _$EmailLoginResponseFromJson(json);
//
//   Map<String, dynamic> toJson() => _$EmailLoginResponseToJson(this);
// }
//
// @JsonSerializable()
// class EmailLogin {
//   EmailLogin({this.status, this.userId, this.email, this.name, this.userType, this.message});
//
//   bool? status;
//   @JsonKey(name: 'user_id')
//   int? userId;
//   @JsonKey(name: 'user_type')
//   int? userType;
//   String? email;
//   String? name;
//   String? message;
//
//   factory EmailLogin.fromJson(Map<String, dynamic> json) => _$EmailLoginFromJson(json);
//
//   Map<String, dynamic> toJson() => _$EmailLoginToJson(this);
// }
// To parse this JSON data, do
//
//     final emailLoginResponse = emailLoginResponseFromJson(jsonString);

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
    this.message,
    this.userId,
    this.userType,
    this.email,
    this.name,
    this.branch,
    this.zone,
    this.data,
  });

  bool? status;
  String? message;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'user_type')
  int? userType;
  String? email;
  String? name;
  List<Branch>? branch;
  List<Branch>? zone;
  Data? data;

  factory EmailLogin.fromJson(Map<String, dynamic> json) => _$EmailLoginFromJson(json);

  Map<String, dynamic> toJson() => _$EmailLoginToJson(this);
}

@JsonSerializable()
class Branch {
  Branch({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  Map<String, dynamic> toJson() => _$BranchToJson(this);
}

@JsonSerializable()
class Zone {
  Zone({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory Zone.fromJson(Map<String, dynamic> json) => _$ZoneFromJson(json);

  Map<String, dynamic> toJson() => _$ZoneToJson(this);
}

@JsonSerializable()
class Data {
  final String? token;
  @JsonKey(name: "user_id")
  final int? userId;
  @JsonKey(name: "refresh_token")
  final String? refreshToken;
  @JsonKey(name: "user_email_id")
  final String? userEmailId;
  @JsonKey(name: "profile_id")
  final String? profileName;
  @JsonKey(name: "is_active")
  final bool? isActive;

  Data({
    this.token,
    this.userId,
    this.userEmailId,
    this.profileName,
    this.isActive,
    this.refreshToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
