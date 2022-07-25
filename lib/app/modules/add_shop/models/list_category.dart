// To parse this JSON data, do
//
//     final routeListResponse = routeListResponseFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'list_category.g.dart';




@JsonSerializable()
class CategoryList {
  CategoryList({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory  CategoryList.fromJson(Map<String, dynamic> json) => _$CategoryListFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryListToJson(this);
}
