import 'package:freezed_annotation/freezed_annotation.dart';

import '../../transaction_management/model/name.dart';

part 'final_result.freezed.dart';
part 'final_result.g.dart';

@freezed
class FinalResult with _$FinalResult {
  @JsonSerializable(
      explicitToJson: true,
      includeIfNull: false,
      fieldRename: FieldRename.snake)
  const factory FinalResult({
    String? id,
    String? complaintId,
    String? userId,
    Name? clientName,
    Name? caregiverName,
    String? category,
    String? createdDate,
    String? repliedOn,
    String? title,
    String? role,
    String? status,
  }) = _FinalResult;

  factory FinalResult.fromJson(Map<String, dynamic> json) =>
      _$FinalResultFromJson(json);
}
