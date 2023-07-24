import 'dart:convert';

RelationResponse relationResponseFromJson(String str) =>
    RelationResponse.fromJson(json.decode(str));
String relationResponseToJson(RelationResponse data) =>
    json.encode(data.toJson());

class RelationResponse {
  RelationResponse({
    bool? status,
    String? message,
    List<RelationList>? relationList,
  }) {
    _status = status;
    _message = message;
    _data = relationList;
  }

  RelationResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(RelationList.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<RelationList>? _data;
  RelationResponse copyWith({
    bool? status,
    String? message,
    List<RelationList>? data,
  }) =>
      RelationResponse(
        status: status ?? _status,
        message: message ?? _message,
        relationList: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<RelationList>? get data => _data;

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

RelationList dataFromJson(String str) => RelationList.fromJson(json.decode(str));
String dataToJson(RelationList data) => json.encode(data.toJson());

class RelationList {
  RelationList({
    bool? status,
    String? id,
    String? relationship,
  }) {
    _status = status;
    _id = id;
    _relationship = relationship;
  }

  RelationList.fromJson(dynamic json) {
    _status = json['status'];
    _id = json['_id'];
    _relationship = json['relationship'];
  }
  bool? _status;
  String? _id;
  String? _relationship;
  RelationList copyWith({
    bool? status,
    String? id,
    String? relationship,
  }) =>
      RelationList(
        status: status ?? _status,
        id: id ?? _id,
        relationship: relationship ?? _relationship,
      );
  bool? get status => _status;
  String? get id => _id;
  String? get relationship => _relationship;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['_id'] = _id;
    map['relationship'] = _relationship;
    return map;
  }
}
