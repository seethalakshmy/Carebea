import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"_id":"64b6ad4ac7727264a1507218","question":"Reflect and respond to your audience’s needs wholly and thoroughly.","answer":"Cover a broad range of intent (transactional, informational, locational, etc.).","status":true}

FaqDetailsResponseModel faqDetailsResponseModelFromJson(String str) =>
    FaqDetailsResponseModel.fromJson(json.decode(str));
String faqDetailsResponseModelToJson(FaqDetailsResponseModel data) =>
    json.encode(data.toJson());

class FaqDetailsResponseModel {
  FaqDetailsResponseModel({
    bool? status,
    String? message,
    FaqDetailsData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  FaqDetailsResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? FaqDetailsData.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  FaqDetailsData? _data;
  FaqDetailsResponseModel copyWith({
    bool? status,
    String? message,
    FaqDetailsData? data,
  }) =>
      FaqDetailsResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  FaqDetailsData? get data => _data;

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

/// _id : "64b6ad4ac7727264a1507218"
/// question : "Reflect and respond to your audience’s needs wholly and thoroughly."
/// answer : "Cover a broad range of intent (transactional, informational, locational, etc.)."
/// status : true

FaqDetailsData dataFromJson(String str) =>
    FaqDetailsData.fromJson(json.decode(str));
String dataToJson(FaqDetailsData data) => json.encode(data.toJson());

class FaqDetailsData {
  FaqDetailsData({
    String? id,
    String? question,
    String? answer,
    bool? status,
  }) {
    _id = id;
    _question = question;
    _answer = answer;
    _status = status;
  }

  FaqDetailsData.fromJson(dynamic json) {
    _id = json['_id'];
    _question = json['question'];
    _answer = json['answer'];
    _status = json['status'];
  }
  String? _id;
  String? _question;
  String? _answer;
  bool? _status;
  FaqDetailsData copyWith({
    String? id,
    String? question,
    String? answer,
    bool? status,
  }) =>
      FaqDetailsData(
        id: id ?? _id,
        question: question ?? _question,
        answer: answer ?? _answer,
        status: status ?? _status,
      );
  String? get id => _id;
  String? get question => _question;
  String? get answer => _answer;
  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['question'] = _question;
    map['answer'] = _answer;
    map['status'] = _status;
    return map;
  }
}
