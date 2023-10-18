import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_item.freezed.dart';
part 'state_item.g.dart';

@freezed
class StateItem with _$StateItem {
  const factory StateItem(
      {@JsonKey(name: "_id") String? id,
      String? name,
      @JsonKey(name: "iso_code") String? isoCode}) = _StateItem;

  factory StateItem.fromJson(Map<String, dynamic> json) =>
      _$StateItemFromJson(json);
}
