import 'dart:convert';

/// status : true
/// message : "Success"
/// data : [{"_id":"643e659563e7736ada368134","year":"Less than 1 year"},{"_id":"643e659563e7736ada368135","year":"1-2 Years"},{"_id":"643e659563e7736ada368136","year":"2-5 Years"},{"_id":"643e659563e7736ada368137","year":"5 or more Years"}]

YearsOfExperienceResponse yearsOfExperienceResponseFromJson(String str) =>
    YearsOfExperienceResponse.fromJson(json.decode(str));
String yearsOfExperienceResponseToJson(YearsOfExperienceResponse data) =>
    json.encode(data.toJson());

class YearsOfExperienceResponse {
  YearsOfExperienceResponse({
    bool? status,
    String? message,
    List<YearData>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  YearsOfExperienceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(YearData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<YearData>? _data;
  YearsOfExperienceResponse copyWith({
    bool? status,
    String? message,
    List<YearData>? data,
  }) =>
      YearsOfExperienceResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<YearData>? get data => _data;

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

/// _id : "643e659563e7736ada368134"
/// year : "Less than 1 year"

YearData dataFromJson(String str) => YearData.fromJson(json.decode(str));
String dataToJson(YearData data) => json.encode(data.toJson());

class YearData {
  YearData({
    String? id,
    String? year,
  }) {
    _id = id;
    _year = year;
  }

  YearData.fromJson(dynamic json) {
    _id = json['_id'];
    _year = json['year'];
  }
  String? _id;
  String? _year;
  YearData copyWith({
    String? id,
    String? year,
  }) =>
      YearData(
        id: id ?? _id,
        year: year ?? _year,
      );
  String? get id => _id;
  String? get year => _year;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['year'] = _year;
    return map;
  }
}
