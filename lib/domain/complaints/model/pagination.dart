import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Pagination({
    num? limit,
    num? offset,
    num? totals,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}
