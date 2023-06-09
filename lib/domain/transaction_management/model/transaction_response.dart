

import 'package:admin_580_tech/domain/transaction_management/model/transaction_data.dart';

class TransactionResponse {
  bool? status;
  String? message;
  TransactionData? data;

  TransactionResponse({this.status, this.message, this.data});

  TransactionResponse copyWith({bool? status, String? message, TransactionData? data}) =>
      TransactionResponse(
          data: data ?? this.data,
          status: status ?? this.status,
          message: message ?? this.message);

  TransactionResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? TransactionData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = data;
    return data;
  }
}
