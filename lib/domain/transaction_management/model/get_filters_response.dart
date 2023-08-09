import 'dart:convert';

/// status : true
/// message : "Success"
/// data : [{"filter_id":"1","title":"Past 7 Days"},{"filter_id":"2","title":"Past 3 Weeks"},{"filter_id":"3","title":"Past 3 Months"},{"filter_id":"4","title":"Past Year (2022-2023)"}]

GetFiltersResponse getFiltersResponseFromJson(String str) =>
    GetFiltersResponse.fromJson(json.decode(str));
String getFiltersResponseToJson(GetFiltersResponse data) =>
    json.encode(data.toJson());

class GetFiltersResponse {
  GetFiltersResponse({
    bool? status,
    String? message,
    List<FilterData>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetFiltersResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(FilterData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<FilterData>? _data;
  GetFiltersResponse copyWith({
    bool? status,
    String? message,
    List<FilterData>? data,
  }) =>
      GetFiltersResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<FilterData>? get data => _data;

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

/// filter_id : "1"
/// title : "Past 7 Days"

FilterData dataFromJson(String str) => FilterData.fromJson(json.decode(str));
String dataToJson(FilterData data) => json.encode(data.toJson());

class FilterData {
  FilterData({
    String? filterId,
    String? title,
  }) {
    _filterId = filterId;
    _title = title;
  }

  FilterData.fromJson(dynamic json) {
    _filterId = json['filter_id'];
    _title = json['title'];
  }
  String? _filterId;
  String? _title;
  FilterData copyWith({
    String? filterId,
    String? title,
  }) =>
      FilterData(
        filterId: filterId ?? _filterId,
        title: title ?? _title,
      );
  String? get filterId => _filterId;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['filter_id'] = _filterId;
    map['title'] = _title;
    return map;
  }
}
