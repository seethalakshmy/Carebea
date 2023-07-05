import 'dart:convert';

ServiceListResponse serviceListResponseFromJson(String str) =>
    ServiceListResponse.fromJson(json.decode(str));

String serviceListResponseToJson(ServiceListResponse data) =>
    json.encode(data.toJson());

class ServiceListResponse {
  ServiceListResponse({
    bool? status,
    String? message,
    List<ServicesModel>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ServiceListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ServicesModel.fromJson(v));
      });
    }
  }

  bool? _status;
  String? _message;
  List<ServicesModel>? _data;

  ServiceListResponse copyWith({
    bool? status,
    String? message,
    List<ServicesModel>? data,
  }) =>
      ServiceListResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );

  bool? get status => _status;

  String? get message => _message;

  List<ServicesModel>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

ServicesModel dataFromJson(String str) =>
    ServicesModel.fromJson(json.decode(str));

String dataToJson(ServicesModel data) => json.encode(data.toJson());

class ServicesModel {
  ServicesModel({
    String? serviceName,
    String? id,
    int? type,
  }) {
    _serviceName = serviceName;
    _id = id;
    _type = type;
  }

  ServicesModel.fromJson(dynamic json) {
    _serviceName = json['service_name'];
    _id = json['id'];
    _type = json['type'];
  }

  String? _serviceName;
  String? _id;
  int? _type;
  bool isSelected = false;

  ServicesModel copyWith({
    String? serviceName,
    String? id,
    int? type,
  }) =>
      ServicesModel(
        serviceName: serviceName ?? _serviceName,
        id: id ?? _id,
        type: type ?? _type,
      );

  String? get serviceName => _serviceName;

  String? get id => _id;

  int? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_name'] = _serviceName;
    map['id'] = _id;
    map['type'] = _type;
    return map;
  }
}
