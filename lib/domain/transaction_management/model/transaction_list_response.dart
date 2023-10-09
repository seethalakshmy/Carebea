import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction_data.dart';

part 'transaction_list_response.freezed.dart';
part 'transaction_list_response.g.dart';

@freezed
class TransactionListResponse with _$TransactionListResponse {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory TransactionListResponse({
    bool? status,
    String? message,
    TransactionData? data,
  }) = _TransactionListResponse;

  factory TransactionListResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionListResponseFromJson(json);
}
