import 'dart:convert';

RemarkHistoryResponse remarkHistoryResponseFromJson(String str) =>
    RemarkHistoryResponse.fromJson(json.decode(str));
String remarkHistoryResponseToJson(RemarkHistoryResponse data) =>
    json.encode(data.toJson());

class RemarkHistoryResponse {
  RemarkHistoryResponse({
    String? jsonrpc,
    dynamic id,
    RemarkHistoryResult? result,
  }) {
    _jsonrpc = jsonrpc;
    _id = id;
    _result = result;
  }

  RemarkHistoryResponse.fromJson(dynamic json) {
    _jsonrpc = json['jsonrpc'];
    _id = json['id'];
    _result = json['result'] != null
        ? RemarkHistoryResult.fromJson(json['result'])
        : null;
  }
  String? _jsonrpc;
  dynamic _id;
  RemarkHistoryResult? _result;
  RemarkHistoryResponse copyWith({
    String? jsonrpc,
    dynamic id,
    RemarkHistoryResult? result,
  }) =>
      RemarkHistoryResponse(
        jsonrpc: jsonrpc ?? _jsonrpc,
        id: id ?? _id,
        result: result ?? _result,
      );
  String? get jsonrpc => _jsonrpc;
  dynamic get id => _id;
  RemarkHistoryResult? get result => _result;

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

RemarkHistoryResult resultFromJson(String str) =>
    RemarkHistoryResult.fromJson(json.decode(str));
String resultToJson(RemarkHistoryResult data) => json.encode(data.toJson());

class RemarkHistoryResult {
  RemarkHistoryResult({
    bool? status,
    String? message,
    int? count,
    List<PaymentFollowupsList>? paymentFollowupsList,
  }) {
    _status = status;
    _message = message;
    _count = count;
    _paymentFollowupsList = paymentFollowupsList;
  }

  RemarkHistoryResult.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _count = json['followup_count'];
    if (json['payment_followups_list'] != null) {
      _paymentFollowupsList = [];
      json['payment_followups_list'].forEach((v) {
        _paymentFollowupsList?.add(PaymentFollowupsList.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  int? _count;
  List<PaymentFollowupsList>? _paymentFollowupsList;
  RemarkHistoryResult copyWith({
    bool? status,
    String? message,
    int? count,
    List<PaymentFollowupsList>? paymentFollowupsList,
  }) =>
      RemarkHistoryResult(
        status: status ?? _status,
        message: message ?? _message,
        count: count ?? _count,
        paymentFollowupsList: paymentFollowupsList ?? _paymentFollowupsList,
      );
  bool? get status => _status;
  String? get message => _message;
  int? get count => _count;
  List<PaymentFollowupsList>? get paymentFollowupsList => _paymentFollowupsList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['followup_count'] = _count;
    if (_paymentFollowupsList != null) {
      map['payment_followups_list'] =
          _paymentFollowupsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

PaymentFollowupsList paymentFollowupsListFromJson(String str) =>
    PaymentFollowupsList.fromJson(json.decode(str));
String paymentFollowupsListToJson(PaymentFollowupsList data) =>
    json.encode(data.toJson());

class PaymentFollowupsList {
  PaymentFollowupsList({
    num? id,
    num? partnerId,
    num? commentId,
    String? commentName,
    num? createdUserId,
    String? createDate,
    String? createdUserName,
  }) {
    _id = id;
    _partnerId = partnerId;
    _commentId = commentId;
    _commentName = commentName;
    _createdUserId = createdUserId;
    _createDate = createDate;
    _createdUserName = createdUserName;
  }

  PaymentFollowupsList.fromJson(dynamic json) {
    _id = json['id'];
    _partnerId = json['partner_id'];
    _commentId = json['comment_id'];
    _commentName = json['comment_name'];
    _createdUserId = json['created_user_id'];
    _createDate = json['create_date'];
    _createdUserName = json['created_user_name'];
  }
  num? _id;
  num? _partnerId;
  num? _commentId;
  String? _commentName;
  num? _createdUserId;
  String? _createDate;
  String? _createdUserName;
  PaymentFollowupsList copyWith(
          {num? id,
          num? partnerId,
          num? commentId,
          String? commentName,
          num? createdUserId,
          String? createDate,
          String? createdUserName}) =>
      PaymentFollowupsList(
          id: id ?? _id,
          partnerId: partnerId ?? _partnerId,
          commentId: commentId ?? _commentId,
          commentName: commentName ?? _commentName,
          createdUserId: createdUserId ?? _createdUserId,
          createDate: createDate ?? _createDate,
          createdUserName: createdUserName ?? _createdUserName);
  num? get id => _id;
  num? get partnerId => _partnerId;
  num? get commentId => _commentId;
  String? get commentName => _commentName;
  num? get createdUserId => _createdUserId;
  String? get createDate => _createDate;
  String? get createdUserName => _createdUserName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['partner_id'] = _partnerId;
    map['comment_id'] = _commentId;
    map['comment_name'] = _commentName;
    map['created_user_id'] = _createdUserId;
    map['create_date'] = _createDate;
    map['created_user_name'] = _createdUserName;
    return map;
  }
}
