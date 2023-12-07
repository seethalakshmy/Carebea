import 'dart:convert';

/// status : true
/// message : "Success"
/// data : [{"id":"64b6ad4ac7727264a1507218","question":"Reflect and respond to your audience’s needs wholly and thoroughly.","answer":"Cover a broad range of intent (transactional, informational, locational, etc.).","status":true}]

FaqListResponseModel faqListResponseModelFromJson(String str) =>
    FaqListResponseModel.fromJson(json.decode(str));
String faqListResponseModelToJson(FaqListResponseModel data) =>
    json.encode(data.toJson());

class FaqListResponseModel {
  FaqListResponseModel({
    bool? status,
    String? message,
    List<FaqListData>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  FaqListResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(FaqListData.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<FaqListData>? _data;
  FaqListResponseModel copyWith({
    bool? status,
    String? message,
    List<FaqListData>? data,
  }) =>
      FaqListResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<FaqListData>? get data => _data;

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

/// id : "64b6ad4ac7727264a1507218"
/// question : "Reflect and respond to your audience’s needs wholly and thoroughly."
/// answer : "Cover a broad range of intent (transactional, informational, locational, etc.)."
/// status : true

FaqListData dataFromJson(String str) => FaqListData.fromJson(json.decode(str));
String dataToJson(FaqListData data) => json.encode(data.toJson());

class FaqListData {
  FaqListData(
      {String? id,
      String? question,
      String? answer,
      bool? status,
      bool? forClient,
      String? updatedAt}) {
    _id = id;
    _question = question;
    _answer = answer;
    _status = status;
    _forClient = forClient;
    _updatedAt = updatedAt;
  }

  FaqListData.fromJson(dynamic json) {
    _id = json['id'];
    _question = json['question'];
    _answer = json['answer'];
    _status = json['status'];
    _forClient = json['for_client'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _question;
  String? _answer;
  bool? _status;
  bool? _forClient;
  String? _updatedAt;
  FaqListData copyWith(
          {String? id,
          String? question,
          String? answer,
          bool? status,
          bool? forClient,
          String? updatedAt}) =>
      FaqListData(
          id: id ?? _id,
          question: question ?? _question,
          answer: answer ?? _answer,
          status: status ?? _status,
          forClient: forClient ?? _forClient,
          updatedAt: updatedAt ?? _updatedAt);
  String? get id => _id;
  String? get question => _question;
  String? get answer => _answer;
  bool? get status => _status;
  bool? get forClient => _forClient;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['question'] = _question;
    map['answer'] = _answer;
    map['status'] = _status;
    map['for_client'] = _forClient;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
