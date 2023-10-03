import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory Name({
  String? firstName,
  String? lastName,
  }) = _Name;



  factory Name.fromJson(Map<String, dynamic> json) =>
      _$NameFromJson(json);
}
