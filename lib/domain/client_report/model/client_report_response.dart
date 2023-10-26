import 'dart:convert';

ClientReportResponse clientReportResponseFromJson(String str) =>
    ClientReportResponse.fromJson(json.decode(str));
String clientReportResponseToJson(ClientReportResponse data) =>
    json.encode(data.toJson());

class ClientReportResponse {
  ClientReportResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ClientReportResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  ClientReportResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      ClientReportResponse(
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
    num? totalChurnRate,
    List<ChurnRate>? churnRate,
  }) {
    _totalChurnRate = totalChurnRate;
    _churnRate = churnRate;
  }

  Data.fromJson(dynamic json) {
    _totalChurnRate = json['total_churn_rate'];
    if (json['churn_rate'] != null) {
      _churnRate = [];
      json['churn_rate'].forEach((v) {
        _churnRate?.add(ChurnRate.fromJson(v));
      });
    }
  }
  num? _totalChurnRate;
  List<ChurnRate>? _churnRate;
  Data copyWith({
    num? totalChurnRate,
    List<ChurnRate>? churnRate,
  }) =>
      Data(
        totalChurnRate: totalChurnRate ?? _totalChurnRate,
        churnRate: churnRate ?? _churnRate,
      );
  num? get totalChurnRate => _totalChurnRate;
  List<ChurnRate>? get churnRate => _churnRate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_churn_rate'] = _totalChurnRate;
    if (_churnRate != null) {
      map['churn_rate'] = _churnRate?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

ChurnRate churnRateFromJson(String str) => ChurnRate.fromJson(json.decode(str));
String churnRateToJson(ChurnRate data) => json.encode(data.toJson());

class ChurnRate {
  ChurnRate({
    num? date,
    num? month,
    num? year,
    num? churnRate,
  }) {
    _date = date;
    _month = month;
    _year = year;
    _churnRate = churnRate;
  }

  ChurnRate.fromJson(dynamic json) {
    _date = json['date'];
    _month = json['month'];
    _year = json['year'];
    _churnRate = json['churn_rate'];
  }
  num? _date;
  num? _month;
  num? _year;
  num? _churnRate;
  ChurnRate copyWith({
    num? date,
    num? month,
    num? year,
    num? churnRate,
  }) =>
      ChurnRate(
        date: date ?? _date,
        month: month ?? _month,
        year: year ?? _year,
        churnRate: churnRate ?? _churnRate,
      );
  num? get date => _date;
  num? get month => _month;
  num? get year => _year;
  num? get churnRate => _churnRate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['month'] = _month;
    map['year'] = _year;
    map['churn_rate'] = _churnRate;
    return map;
  }
}
