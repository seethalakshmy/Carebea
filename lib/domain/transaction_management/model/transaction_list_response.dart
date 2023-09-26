import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"transactions":[{"serviceId":"AMG-SERQ-1001-2023","transactionId":"DUMMY00000000000001","transaction_type":"","date_time":"2023-07-21T12:25:59.952Z","paid_to":"NA","amount":"$0","card_number":"","name":{"firstName":"Care Three","lastName":"Ambassador"},"user":"64ba5b8b3ea1296c2d6669ba"},{"serviceId":"AMG-SERQ-1058-2023","transactionId":"pi_3NXgqkGKxeLF3YcY08ELAtfb","transaction_type":"Card","date_time":"2023-07-25T08:44:12.670Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1059-2023","transactionId":"pi_3NXguTGKxeLF3YcY0FuaafWY","transaction_type":"Card","date_time":"2023-07-25T08:48:03.313Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1060-2023","transactionId":"pi_3NXh5uGKxeLF3YcY11bLzpDx","transaction_type":"Card","date_time":"2023-07-25T08:59:52.172Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1061-2023","transactionId":"pi_3NXh6fGKxeLF3YcY0WsFjQVo","transaction_type":"Card","date_time":"2023-07-25T09:00:39.650Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1063-2023","transactionId":"pi_3NXhBRGKxeLF3YcY04e5LaCZ","transaction_type":"Card","date_time":"2023-07-25T09:05:35.595Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1064-2023","transactionId":"pi_3NXhBqGKxeLF3YcY1WiXtAhV","transaction_type":"Card","date_time":"2023-07-25T09:06:00.590Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1066-2023","transactionId":"pi_3NXhDYGKxeLF3YcY1IFjfshe","transaction_type":"Card","date_time":"2023-07-25T09:07:45.959Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1068-2023","transactionId":"pi_3NXhOWGKxeLF3YcY1CcNuXi1","transaction_type":"Card","date_time":"2023-07-25T09:19:06.617Z","paid_to":"To AMAGI","amount":"$90","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1070-2023","transactionId":"pi_3NXhavGKxeLF3YcY0axpd2sf","transaction_type":"Card","date_time":"2023-07-25T09:31:54.480Z","paid_to":"To AMAGI","amount":"$90","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"}],"totalCount":10,"offset":0,"actualLimit":10}

TransactionListResponse transactionListResponseFromJson(String str) =>
    TransactionListResponse.fromJson(json.decode(str));

String transactionListResponseToJson(TransactionListResponse data) =>
    json.encode(data.toJson());

