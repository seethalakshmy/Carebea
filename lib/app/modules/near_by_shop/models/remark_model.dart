import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

RemarkModel remarkModelFromJson(String str) =>
    RemarkModel.fromJson(json.decode(str));
String remarkModelToJson(RemarkModel data) => json.encode(data.toJson());

@JsonSerializable()
class RemarkModel {
  RemarkModel({
    String? jsonrpc,
    dynamic id,
    RemarkListResult? result,
  }) {
    _jsonrpc = jsonrpc;
    _id = id;
    _result = result;
  }

  RemarkModel.fromJson(dynamic json) {
    _jsonrpc = json['jsonrpc'];
    _id = json['id'];
    _result = json['result'] != null
        ? RemarkListResult.fromJson(json['result'])
        : null;
  }
  String? _jsonrpc;
  dynamic _id;
  RemarkListResult? _result;
  RemarkModel copyWith({
    String? jsonrpc,
    dynamic id,
    RemarkListResult? result,
  }) =>
      RemarkModel(
        jsonrpc: jsonrpc ?? _jsonrpc,
        id: id ?? _id,
        result: result ?? _result,
      );
  String? get jsonrpc => _jsonrpc;
  dynamic get id => _id;
  RemarkListResult? get result => _result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['jsonrpc'] = _jsonrpc;
    map['id'] = _id;
    if (_result != null) {
      map['result'] = _result?.toJson();
    }
    return map;
  }
}

RemarkListResult resultFromJson(String str) =>
    RemarkListResult.fromJson(json.decode(str));
String resultToJson(RemarkListResult data) => json.encode(data.toJson());

class RemarkListResult {
  RemarkListResult({
    bool? status,
    String? message,
    num? commentsCount,
    List<PaymentCommentsList>? paymentCommentsList,
  }) {
    _status = status;
    _message = message;
    _commentsCount = commentsCount;
    _paymentCommentsList = paymentCommentsList;
  }

  RemarkListResult.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _commentsCount = json['comments_count'];
    if (json['payment_comments_list'] != null) {
      _paymentCommentsList = [];
      json['payment_comments_list'].forEach((v) {
        _paymentCommentsList?.add(PaymentCommentsList.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  num? _commentsCount;
  List<PaymentCommentsList>? _paymentCommentsList;
  RemarkListResult copyWith({
    bool? status,
    String? message,
    num? commentsCount,
    List<PaymentCommentsList>? paymentCommentsList,
  }) =>
      RemarkListResult(
        status: status ?? _status,
        message: message ?? _message,
        commentsCount: commentsCount ?? _commentsCount,
        paymentCommentsList: paymentCommentsList ?? _paymentCommentsList,
      );
  bool? get status => _status;
  String? get message => _message;
  num? get commentsCount => _commentsCount;
  List<PaymentCommentsList>? get paymentCommentsList => _paymentCommentsList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['comments_count'] = _commentsCount;
    if (_paymentCommentsList != null) {
      map['payment_comments_list'] =
          _paymentCommentsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

PaymentCommentsList paymentCommentsListFromJson(String str) =>
    PaymentCommentsList.fromJson(json.decode(str));
String paymentCommentsListToJson(PaymentCommentsList data) =>
    json.encode(data.toJson());

class PaymentCommentsList {
  PaymentCommentsList({
    num? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  PaymentCommentsList.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;
  PaymentCommentsList copyWith({
    num? id,
    String? name,
  }) =>
      PaymentCommentsList(
        id: id ?? _id,
        name: name ?? _name,
      );
  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}
