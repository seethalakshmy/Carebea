import 'dart:convert';

AccountDetailsResponseModel accountDetailsResponseModelFromJson(String str) =>
    AccountDetailsResponseModel.fromJson(json.decode(str));
String accountDetailsResponseModelToJson(AccountDetailsResponseModel data) =>
    json.encode(data.toJson());

class AccountDetailsResponseModel {
  AccountDetailsResponseModel({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  AccountDetailsResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  AccountDetailsResponseModel copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      AccountDetailsResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? userId,
    String? accountNumber,
    String? routingNumber,
    String? accountHolderName,
  }) {
    _userId = userId;
    _accountNumber = accountNumber;
    _routingNumber = routingNumber;
    _accountHolderName = accountHolderName;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _accountNumber = json['account_number'];
    _routingNumber = json['routing_number'];
    _accountHolderName = json['account_holder_name'];
  }
  String? _userId;
  String? _accountNumber;
  String? _routingNumber;
  String? _accountHolderName;
  Data copyWith({
    String? userId,
    String? accountNumber,
    String? routingNumber,
    String? accountHolderName,
  }) =>
      Data(
        userId: userId ?? _userId,
        accountNumber: accountNumber ?? _accountNumber,
        routingNumber: routingNumber ?? _routingNumber,
        accountHolderName: accountHolderName ?? _accountHolderName,
      );
  String? get userId => _userId;
  String? get accountNumber => _accountNumber;
  String? get routingNumber => _routingNumber;
  String? get accountHolderName => _accountHolderName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['account_number'] = _accountNumber;
    map['routing_number'] = _routingNumber;
    map['account_holder_name'] = _accountHolderName;
    return map;
  }
}
