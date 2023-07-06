import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"Qualifications":[{"type":"HHA","number":"ABC123","expiry":"2024-10-05T00:00:00.000Z","document":"BlAH","status":true,"_id":"643ced4434947adfcc1dab1d"},{"type":"BLS","number":"ABC12345678","expiry":"2024-10-05T00:00:00.000Z","document":"BlAHBLAH","status":true,"_id":"643ced4434947adfcc1dab1e"},{"type":"TB","date":"2024-12-05T00:00:00.000Z","document":"BlAH","result":"negative","status":true,"_id":"643ced4434947adfcc1dab1f"},{"type":"COVID","date":"2024-11-05T00:00:00.000Z","document":"BlAH","status":true,"_id":"643ced4434947adfcc1dab20"}],"user_id":"643c4691c22ea8c4e02f43b5"}

CommentsAndReviewResponseModel qualificationAndTestResultResponseFromJson(
        String str) =>
    CommentsAndReviewResponseModel.fromJson(json.decode(str));

String qualificationAndTestResultResponseToJson(
        CommentsAndReviewResponseModel data) =>
    json.encode(data.toJson());

class CommentsAndReviewResponseModel {
  CommentsAndReviewResponseModel({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  CommentsAndReviewResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  Data? _data;

  CommentsAndReviewResponseModel copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      CommentsAndReviewResponseModel(
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

/// Qualifications : [{"type":"HHA","number":"ABC123","expiry":"2024-10-05T00:00:00.000Z","document":"BlAH","status":true,"_id":"643ced4434947adfcc1dab1d"},{"type":"BLS","number":"ABC12345678","expiry":"2024-10-05T00:00:00.000Z","document":"BlAHBLAH","status":true,"_id":"643ced4434947adfcc1dab1e"},{"type":"TB","date":"2024-12-05T00:00:00.000Z","document":"BlAH","result":"negative","status":true,"_id":"643ced4434947adfcc1dab1f"},{"type":"COVID","date":"2024-11-05T00:00:00.000Z","document":"BlAH","status":true,"_id":"643ced4434947adfcc1dab20"}]
/// user_id : "643c4691c22ea8c4e02f43b5"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Qualifications>? qualifications,
    String? userId,
  }) {
    _qualifications = qualifications;
    _userId = userId;
  }

  Data.fromJson(dynamic json) {
    if (json['Qualifications'] != null) {
      _qualifications = [];
      json['Qualifications'].forEach((v) {
        _qualifications?.add(Qualifications.fromJson(v));
      });
    }
    _userId = json['user_id'];
  }

  List<Qualifications>? _qualifications;
  String? _userId;

  Data copyWith({
    List<Qualifications>? qualifications,
    String? userId,
  }) =>
      Data(
        qualifications: qualifications ?? _qualifications,
        userId: userId ?? _userId,
      );

  List<Qualifications>? get qualifications => _qualifications;

  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_qualifications != null) {
      map['Qualifications'] = _qualifications?.map((v) => v.toJson()).toList();
    }
    map['user_id'] = _userId;
    return map;
  }
}

/// type : "HHA"
/// number : "ABC123"
/// expiry : "2024-10-05T00:00:00.000Z"
/// document : "BlAH"
/// status : true
/// _id : "643ced4434947adfcc1dab1d"

Qualifications qualificationsFromJson(String str) =>
    Qualifications.fromJson(json.decode(str));

String qualificationsToJson(Qualifications data) => json.encode(data.toJson());

class Qualifications {
  Qualifications({
    String? type,
    String? number,
    String? expiry,
    // String? document,
    bool? status,
    String? id,
  }) {
    _type = type;
    _number = number;
    _expiry = expiry;
    //_document = document;
    _status = status;
    _id = id;
  }

  Qualifications.fromJson(dynamic json) {
    _type = json['type'];
    _number = json['number'];
    _expiry = json['expiry'];
    //  _document = json['document'];
    _status = json['status'];
    _id = json['_id'];
  }

  String? _type;
  String? _number;
  String? _expiry;
  // String? _document;
  bool? _status;
  String? _id;

  Qualifications copyWith({
    String? type,
    String? number,
    String? expiry,
    String? document,
    bool? status,
    String? id,
  }) =>
      Qualifications(
        type: type ?? _type,
        number: number ?? _number,
        expiry: expiry ?? _expiry,
        //  document: document ?? _document,
        status: status ?? _status,
        id: id ?? _id,
      );

  String? get type => _type;

  String? get number => _number;

  String? get expiry => _expiry;

  // String? get document => _document;

  bool? get status => _status;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['number'] = _number;
    map['expiry'] = _expiry;
    // map['document'] = _document;
    map['status'] = _status;
    map['_id'] = _id;
    return map;
  }
}
