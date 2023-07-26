import 'dart:convert';

/// user_id : "643c4691c22ea8c4e02f43b5"
/// services : {"tier1":["64391195796a69c27def98b6","64391195796a69c27def98b7"],"tier2":["6439124f796a69c27def98d2","6439124f796a69c27def98d3","6439124f796a69c27def98d4"]}

ServiceRequestModel serviceRequestModelFromJson(String str) =>
    ServiceRequestModel.fromJson(json.decode(str));

String serviceRequestModelToJson(ServiceRequestModel data) =>
    json.encode(data.toJson());

class ServiceRequestModel {
  ServiceRequestModel({
    String? userId,
    ServicesRequest? services,
  }) {
    _userId = userId;
    _services = services;
  }

  ServiceRequestModel.fromJson(dynamic json) {
    _userId = json['user_id'];
    _services = json['services'] != null
        ? ServicesRequest.fromJson(json['services'])
        : null;
  }

  String? _userId;
  ServicesRequest? _services;

  ServiceRequestModel copyWith({
    String? userId,
    ServicesRequest? services,
  }) =>
      ServiceRequestModel(
        userId: userId ?? _userId,
        services: services ?? _services,
      );

  String? get userId => _userId;

  ServicesRequest? get services => _services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_services != null) {
      map['services'] = _services?.toJson();
    }
    return map;
  }
}

/// tier1 : ["64391195796a69c27def98b6","64391195796a69c27def98b7"]
/// tier2 : ["6439124f796a69c27def98d2","6439124f796a69c27def98d3","6439124f796a69c27def98d4"]

ServicesRequest servicesFromJson(String str) =>
    ServicesRequest.fromJson(json.decode(str));

String servicesToJson(ServicesRequest data) => json.encode(data.toJson());

class ServicesRequest {
  ServicesRequest({
    List<String>? tier1,
    List<String>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  ServicesRequest.fromJson(dynamic json) {
    _tier1 = json['tier1'] != null ? json['tier1'].cast<String>() : [];
    _tier2 = json['tier2'] != null ? json['tier2'].cast<String>() : [];
  }

  List<String>? _tier1;
  List<String>? _tier2;

  ServicesRequest copyWith({
    List<String>? tier1,
    List<String>? tier2,
  }) =>
      ServicesRequest(
        tier1: tier1 ?? _tier1,
        tier2: tier2 ?? _tier2,
      );

  List<String>? get tier1 => _tier1;

  List<String>? get tier2 => _tier2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tier1'] = _tier1;
    map['tier2'] = _tier2;
    return map;
  }
}
