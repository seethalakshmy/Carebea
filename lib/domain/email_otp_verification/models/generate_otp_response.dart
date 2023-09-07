import 'dart:convert';

GenerateOtpResponse generateOtpResponseFromJson(String str) =>
    GenerateOtpResponse.fromJson(json.decode(str));
String generateOtpResponseToJson(GenerateOtpResponse data) =>
    json.encode(data.toJson());

class GenerateOtpResponse {
  GenerateOtpResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GenerateOtpResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  GenerateOtpResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      GenerateOtpResponse(
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
    String? otp,
  }) {
    _userId = userId;
    _otp = otp;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _otp = json['otp'];
  }
  String? _userId;
  String? _otp;
  Data copyWith({
    String? userId,
    String? otp,
  }) =>
      Data(
        userId: userId ?? _userId,
        otp: otp ?? _otp,
      );
  String? get userId => _userId;
  String? get otp => _otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['otp'] = _otp;
    return map;
  }
}
