import 'dart:convert';

RelationshipListResponse relationshipListResponseFromJson(String str) =>
    RelationshipListResponse.fromJson(json.decode(str));
String relationshipListResponseToJson(RelationshipListResponse data) =>
    json.encode(data.toJson());

class RelationshipListResponse {
  RelationshipListResponse({
    bool? status,
    String? message,
    List<Relationship>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  RelationshipListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Relationship.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Relationship>? _data;
  RelationshipListResponse copyWith({
    bool? status,
    String? message,
    List<Relationship>? data,
  }) =>
      RelationshipListResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Relationship>? get data => _data;

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

Relationship dataFromJson(String str) =>
    Relationship.fromJson(json.decode(str));
String dataToJson(Relationship data) => json.encode(data.toJson());

class Relationship {
  Relationship({
    String? id,
    String? relationship,
  }) {
    _id = id;
    _relationship = relationship;
  }

  Relationship.fromJson(dynamic json) {
    _id = json['_id'];
    _relationship = json['relationship'];
  }
  String? _id;
  String? _relationship;
  Relationship copyWith({
    String? id,
    String? relationship,
  }) =>
      Relationship(
        id: id ?? _id,
        relationship: relationship ?? _relationship,
      );
  String? get id => _id;
  String? get relationship => _relationship;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['relationship'] = _relationship;
    return map;
  }
}
