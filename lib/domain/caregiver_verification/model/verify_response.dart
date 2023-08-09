import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"message":"Your background verification is succesfully completed"}

VerifyResponse verifyResponseFromJson(String str) =>
    VerifyResponse.fromJson(json.decode(str));
String verifyResponseToJson(VerifyResponse data) => json.encode(data.toJson());

class VerifyResponse {
  VerifyResponse({
    bool? status,
    String? message,
    VerificationData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  VerifyResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data =
        json['data'] != null ? VerificationData.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  VerificationData? _data;
  VerifyResponse copyWith({
    bool? status,
    String? message,
    VerificationData? data,
  }) =>
      VerifyResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  VerificationData? get data => _data;

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

/// message : "Your background verification is succesfully completed"

VerificationData dataFromJson(String str) =>
    VerificationData.fromJson(json.decode(str));
String dataToJson(VerificationData data) => json.encode(data.toJson());

class VerificationData {
  VerificationData({
    String? message,
  }) {
    _message = message;
  }

  VerificationData.fromJson(dynamic json) {
    _message = json['message'];
  }
  String? _message;
  VerificationData copyWith({
    String? message,
  }) =>
      VerificationData(
        message: message ?? _message,
      );
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = _message;
    return map;
  }
}
