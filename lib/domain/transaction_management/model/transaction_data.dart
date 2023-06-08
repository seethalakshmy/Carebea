
import 'package:admin_580_tech/domain/caregivers/model/pagination.dart';
import 'package:admin_580_tech/domain/transaction_management/model/transactions.dart';


class TransactionData {
  List<Transactions>? transactions;
  Pagination? pagination;

  TransactionData({this.transactions, this.pagination});

  TransactionData copyWith({List<Transactions>? transactions, Pagination? pagination}) => TransactionData(
      transactions: transactions ?? this.transactions,
      pagination: pagination ?? this.pagination);

  TransactionData.fromJson(Map<String, dynamic> json) {
    if (json['finalResult'] != null) {
      transactions = <Transactions>[];
      json['finalResult'].forEach((v) {
        transactions!.add(Transactions.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (transactions != null) {
      data['finalResult'] = transactions!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    return data;
  }
}
