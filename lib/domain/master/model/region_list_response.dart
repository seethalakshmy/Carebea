import 'dart:convert';

RegionListResponse regionListResponseFromJson(String str) =>
    RegionListResponse.fromJson(json.decode(str));
String regionListResponseToJson(RegionListResponse data) =>
    json.encode(data.toJson());

class RegionListResponse {
  RegionListResponse({
    bool? status,
    String? message,
    List<RegionList>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  RegionListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(RegionList.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<RegionList>? _data;
  RegionListResponse copyWith({
    bool? status,
    String? message,
    List<RegionList>? data,
  }) =>
      RegionListResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<RegionList>? get data => _data;

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

RegionList regionListFromJson(String str) =>
    RegionList.fromJson(json.decode(str));
String regionListToJson(RegionList data) => json.encode(data.toJson());

class RegionList {
  RegionList({
    String? id,
    String? name,
    String? isoCode,
  }) {
    _id = id;
    _name = name;
    _isoCode = isoCode;
  }

  RegionList.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _isoCode = json['iso_code'];
  }
  String? _id;
  String? _name;
  String? _isoCode;
  RegionList copyWith({
    String? id,
    String? name,
    String? isoCode,
  }) =>
      RegionList(
        id: id ?? _id,
        name: name ?? _name,
        isoCode: isoCode ?? _isoCode,
      );
  String? get id => _id;
  String? get name => _name;
  String? get isoCode => _isoCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['iso_code'] = _isoCode;
    return map;
  }
}
