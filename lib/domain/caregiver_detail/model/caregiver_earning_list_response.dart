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
    if (json['earnings'] != null) {
      earnings = <Earnings>[];
      json['earnings'].forEach((v) {
        earnings!.add(Earnings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalCount'];
    if (earnings != null) {
      data['earnings'] = earnings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Earnings {
  String? serviceId;
  String? transactionType;
  String? dateTime;
  String? amount;
  String? recievedFrom;
  String? paidFor;
  String? transactionId;
  int? status;

  Earnings(
      {this.serviceId,
      this.transactionType,
      this.dateTime,
      this.amount,
      this.recievedFrom,
      this.paidFor,
      this.transactionId,
      this.status});

  Earnings.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    transactionType = json['transaction_type'];
    dateTime = json['date_time'];
    amount = json['amount'];
    recievedFrom = json['recieved_from'];
    paidFor = json['paid_for'];
    transactionId = json['transaction_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['service_id'] = serviceId;
    data['transaction_type'] = transactionType;
    data['date_time'] = dateTime;
    data['amount'] = amount;
    data['recieved_from'] = recievedFrom;
    data['paid_for'] = paidFor;
    data['transaction_id'] = transactionId;
    data['status'] = status;
    return data;
  }
}
