import 'dart:convert';

InactiveCountResponse inactiveCountResponseFromJson(String str) =>
    InactiveCountResponse.fromJson(json.decode(str));
String inactiveCountResponseToJson(InactiveCountResponse data) =>
    json.encode(data.toJson());

class InactiveCountResponse {
  InactiveCountResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  InactiveCountResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  InactiveCountResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      InactiveCountResponse(
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    num? totalCount,
    List<CountByMonth>? countByMonth,
  }) {
    _totalCount = totalCount;
    _countByMonth = countByMonth;
  }

  Data.fromJson(dynamic json) {
    _totalCount = json['totalCount'];
    if (json['count_by_month'] != null) {
      _countByMonth = [];
      json['count_by_month'].forEach((v) {
        _countByMonth?.add(CountByMonth.fromJson(v));
      });
    }
  }
  num? _totalCount;
  List<CountByMonth>? _countByMonth;
  Data copyWith({
    num? totalCount,
    List<CountByMonth>? countByMonth,
  }) =>
      Data(
        totalCount: totalCount ?? _totalCount,
        countByMonth: countByMonth ?? _countByMonth,
      );
  num? get totalCount => _totalCount;
  List<CountByMonth>? get countByMonth => _countByMonth;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalCount'] = _totalCount;
    if (_countByMonth != null) {
      map['count_by_month'] = _countByMonth?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

CountByMonth countByMonthFromJson(String str) =>
    CountByMonth.fromJson(json.decode(str));
String countByMonthToJson(CountByMonth data) => json.encode(data.toJson());

class CountByMonth {
  CountByMonth({
    num? date,
    num? month,
    num? year,
    num? count,
  }) {
    _date = date;
    _month = month;
    _year = year;
    _count = count;
  }

  CountByMonth.fromJson(dynamic json) {
    _date = json['date'];
    _month = json['month'];
    _year = json['year'];
    _count = json['count'];
  }
  num? _date;
  num? _month;
  num? _year;
  num? _count;
  CountByMonth copyWith({
    num? date,
    num? month,
    num? year,
    num? count,
  }) =>
      CountByMonth(
        date: date ?? _date,
        month: month ?? _month,
        year: year ?? _year,
        count: count ?? _count,
      );
  num? get date => _date;
  num? get month => _month;
  num? get year => _year;
  num? get count => _count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['month'] = _month;
    map['year'] = _year;
    map['count'] = _count;
    return map;
  }
}
