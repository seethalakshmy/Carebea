import 'dart:convert';
/// status : true
/// message : "Success"
/// data : {"user_id":"646b02b4d95998594262807a","tier1":[{"id":"643cfbc421a11f9948e46c0c","name":"Escort to Doctor Appt."},{"id":"643cfbc421a11f9948e46c0d","name":"Prescription Pick-Up"}],"tier2":[{"id":"643cfbef8c9d330be9563d93","name":"Gait Belt Transfer"},{"id":"643cfbef8c9d330be9563d94","name":"Hoyer Lift Transfer"}]}

GetServiceResponse getServiceResponseFromJson(String str) => GetServiceResponse.fromJson(json.decode(str));
String getServiceResponseToJson(GetServiceResponse data) => json.encode(data.toJson());
class GetServiceResponse {
  GetServiceResponse({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  GetServiceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
GetServiceResponse copyWith({  bool? status,
  String? message,
  Data? data,
}) => GetServiceResponse(  status: status ?? _status,
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

/// user_id : "646b02b4d95998594262807a"
/// tier1 : [{"id":"643cfbc421a11f9948e46c0c","name":"Escort to Doctor Appt."},{"id":"643cfbc421a11f9948e46c0d","name":"Prescription Pick-Up"}]
/// tier2 : [{"id":"643cfbef8c9d330be9563d93","name":"Gait Belt Transfer"},{"id":"643cfbef8c9d330be9563d94","name":"Hoyer Lift Transfer"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? userId, 
      List<Tier1>? tier1, 
      List<Tier2>? tier2,}){
    _userId = userId;
    _tier1 = tier1;
    _tier2 = tier2;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    if (json['tier1'] != null) {
      _tier1 = [];
      json['tier1'].forEach((v) {
        _tier1?.add(Tier1.fromJson(v));
      });
    }
    if (json['tier2'] != null) {
      _tier2 = [];
      json['tier2'].forEach((v) {
        _tier2?.add(Tier2.fromJson(v));
      });
    }
  }
  String? _userId;
  List<Tier1>? _tier1;
  List<Tier2>? _tier2;
Data copyWith({  String? userId,
  List<Tier1>? tier1,
  List<Tier2>? tier2,
}) => Data(  userId: userId ?? _userId,
  tier1: tier1 ?? _tier1,
  tier2: tier2 ?? _tier2,
);
  String? get userId => _userId;
  List<Tier1>? get tier1 => _tier1;
  List<Tier2>? get tier2 => _tier2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_tier1 != null) {
      map['tier1'] = _tier1?.map((v) => v.toJson()).toList();
    }
    if (_tier2 != null) {
      map['tier2'] = _tier2?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "643cfbef8c9d330be9563d93"
/// name : "Gait Belt Transfer"

Tier2 tier2FromJson(String str) => Tier2.fromJson(json.decode(str));
String tier2ToJson(Tier2 data) => json.encode(data.toJson());
class Tier2 {
  Tier2({
      String? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Tier2.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
Tier2 copyWith({  String? id,
  String? name,
}) => Tier2(  id: id ?? _id,
  name: name ?? _name,
);
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}

/// id : "643cfbc421a11f9948e46c0c"
/// name : "Escort to Doctor Appt."

Tier1 tier1FromJson(String str) => Tier1.fromJson(json.decode(str));
String tier1ToJson(Tier1 data) => json.encode(data.toJson());
class Tier1 {
  Tier1({
      String? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Tier1.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
Tier1 copyWith({  String? id,
  String? name,
}) => Tier1(  id: id ?? _id,
  name: name ?? _name,
);
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}