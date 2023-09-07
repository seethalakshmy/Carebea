import 'dart:convert';

SignUpResponse signUpResponseFromJson(String str) =>
    SignUpResponse.fromJson(json.decode(str));
String signUpResponseToJson(SignUpResponse data) => json.encode(data.toJson());

class SignUpResponse {
  SignUpResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  SignUpResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  SignUpResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      SignUpResponse(
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
    Name? name,
    String? mobileNumber,
    String? email,
    String? otp,
  }) {
    _userId = userId;
    _name = name;
    _mobileNumber = mobileNumber;
    _email = email;
    _otp = otp;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _mobileNumber = json['mobile_number'];
    _email = json['email'];
    _otp = json['otp'];
  }
  String? _userId;
  Name? _name;
  String? _mobileNumber;
  String? _email;
  String? _otp;
  Data copyWith({
    String? userId,
    Name? name,
    String? mobileNumber,
    String? email,
    String? otp,
  }) =>
      Data(
        userId: userId ?? _userId,
        name: name ?? _name,
        mobileNumber: mobileNumber ?? _mobileNumber,
        email: email ?? _email,
        otp: otp ?? _otp,
      );
  String? get userId => _userId;
  Name? get name => _name;
  String? get mobileNumber => _mobileNumber;
  String? get email => _email;
  String? get otp => _otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['mobile_number'] = _mobileNumber;
    map['email'] = _email;
    map['otp'] = _otp;
    return map;
  }
}

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
