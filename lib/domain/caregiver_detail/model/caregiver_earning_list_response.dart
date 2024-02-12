class CareGiverEarningsListResponse {
  bool? status;
  String? message;
  Data? data;

  CareGiverEarningsListResponse({this.status, this.message, this.data});

  CareGiverEarningsListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.toJson();
    }
    return map;
  }
}

class Data {
  List<Earnings>? earnings;
  int? totalCount;

  Data({
    this.earnings,
  });

  Data.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['transactions'] != null) {
      earnings = <Earnings>[];
      json['transactions'].forEach((v) {
        earnings!.add(Earnings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalCount'];
    if (earnings != null) {
      data['transactions'] = earnings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Earnings {
  String? serviceId;
  String? uniqueServiceId;
  String? transactionType;
  String? dateTime;
  String? amount;
  String? recievedFrom;
  String? paidFor;
  String? transactionId;
  String? uniqueTransactionId;
  int? status;

  Earnings(
      {this.serviceId,
      this.uniqueServiceId,
      this.transactionType,
      this.dateTime,
      this.amount,
      this.recievedFrom,
      this.paidFor,
      this.transactionId,
      this.uniqueTransactionId,
      this.status});

  Earnings.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    uniqueServiceId = json['serviceId'];
    transactionType = json['transaction_type'];
    dateTime = json['date_time'];
    amount = json['amount'];
    recievedFrom = json['recieved_from'];
    paidFor = json['paid_for'];
    transactionId = json['unique_transactionId'];
    uniqueTransactionId = json['transactionId'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['service_id'] = serviceId;
    data['serviceId'] = uniqueServiceId;
    data['transaction_type'] = transactionType;
    data['date_time'] = dateTime;
    data['amount'] = amount;
    data['recieved_from'] = recievedFrom;
    data['paid_for'] = paidFor;
    data['unique_transactionId'] = transactionId;
    data['transactionId'] = uniqueTransactionId;
    data['status'] = status;
    return data;
  }
}
