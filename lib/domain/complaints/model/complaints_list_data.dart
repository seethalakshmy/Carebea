import 'package:freezed_annotation/freezed_annotation.dart';

import 'final_result.dart';
import 'pagination.dart';

part 'complaints_list_data.freezed.dart';
part 'complaints_list_data.g.dart';

@freezed
class ComplaintsListData with _$ComplaintsListData {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ComplaintsListData({
    List<FinalResult>? finalResult,
    num? serviceRelatedIssue,
    num? transactionRelatedIssue,
    num? generalIssue,
    num? totalCaIssue,
    Pagination? pagination,
  }) = _ComplaintsListData;

  factory ComplaintsListData.fromJson(Map<String, dynamic> json) =>
      _$ComplaintsListDataFromJson(json);
}