class TransactionListResponse {
  TransactionListResponse({
    bool? status,
    String? message,
    TransactionData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  TransactionListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data =
        json['data'] != null ? TransactionData.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  TransactionData? _data;

  TransactionListResponse copyWith({
    bool? status,
    String? message,
    TransactionData? data,
  }) =>
      TransactionListResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );

  bool? get status => _status;

  String? get message => _message;

  TransactionData? get data => _data;

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

/// transactions : [{"serviceId":"AMG-SERQ-1001-2023","transactionId":"DUMMY00000000000001","transaction_type":"","date_time":"2023-07-21T12:25:59.952Z","paid_to":"NA","amount":"$0","card_number":"","name":{"firstName":"Care Three","lastName":"Ambassador"},"user":"64ba5b8b3ea1296c2d6669ba"},{"serviceId":"AMG-SERQ-1058-2023","transactionId":"pi_3NXgqkGKxeLF3YcY08ELAtfb","transaction_type":"Card","date_time":"2023-07-25T08:44:12.670Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1059-2023","transactionId":"pi_3NXguTGKxeLF3YcY0FuaafWY","transaction_type":"Card","date_time":"2023-07-25T08:48:03.313Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1060-2023","transactionId":"pi_3NXh5uGKxeLF3YcY11bLzpDx","transaction_type":"Card","date_time":"2023-07-25T08:59:52.172Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1061-2023","transactionId":"pi_3NXh6fGKxeLF3YcY0WsFjQVo","transaction_type":"Card","date_time":"2023-07-25T09:00:39.650Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1063-2023","transactionId":"pi_3NXhBRGKxeLF3YcY04e5LaCZ","transaction_type":"Card","date_time":"2023-07-25T09:05:35.595Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1064-2023","transactionId":"pi_3NXhBqGKxeLF3YcY1WiXtAhV","transaction_type":"Card","date_time":"2023-07-25T09:06:00.590Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1066-2023","transactionId":"pi_3NXhDYGKxeLF3YcY1IFjfshe","transaction_type":"Card","date_time":"2023-07-25T09:07:45.959Z","paid_to":"To AMAGI","amount":"$540","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1068-2023","transactionId":"pi_3NXhOWGKxeLF3YcY1CcNuXi1","transaction_type":"Card","date_time":"2023-07-25T09:19:06.617Z","paid_to":"To AMAGI","amount":"$90","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"},{"serviceId":"AMG-SERQ-1070-2023","transactionId":"pi_3NXhavGKxeLF3YcY0axpd2sf","transaction_type":"Card","date_time":"2023-07-25T09:31:54.480Z","paid_to":"To AMAGI","amount":"$90","card_number":"4242","name":{"firstName":"Account","lastName":"One"},"user":"64ba2bcbc68af4aeb2471ad3"}]
/// totalCount : 10
/// offset : 0
/// actualLimit : 10

TransactionData dataFromJson(String str) =>
    TransactionData.fromJson(json.decode(str));

String dataToJson(TransactionData data) => json.encode(data.toJson());

class TransactionData {
  TransactionData({
    List<Transactions>? transactions,
    num? totalCount,
    num? offset,
    num? actualLimit,
  }) {
    _transactions = transactions;
    _totalCount = totalCount;
    _offset = offset;
    _actualLimit = actualLimit;
  }

  TransactionData.fromJson(dynamic json) {
    if (json['transactions'] != null) {
      _transactions = [];
      json['transactions'].forEach((v) {
        _transactions?.add(Transactions.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    _offset = json['offset'];
    _actualLimit = json['actualLimit'];
  }

  List<Transactions>? _transactions;
  num? _totalCount;
  num? _offset;
  num? _actualLimit;

  TransactionData copyWith({
    List<Transactions>? transactions,
    num? totalCount,
    num? offset,
    num? actualLimit,
  }) =>
      TransactionData(
        transactions: transactions ?? _transactions,
        totalCount: totalCount ?? _totalCount,
        offset: offset ?? _offset,
        actualLimit: actualLimit ?? _actualLimit,
      );

  List<Transactions>? get transactions => _transactions;

  num? get totalCount => _totalCount;

  num? get offset => _offset;

  num? get actualLimit => _actualLimit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_transactions != null) {
      map['transactions'] = _transactions?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    map['offset'] = _offset;
    map['actualLimit'] = _actualLimit;
    return map;
  }
}

/// serviceId : "AMG-SERQ-1001-2023"
/// transactionId : "DUMMY00000000000001"
/// transaction_type : ""
/// date_time : "2023-07-21T12:25:59.952Z"
/// paid_to : "NA"
/// amount : "$0"
/// card_number : ""
/// name : {"firstName":"Care Three","lastName":"Ambassador"}
/// user : "64ba5b8b3ea1296c2d6669ba"

Transactions transactionsFromJson(String str) =>
    Transactions.fromJson(json.decode(str));

String transactionsToJson(Transactions data) => json.encode(data.toJson());

class Transactions {
  Transactions({
    String? serviceId,
    String? transactionId,
    String? transactionType,
    String? dateTime,
    String? paidTo,
    String? receivedFrom,
    String? paidFor,
    String? amount,
    String? cardNumber,
    Name? name,
    String? user,
    Status? status,
    String? id,
  }) {
    _serviceId = serviceId;
    _transactionId = transactionId;
    _transactionType = transactionType;
    _dateTime = dateTime;
    _paidTo = paidTo;
    _receivedFrom = receivedFrom;
    _paidFor = paidFor;
    _amount = amount;
    _cardNumber = cardNumber;
    _name = name;
    _user = user;
    _status = status;
    _id = id;
  }

  Transactions.fromJson(dynamic json) {
    _serviceId = json['service_id'];
    _transactionId = json['transaction_id'];
    _transactionType = json['transaction_type'];
    _dateTime = json['date_time'];
    _paidTo = json['paid_to'];
    _receivedFrom = json['recieved_from'];
    _paidFor = json['paid_for'];
    _amount = json['amount'];
    _cardNumber = json['card_number'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _user = json['user'];
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
    _id = json['_id'];
  }

  String? _serviceId;
  String? _transactionId;
  String? _transactionType;
  String? _dateTime;
  String? _paidTo;
  String? _receivedFrom;
  String? _paidFor;
  String? _amount;
  String? _cardNumber;
  Name? _name;
  String? _user;
  Status? _status;
  String? _id;

  Transactions copyWith({
    String? serviceId,
    String? transactionId,
    String? transactionType,
    String? dateTime,
    String? paidTo,
    String? receivedFrom,
    String? paidFor,
    String? amount,
    String? cardNumber,
    Name? name,
    String? user,
    Status? status,
    String? id,
  }) =>
      Transactions(
        serviceId: serviceId ?? _serviceId,
        transactionId: transactionId ?? _transactionId,
        transactionType: transactionType ?? _transactionType,
        dateTime: dateTime ?? _dateTime,
        paidTo: paidTo ?? _paidTo,
        receivedFrom: receivedFrom ?? _receivedFrom,
        paidFor: paidFor ?? _paidFor,
        amount: amount ?? _amount,
        cardNumber: cardNumber ?? _cardNumber,
        name: name ?? _name,
        user: user ?? _user,
        status: status ?? _status,
        id: id ?? _id,
      );

  String? get serviceId => _serviceId;

  String? get transactionId => _transactionId;

  String? get transactionType => _transactionType;

  String? get dateTime => _dateTime;

  String? get paidTo => _paidTo;
  String? get receivedFrom => _receivedFrom;
  String? get paidFor => _paidFor;

  String? get amount => _amount;

  String? get cardNumber => _cardNumber;

  Name? get name => _name;

  String? get user => _user;
  Status? get status => _status;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_id'] = _serviceId;
    map['transaction_id'] = _transactionId;
    map['transaction_type'] = _transactionType;
    map['date_time'] = _dateTime;
    map['paid_to'] = _paidTo;
    map['recieved_from'] = _receivedFrom;
    map['paid_for'] = _paidFor;
    map['amount'] = _amount;
    map['card_number'] = _cardNumber;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['user'] = _user;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    map['_id'] = _id;
    return map;
  }
}

/// firstName : "Care Three"
/// lastName : "Ambassador"

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

Status statusFromJson(String str) => Status.fromJson(json.decode(str));

String statusToJson(Name data) => json.encode(data.toJson());

class Status {
  Status({
    int? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  Status.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  int? _id;
  String? _name;

  Status copyWith({
    int? id,
    String? name,
  }) =>
      Status(
        id: id ?? _id,
        name: name ?? _name,
      );

  int? get id => _id;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}
