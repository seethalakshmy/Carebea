// To parse this JSON data, do
//
//     final profileResponse = profileResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'profile_model.g.dart';

@JsonSerializable()
class ProfileResponse {
  ProfileResponse({
    this.jsonrpc,
    this.id,
    this.profileResponseResult,
  });

  String? jsonrpc;
  dynamic id;
  @JsonKey(name: 'result')
  ProfileResponseResult? profileResponseResult;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
@JsonSerializable()
class ProfileResponseResult {
  ProfileResponseResult({
    this.status,
    this.message,
    this.name,
    this.email,
    this.zip,
    this.phone,
    this.mobile,
  });

  bool? status;
  String? message;
  String? name;
  String? email;
  String? zip;
  String? phone;
  String? mobile;

  factory ProfileResponseResult.fromJson(Map<String, dynamic> json) => _$ProfileResponseResultFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseResultToJson(this);
}
