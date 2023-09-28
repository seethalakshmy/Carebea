import 'dart:convert';

/// status : true
/// message : "Success"
/// data : [{"name":"Upcoming","id":2},{"name":"Ongoing","id":3},{"name":"Completed","id":5},{"name":"Canceled","id":6}]

ServiceStatusResponseModel serviceStatusResponseModelFromJson(String str) =>
    ServiceStatusResponseModel.fromJson(json.decode(str));
String serviceStatusResponseModelToJson(ServiceStatusResponseModel data) =>
    json.encode(data.toJson());

class ServiceStatusResponseModel {
  ServiceStatusResponseModel({
    bool? status,
    String? message,
    List<StatusData>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ServiceStatusResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(StatusData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<StatusData>? _data;
  ServiceStatusResponseModel copyWith({
    bool? status,
    String? message,
    List<StatusData>? data,
  }) =>
      ServiceStatusResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<StatusData>? get data => _data;

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

/// name : "Upcoming"
/// id : 2

StatusData dataFromJson(String str) => StatusData.fromJson(json.decode(str));
String dataToJson(StatusData data) => json.encode(data.toJson());

class StatusData {
  StatusData({
    String? name,
    num? id,
  }) {
    _name = name;
    _id = id;
  }

  StatusData.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
  }
  String? _name;
  num? _id;
  StatusData copyWith({
    String? name,
    num? id,
  }) =>
      StatusData(
        name: name ?? _name,
        id: id ?? _id,
      );
  String? get name => _name;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    return map;
  }
}
