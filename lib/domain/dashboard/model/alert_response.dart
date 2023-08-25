import 'dart:convert';

import 'package:flutter/foundation.dart';

AlertResponse alertResponseFromJson(String str) =>
    AlertResponse.fromJson(json.decode(str));
String alertResponseToJson(AlertResponse data) => json.encode(data.toJson());

class AlertResponse {
  AlertResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  AlertResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  AlertResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      AlertResponse(
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
    int? clientQueryCount,
    int? cgQueryCount,
    int? missedTotalService,
    int? totalClientCancelledService,
    int? totalCgCancelledService,
  }) {
    _clientQueryCount = clientQueryCount;
    _cgQueryCount = cgQueryCount;
    _missedTotalService = missedTotalService;
    _totalClientCancelledService = totalClientCancelledService;
    _totalCgCancelledService = totalCgCancelledService;
  }

  Data.fromJson(dynamic json) {
    print('inside model');

    _clientQueryCount = json['clientQueryCount'];
    if (kDebugMode) {
      print('inside model $_clientQueryCount');
    }

    _cgQueryCount = json['cgQueryCount'];
    _missedTotalService = json['missedTotalService'];
    _totalClientCancelledService = json['totalClientCancelledService'];
    _totalCgCancelledService = json['totalCgCancelledService'];
  }
  int? _clientQueryCount;
  int? _cgQueryCount;
  int? _missedTotalService;
  int? _totalClientCancelledService;
  int? _totalCgCancelledService;
  Data copyWith({
    int? clientQueryCount,
    int? cgQueryCount,
    int? missedTotalService,
    int? totalClientCancelledService,
    int? totalCgCancelledService,
  }) =>
      Data(
        clientQueryCount: clientQueryCount ?? _clientQueryCount,
        cgQueryCount: cgQueryCount ?? _cgQueryCount,
        missedTotalService: missedTotalService ?? _missedTotalService,
        totalClientCancelledService:
            totalClientCancelledService ?? _totalClientCancelledService,
        totalCgCancelledService:
            totalCgCancelledService ?? _totalCgCancelledService,
      );
  int? get clientQueryCount => _clientQueryCount;
  int? get cgQueryCount => _cgQueryCount;
  int? get missedTotalService => _missedTotalService;
  int? get totalClientCancelledService => _totalClientCancelledService;
  int? get totalCgCancelledService => _totalCgCancelledService;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['clientQueryCount'] = _clientQueryCount;
    map['cgQueryCount'] = _cgQueryCount;
    map['missedTotalService'] = _missedTotalService;
    map['totalClientCancelledService'] = _totalClientCancelledService;
    map['totalCgCancelledService'] = _totalCgCancelledService;
    return map;
  }
}
