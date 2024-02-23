import 'package:freezed_annotation/freezed_annotation.dart';

import 'name.dart';
import 'status.dart';

part 'transactions.freezed.dart';
part 'transactions.g.dart';

@freezed
class Transactions with _$Transactions {
  /// serviceId : "AMG-SERQ-1001-2023"
  /// transactionId : "DUMMY00000000000001"
  /// transaction_type : ""
  /// date_time : "2023-07-21T12:25:59.952Z"
  /// paid_to : "NA"
  /// amount : "$0"
  /// card_number : ""
  /// name : {"firstName":"Care Three","lastName":"Ambassador"}
  /// user : "64ba5b8b3ea1296c2d6669ba"
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory Transactions({
    @JsonKey(name: "service_id") String? serviceId,
    @JsonKey(name: "serviceId") String? serviceIdPublic,
    @JsonKey(name: "_id") String? transactionId,
    @JsonKey(name: "uniqueId") String? transactionIdPublic,
    @JsonKey(name: "transactionType") String? transactionType,
    @JsonKey(name: 'date_time') String? dateTime,
    @JsonKey(name: "receiverName") String? paidTo,
    @JsonKey(name: "payerName") String? receivedFrom,
    @JsonKey(name: "paid_for") String? paidFor,
    String? amount,
    String? cardNumber,
    Name? name,
    String? user,
    Status? status,
    String? id,
  }) = _Transactions;

  factory Transactions.fromJson(Map<String, dynamic> json) =>
      _$TransactionsFromJson(json);
}
