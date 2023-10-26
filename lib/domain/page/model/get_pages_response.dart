import 'dart:convert';

GetPagesResponse getPagesResponseFromJson(String str) =>
    GetPagesResponse.fromJson(json.decode(str));
String getPagesResponseToJson(GetPagesResponse data) =>
    json.encode(data.toJson());

class GetPagesResponse {
  GetPagesResponse({
    bool? status,
    String? message,
    List<PageData>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetPagesResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(PageData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<PageData>? _data;
  GetPagesResponse copyWith({
    bool? status,
    String? message,
    List<PageData>? data,
  }) =>
      GetPagesResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<PageData>? get data => _data;

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

PageData pageDataFromJson(String str) => PageData.fromJson(json.decode(str));
String pageDataToJson(PageData data) => json.encode(data.toJson());

class PageData {
  PageData({
    String? id,
    String? title,
    String? description,
    String? slug,
    bool? deletedStatus,
    bool? status,
    num? pageFor,
    String? createdAt,
    String? updatedAt,
    num? v,
  }) {
    _id = id;
    _title = title;
    _description = description;
    _slug = slug;
    _deletedStatus = deletedStatus;
    _status = status;
    _pageFor = pageFor;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
  }

  PageData.fromJson(dynamic json) {
    _id = json['_id'];
    _title = json['title'];
    _description = json['description'];
    _slug = json['slug'];
    _deletedStatus = json['deleted_status'];
    _status = json['status'];
    _pageFor = json['page_for'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _title;
  String? _description;
  String? _slug;
  bool? _deletedStatus;
  bool? _status;
  num? _pageFor;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
  PageData copyWith({
    String? id,
    String? title,
    String? description,
    String? slug,
    bool? deletedStatus,
    bool? status,
    num? pageFor,
    String? createdAt,
    String? updatedAt,
    num? v,
  }) =>
      PageData(
        id: id ?? _id,
        title: title ?? _title,
        description: description ?? _description,
        slug: slug ?? _slug,
        deletedStatus: deletedStatus ?? _deletedStatus,
        status: status ?? _status,
        pageFor: pageFor ?? _pageFor,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        v: v ?? _v,
      );
  String? get id => _id;
  String? get title => _title;
  String? get description => _description;
  String? get slug => _slug;
  bool? get deletedStatus => _deletedStatus;
  bool? get status => _status;
  num? get pageFor => _pageFor;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['slug'] = _slug;
    map['deleted_status'] = _deletedStatus;
    map['status'] = _status;
    map['page_for'] = _pageFor;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }
}
