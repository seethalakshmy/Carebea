import 'dart:convert';

/// status : true
/// message : "Success"
/// data : [{"service_name":"Wake-Up Assistance","id":"643cfbc421a11f9948e46bf4","type":1},{"service_name":"Bedtime Assistance","id":"643cfbc421a11f9948e46bf5","type":1},{"service_name":"Help w/ Dressing","id":"643cfbc421a11f9948e46bf6","type":1},{"service_name":"Going for Walks","id":"643cfbc421a11f9948e46bf7","type":1},{"service_name":"Promote/Help w/ Reading","id":"643cfbc421a11f9948e46bf8","type":1},{"service_name":"Help w/ Pet Care","id":"643cfbc421a11f9948e46bf9","type":1},{"service_name":"Promote/Help w/ Exercise","id":"643cfbc421a11f9948e46bfa","type":1},{"service_name":"Play Games/Cards/Puzzles","id":"643cfbc421a11f9948e46bfb","type":1},{"service_name":"Visit Family/Friends","id":"643cfbc421a11f9948e46bfc","type":1},{"service_name":"Bathroom Maintenance","id":"643cfbc421a11f9948e46bfd","type":1},{"service_name":"Laundry","id":"643cfbc421a11f9948e46bfe","type":1},{"service_name":"Change Sheets","id":"643cfbc421a11f9948e46bff","type":1},{"service_name":"Make Beds","id":"643cfbc421a11f9948e46c00","type":1},{"service_name":"Grocery Shopping","id":"643cfbc421a11f9948e46c01","type":1},{"service_name":"Cooking Meals","id":"643cfbc421a11f9948e46c02","type":1},{"service_name":"Preparing Snacks","id":"643cfbc421a11f9948e46c03","type":1},{"service_name":"Encourage Fluids","id":"643cfbc421a11f9948e46c04","type":1},{"service_name":"Medication Reminders","id":"643cfbc421a11f9948e46c05","type":1},{"service_name":"Kitchen Maintenance","id":"643cfbc421a11f9948e46c06","type":1},{"service_name":"Take out Trash","id":"643cfbc421a11f9948e46c07","type":1},{"service_name":"Vacuum/Sweep/Mop","id":"643cfbc421a11f9948e46c08","type":1},{"service_name":"Light Housekeeping/Upkeep","id":"643cfbc421a11f9948e46c09","type":1},{"service_name":"Errands/Transport","id":"643cfbc421a11f9948e46c0a","type":1},{"service_name":"Hospital Pick-Up","id":"643cfbc421a11f9948e46c0b","type":1},{"service_name":"Escort to Doctor Appt.","id":"643cfbc421a11f9948e46c0c","type":1},{"service_name":"Prescription Pick-Up","id":"643cfbc421a11f9948e46c0d","type":1},{"service_name":"Personal Hygiene (bathing/shower)","id":"643cfbef8c9d330be9563d8a","type":2},{"service_name":"Bed Bath","id":"643cfbef8c9d330be9563d8b","type":2},{"service_name":"Incontinence Care","id":"643cfbef8c9d330be9563d8c","type":2},{"service_name":"Change Catheter","id":"643cfbef8c9d330be9563d8d","type":2},{"service_name":"Change Depends","id":"643cfbef8c9d330be9563d8e","type":2},{"service_name":"Alzheimer's Care","id":"643cfbef8c9d330be9563d8f","type":2},{"service_name":"Memory Care","id":"643cfbef8c9d330be9563d90","type":2},{"service_name":"Parkinson's Care","id":"643cfbef8c9d330be9563d91","type":2},{"service_name":"Dementia Care","id":"643cfbef8c9d330be9563d92","type":2},{"service_name":"Gait Belt Transfer","id":"643cfbef8c9d330be9563d93","type":2},{"service_name":"Hoyer Lift Transfer","id":"643cfbef8c9d330be9563d94","type":2}]

GetServicesResponse getServicesResponseFromJson(String str) =>
    GetServicesResponse.fromJson(json.decode(str));
String getServicesResponseToJson(GetServicesResponse data) =>
    json.encode(data.toJson());

class GetServicesResponse {
  GetServicesResponse({
    bool? status,
    String? message,
    List<ServiceData>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetServicesResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ServiceData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<ServiceData>? _data;
  GetServicesResponse copyWith({
    bool? status,
    String? message,
    List<ServiceData>? data,
  }) =>
      GetServicesResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<ServiceData>? get data => _data;

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

/// service_name : "Wake-Up Assistance"
/// id : "643cfbc421a11f9948e46bf4"
/// type : 1

ServiceData dataFromJson(String str) => ServiceData.fromJson(json.decode(str));
String dataToJson(ServiceData data) => json.encode(data.toJson());

class ServiceData {
  ServiceData({
    String? serviceName,
    String? id,
    num? type,
  }) {
    _serviceName = serviceName;
    _id = id;
    _type = type;
  }

  ServiceData.fromJson(dynamic json) {
    _serviceName = json['service_name'];
    _id = json['id'];
    _type = json['type'];
  }
  String? _serviceName;
  String? _id;
  num? _type;
  ServiceData copyWith({
    String? serviceName,
    String? id,
    num? type,
  }) =>
      ServiceData(
        serviceName: serviceName ?? _serviceName,
        id: id ?? _id,
        type: type ?? _type,
      );
  String? get serviceName => _serviceName;
  String? get id => _id;
  num? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_name'] = _serviceName;
    map['id'] = _id;
    map['type'] = _type;
    return map;
  }
}
