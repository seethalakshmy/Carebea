import 'dart:convert';

ReferenceResponseModel referenceResponseModelFromJson(String str) =>
    ReferenceResponseModel.fromJson(json.decode(str));
String referenceResponseModelToJson(ReferenceResponseModel data) =>
    json.encode(data.toJson());

class ReferenceResponseModel {
  ReferenceResponseModel({
    bool? status,
    String? message,
  }) {
    _status = status;
    _message = message;
  }

  ReferenceResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
  }
  bool? _status;
  String? _message;
  ReferenceResponseModel copyWith({
    bool? status,
    String? message,
  }) =>
      ReferenceResponseModel(
        status: status ?? _status,
        message: message ?? _message,
      );
  bool? get status => _status;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    return map;
  }
}
