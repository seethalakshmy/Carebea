import 'dart:convert';

import 'package:admin_580_tech/domain/transaction_management/model/transaction_refund_details_response.dart';

/// status : true
/// message : "Success"
/// data : {"serviceId":"AMG-SERQ-1060-2023","transaction_type":"Card","date_time":"2023-07-25T08:59:52.172Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3","refund":{},"recieved_from":"AccountOne","transactionId":"pi_3NXh5uGKxeLF3YcY11bLzpDx","paid_for":"Client to amagi for service","status":{"id":2,"name":"Successful"}}

TransactionDetailsResponse transactionDetailsResponseFromJson(String str) =>
    TransactionDetailsResponse.fromJson(json.decode(str));
String transactionDetailsResponseToJson(TransactionDetailsResponse data) =>
    json.encode(data.toJson());

class TransactionDetailsResponse {
  TransactionDetailsResponse({
    bool? status,
    String? message,
    TransactionDetailsData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  TransactionDetailsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null
        ? TransactionDetailsData.fromJson(json['data'])
        : null;
  }
  bool? _status;
  String? _message;
  TransactionDetailsData? _data;
  TransactionDetailsResponse copyWith({
    bool? status,
    String? message,
    TransactionDetailsData? data,
  }) =>
      TransactionDetailsResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  TransactionDetailsData? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

/// serviceId : "AMG-SERQ-1060-2023"
/// transaction_type : "Card"
/// date_time : "2023-07-25T08:59:52.172Z"
/// paid_to : "To AMAGI"
/// amount : "$540"
/// card_number : "4242"
/// name : {"firstName":"Account","lastName":"One"}
/// user : "64ba2bcbc68af4aeb2471ad3"
/// refund : {}
/// recieved_from : "AccountOne"
/// transactionId : "pi_3NXh5uGKxeLF3YcY11bLzpDx"
/// paid_for : "Client to amagi for service"
/// status : {"id":2,"name":"Successful"}

TransactionDetailsData dataFromJson(String str) =>
    TransactionDetailsData.fromJson(json.decode(str));
String dataToJson(TransactionDetailsData data) => json.encode(data.toJson());

class TransactionDetailsData {
  TransactionDetailsData({
    String? serviceId,
    int? serviceStatus,
    String? uniqueServiceId,
    String? uniqueTransactionId,
    String? transactionType,
    String? dateTime,
    String? paidTo,
    String? amount,
    String? cardNumber,
    Name? name,
    String? user,
    Refund? refund,
    String? recievedFrom,
    String? transactionId,
    String? paidFor,
    Status? status,
  }) {
    _serviceId = serviceId;
    _serviceStatus = serviceStatus;
    _uniqueServiceId = uniqueServiceId;
    _uniqueTransactionId = uniqueTransactionId;

    _transactionType = transactionType;
    _dateTime = dateTime;
    _paidTo = paidTo;
    _amount = amount;
    _cardNumber = cardNumber;
    _name = name;
    _user = user;
    _refund = refund;
    _recievedFrom = recievedFrom;
    _transactionId = transactionId;
    _paidFor = paidFor;
    _status = status;
  }

  TransactionDetailsData.fromJson(dynamic json) {
    _serviceId = json['serviceId'];
    _serviceStatus = json['service_status'];
    _uniqueServiceId = json['unique_service_id'];
    _uniqueTransactionId = json['unique_transaction_id'];

    _transactionType = json['transaction_type'];
    _dateTime = json['date_time'];
    _paidTo = json['paid_to'];
    _amount = json['amount'];
    _cardNumber = json['card_number'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _user = json['user'];
    _refund = json['refund'] != null ? Refund.fromJson(json['refund']) : null;
    _recievedFrom = json['recieved_from'];
    _transactionId = json['transactionId'];
    _paidFor = json['paid_for'];
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
  String? _serviceId;
  int? _serviceStatus;
  String? _uniqueServiceId;
  String? _uniqueTransactionId;

  String? _transactionType;
  String? _dateTime;
  String? _paidTo;
  String? _amount;
  String? _cardNumber;
  Name? _name;
  String? _user;
  Refund? _refund;
  String? _recievedFrom;
  String? _transactionId;
  String? _paidFor;
  Status? _status;
  TransactionDetailsData copyWith({
    String? serviceId,
    int? serviceStatus,
    String? uniqueTransactionId,
    String? uniqueServiceId,
    String? transactionType,
    String? dateTime,
    String? paidTo,
    String? amount,
    String? cardNumber,
    Name? name,
    String? user,
    Refund? refund,
    String? recievedFrom,
    String? transactionId,
    String? paidFor,
    Status? status,
  }) =>
      TransactionDetailsData(
        serviceId: serviceId ?? _serviceId,
        serviceStatus: serviceStatus ?? _serviceStatus,
        uniqueServiceId: uniqueServiceId ?? _uniqueServiceId,
        uniqueTransactionId: uniqueTransactionId ?? _uniqueTransactionId,
        transactionType: transactionType ?? _transactionType,
        dateTime: dateTime ?? _dateTime,
        paidTo: paidTo ?? _paidTo,
        amount: amount ?? _amount,
        cardNumber: cardNumber ?? _cardNumber,
        name: name ?? _name,
        user: user ?? _user,
        refund: refund ?? _refund,
        recievedFrom: recievedFrom ?? _recievedFrom,
        transactionId: transactionId ?? _transactionId,
        paidFor: paidFor ?? _paidFor,
        status: status ?? _status,
      );
  String? get serviceId => _serviceId;
  int? get serviceStatus => _serviceStatus;
  String? get uniqueServiceId => _uniqueServiceId;
  String? get uniqueTransactionId => _uniqueTransactionId;

  String? get transactionType => _transactionType;
  String? get dateTime => _dateTime;
  String? get paidTo => _paidTo;
  String? get amount => _amount;
  String? get cardNumber => _cardNumber;
  Name? get name => _name;
  String? get user => _user;
  Refund? get refund => _refund;
  String? get recievedFrom => _recievedFrom;
  String? get transactionId => _transactionId;
  String? get paidFor => _paidFor;
  Status? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['serviceId'] = _serviceId;
    map['service_status'] = _serviceStatus;
    map['unique_transaction_id'] = _uniqueTransactionId;
    map['unique_service_id'] = _uniqueServiceId;

    map['transaction_type'] = _transactionType;
    map['date_time'] = _dateTime;
    map['paid_to'] = _paidTo;
    map['amount'] = _amount;
    map['card_number'] = _cardNumber;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['user'] = _user;
    if (_refund != null) {
      map['refund'] = _refund?.toJson();
    }
    map['recieved_from'] = _recievedFrom;
    map['transactionId'] = _transactionId;
    map['paid_for'] = _paidFor;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    return map;
  }
}

/// id : 2
/// name : "Successful"

Status statusFromJson(String str) => Status.fromJson(json.decode(str));
String statusToJson(Status data) => json.encode(data.toJson());

class Status {
  Status({
    num? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  Status.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;
  Status copyWith({
    num? id,
    String? name,
  }) =>
      Status(
        id: id ?? _id,
        name: name ?? _name,
      );
  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

/// firstName : "Account"
/// lastName : "One"

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());

class Name {
  Name({
    String? firstName,
    String? lastName,
  }) {
    _firstName = firstName;
    _lastName = lastName;
  }

  Name.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
  }
  String? _firstName;
  String? _lastName;
  Name copyWith({
    String? firstName,
    String? lastName,
  }) =>
      Name(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    return map;
  }
}
