// To parse this JSON data, do
//
//     final qrResponse = qrResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'qr_model.g.dart';


@JsonSerializable()
class QrResponse {
  QrResponse({
    this.id,
    this.name,
    this.type,
  });

  int? id;
  String? name;
  int? type;

  factory QrResponse.fromJson(Map<String, dynamic> json) => _$QrResponseFromJson(json);

  Map<String, dynamic> toJson() => _$QrResponseToJson(this);
}

