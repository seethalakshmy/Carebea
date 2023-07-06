import 'dart:convert';

AgreementResponseModel agreementResponseModelFromJson(String str) =>
    AgreementResponseModel.fromJson(json.decode(str));
String agreementResponseModelToJson(AgreementResponseModel data) =>
    json.encode(data.toJson());

class AgreementResponseModel {
  AgreementResponseModel({
    bool? status,
    String? message,
    dynamic data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  AgreementResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'];
  }
  bool? _status;
  String? _message;
  dynamic _data;
  AgreementResponseModel copyWith({
    bool? status,
    String? message,
    dynamic data,
  }) =>
      AgreementResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  dynamic get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['data'] = _data;
    return map;
  }
}
