import 'dart:convert';

ForgotPassword forgotPasswordFromJson(String str) =>
    ForgotPassword.fromJson(json.decode(str));
String forgotPasswordToJson(ForgotPassword data) => json.encode(data.toJson());

class ForgotPassword {
  ForgotPassword({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ForgotPassword.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  ForgotPassword copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      ForgotPassword(
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
    String? otp,
    String? userId,
  }) {
    _otp = otp;
    _userId = userId;
  }

  Data.fromJson(dynamic json) {
    _otp = json['otp'];
    _userId = json['user_id'];
  }
  String? _otp;
  String? _userId;
  Data copyWith({
    String? otp,
    String? userId,
  }) =>
      Data(
        otp: otp ?? _otp,
        userId: userId ?? _userId,
      );
  String? get otp => _otp;
  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp'] = _otp;
    map['user_id'] = _userId;
    return map;
  }
}
