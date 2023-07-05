import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"user_id":"643c4691c22ea8c4e02f43b5","services":[{"tier":"tierOne","services":["64391195796a69c27def98b6","64391195796a69c27def98b7"],"_id":"643d178534947adfcc1daf13"},{"tier":"tierTwo","services":["6439124f796a69c27def98d2","6439124f796a69c27def98d3","6439124f796a69c27def98d4"],"_id":"643d178534947adfcc1daf14"}]}

ServiceResponseModel serviceResponseModelFromJson(String str) =>
    ServiceResponseModel.fromJson(json.decode(str));

String serviceResponseModelToJson(ServiceResponseModel data) =>
    json.encode(data.toJson());

class ServiceResponseModel {
  ServiceResponseModel({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ServiceResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  Data? _data;

  ServiceResponseModel copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      ServiceResponseModel(
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

/// user_id : "643c4691c22ea8c4e02f43b5"
/// services : [{"tier":"tierOne","services":["64391195796a69c27def98b6","64391195796a69c27def98b7"],"_id":"643d178534947adfcc1daf13"},{"tier":"tierTwo","services":["6439124f796a69c27def98d2","6439124f796a69c27def98d3","6439124f796a69c27def98d4"],"_id":"643d178534947adfcc1daf14"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? userId,
    List<Services>? services,
  }) {
    _userId = userId;
    _services = services;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(Services.fromJson(v));
      });
    }
  }

  String? _userId;
  List<Services>? _services;

  Data copyWith({
    String? userId,
    List<Services>? services,
  }) =>
      Data(
        userId: userId ?? _userId,
        services: services ?? _services,
      );

  String? get userId => _userId;

  List<Services>? get services => _services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// tier : "tierOne"
/// services : ["64391195796a69c27def98b6","64391195796a69c27def98b7"]
/// _id : "643d178534947adfcc1daf13"

Services servicesFromJson(String str) => Services.fromJson(json.decode(str));

String servicesToJson(Services data) => json.encode(data.toJson());

class Services {
  Services({
    String? tier,
    List<String>? services,
    String? id,
  }) {
    _tier = tier;
    _services = services;
    _id = id;
  }

  Services.fromJson(dynamic json) {
    _tier = json['tier'];
    _services = json['services'] != null ? json['services'].cast<String>() : [];
    _id = json['_id'];
  }

  String? _tier;
  List<String>? _services;
  String? _id;

  Services copyWith({
    String? tier,
    List<String>? services,
    String? id,
  }) =>
      Services(
        tier: tier ?? _tier,
        services: services ?? _services,
        id: id ?? _id,
      );

  String? get tier => _tier;

  List<String>? get services => _services;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tier'] = _tier;
    map['services'] = _services;
    map['_id'] = _id;
    return map;
  }
}
