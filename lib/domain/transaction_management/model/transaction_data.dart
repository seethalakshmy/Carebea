import 'package:freezed_annotation/freezed_annotation.dart';

import 'transactions.dart';

part 'transaction_data.freezed.dart';
part 'transaction_data.g.dart';

@freezed
class TransactionData with _$TransactionData {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory TransactionData({
    List<Transactions>? transactions,
    num? totalCount,
    num? offset,
    num? actualLimit,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}
