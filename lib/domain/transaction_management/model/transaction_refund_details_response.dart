import 'dart:convert';

/// refund : {"payment_status":[{"status":1,"title":"Payment Initiated","date":"2023-08-17T16:44:50.684Z","_id":"64de4e82f87dfc7b61c06755","paymentLogTxnId":"64de4e82f87dfc7b61c06754"},{"status":3,"title":"Payment Failed","date":"2023-08-17T16:44:51.246Z","_id":"64de4e83f87dfc7b61c06759","paymentLogTxnId":"64de4e82f87dfc7b61c06754"}]}

TransactionRefundDetailsResponse transactionRefundDetailsResponseFromJson(
        String str) =>
    TransactionRefundDetailsResponse.fromJson(json.decode(str));
String transactionRefundDetailsResponseToJson(
        TransactionRefundDetailsResponse data) =>
    json.encode(data.toJson());

class TransactionRefundDetailsResponse {
  TransactionRefundDetailsResponse({
    Refund? refund,
  }) {
    _refund = refund;
  }

  TransactionRefundDetailsResponse.fromJson(dynamic json) {
    _refund = json['refund'] != null ? Refund.fromJson(json['refund']) : null;
  }
  Refund? _refund;
  TransactionRefundDetailsResponse copyWith({
    Refund? refund,
  }) =>
      TransactionRefundDetailsResponse(
        refund: refund ?? _refund,
      );
  Refund? get refund => _refund;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_refund != null) {
      map['refund'] = _refund?.toJson();
    }
    return map;
  }
}

/// payment_status : [{"status":1,"title":"Payment Initiated","date":"2023-08-17T16:44:50.684Z","_id":"64de4e82f87dfc7b61c06755","paymentLogTxnId":"64de4e82f87dfc7b61c06754"},{"status":3,"title":"Payment Failed","date":"2023-08-17T16:44:51.246Z","_id":"64de4e83f87dfc7b61c06759","paymentLogTxnId":"64de4e82f87dfc7b61c06754"}]

Refund refundFromJson(String str) => Refund.fromJson(json.decode(str));
String refundToJson(Refund data) => json.encode(data.toJson());

class Refund {
  Refund({
    List<PaymentStatus>? paymentStatus,
  }) {
    _paymentStatus = paymentStatus;
  }

  Refund.fromJson(dynamic json) {
    if (json['payment_status'] != null) {
      _paymentStatus = [];
      json['payment_status'].forEach((v) {
        _paymentStatus?.add(PaymentStatus.fromJson(v));
      });
    }
  }
  List<PaymentStatus>? _paymentStatus;
  Refund copyWith({
    List<PaymentStatus>? paymentStatus,
  }) =>
      Refund(
        paymentStatus: paymentStatus ?? _paymentStatus,
      );
  List<PaymentStatus>? get paymentStatus => _paymentStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_paymentStatus != null) {
      map['payment_status'] = _paymentStatus?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// status : 1
/// title : "Payment Initiated"
/// date : "2023-08-17T16:44:50.684Z"
/// _id : "64de4e82f87dfc7b61c06755"
/// paymentLogTxnId : "64de4e82f87dfc7b61c06754"

PaymentStatus paymentStatusFromJson(String str) =>
    PaymentStatus.fromJson(json.decode(str));
String paymentStatusToJson(PaymentStatus data) => json.encode(data.toJson());

class PaymentStatus {
  PaymentStatus(
      {num? status,
      String? title,
      String? date,
      String? id,
      String? paymentLogTxnId,
      String? transactionId}) {
    _status = status;
    _title = title;
    _date = date;
    _id = id;
    _paymentLogTxnId = paymentLogTxnId;
    _transactionId = transactionId;
  }

  PaymentStatus.fromJson(dynamic json) {
    _status = json['status'];
    _title = json['title'];
    _date = json['date'];
    _id = json['_id'];
    _paymentLogTxnId = json['paymentLogTxnId'];
    _transactionId = json['transactionId'];
  }
  num? _status;
  String? _title;
  String? _date;
  String? _id;
  String? _paymentLogTxnId;
  String? _transactionId;
  PaymentStatus copyWith(
          {num? status,
          String? title,
          String? date,
          String? id,
          String? paymentLogTxnId,
          String? transactionId}) =>
      PaymentStatus(
          status: status ?? _status,
          title: title ?? _title,
          date: date ?? _date,
          id: id ?? _id,
          paymentLogTxnId: paymentLogTxnId ?? _paymentLogTxnId,
          transactionId: transactionId ?? _transactionId);
  num? get status => _status;
  String? get title => _title;
  String? get date => _date;
  String? get id => _id;
  String? get paymentLogTxnId => _paymentLogTxnId;
  String? get transactionId => _transactionId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['title'] = _title;
    map['date'] = _date;
    map['_id'] = _id;
    map['paymentLogTxnId'] = _paymentLogTxnId;
    map['transactionId'] = _transactionId;
    return map;
  }
}
