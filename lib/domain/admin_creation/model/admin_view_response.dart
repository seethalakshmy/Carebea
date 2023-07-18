import 'dart:convert';

AdminViewResponse adminViewResponseFromJson(String str) =>
    AdminViewResponse.fromJson(json.decode(str));
String adminViewResponseToJson(AdminViewResponse data) =>
    json.encode(data.toJson());

class AdminViewResponse {
  AdminViewResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  AdminViewResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  AdminViewResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      AdminViewResponse(
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
    String? firstName,
    String? lastName,
    String? email,
    String? roleId,
    String? phone,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _roleId = roleId;
    _phoneNumber = phone;
  }

  Data.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _roleId = json['role_id'];
    _phoneNumber = json['phone_number'];
  }
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _roleId;
  String? _phoneNumber;
  Data copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? roleId,
    String? phone,
  }) =>
      Data(
          firstName: firstName ?? _firstName,
          lastName: lastName ?? _lastName,
          email: email ?? _email,
          roleId: roleId ?? _roleId,
          phone: phone ?? _phoneNumber);

  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get roleId => _roleId;
  String? get phoneNumber => _phoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['role_id'] = _roleId;
    return map;
  }
}
