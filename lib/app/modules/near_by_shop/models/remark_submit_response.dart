import 'dart:convert';

RemarkSubmitResponse remarkSubmitResponseFromJson(String str) =>
    RemarkSubmitResponse.fromJson(json.decode(str));
String remarkSubmitResponseToJson(RemarkSubmitResponse data) =>
    json.encode(data.toJson());

class RemarkSubmitResponse {
  RemarkSubmitResponse({
    String? jsonrpc,
    dynamic id,
    RemarkSubmitResult? result,
  }) {
    _jsonrpc = jsonrpc;
    _id = id;
    _result = result;
  }

  RemarkSubmitResponse.fromJson(dynamic json) {
    _jsonrpc = json['jsonrpc'];
    _id = json['id'];
    _result = json['result'] != null
        ? RemarkSubmitResult.fromJson(json['result'])
        : null;
  }
  String? _jsonrpc;
  dynamic _id;
  RemarkSubmitResult? _result;
  RemarkSubmitResponse copyWith({
    String? jsonrpc,
    dynamic id,
    RemarkSubmitResult? result,
  }) =>
      RemarkSubmitResponse(
        jsonrpc: jsonrpc ?? _jsonrpc,
        id: id ?? _id,
        result: result ?? _result,
      );
  String? get jsonrpc => _jsonrpc;
  dynamic get id => _id;
  RemarkSubmitResult? get result => _result;

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

RemarkSubmitResult resultFromJson(String str) =>
    RemarkSubmitResult.fromJson(json.decode(str));
String resultToJson(RemarkSubmitResult data) => json.encode(data.toJson());

class RemarkSubmitResult {
  RemarkSubmitResult({
    bool? status,
    String? message,
    num? paymentFollowupId,
  }) {
    _status = status;
    _message = message;
    _paymentFollowupId = paymentFollowupId;
  }

  RemarkSubmitResult.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _paymentFollowupId = json['payment_followup_id'];
  }
  bool? _status;
  String? _message;
  num? _paymentFollowupId;
  RemarkSubmitResult copyWith({
    bool? status,
    String? message,
    num? paymentFollowupId,
  }) =>
      RemarkSubmitResult(
        status: status ?? _status,
        message: message ?? _message,
        paymentFollowupId: paymentFollowupId ?? _paymentFollowupId,
      );
  bool? get status => _status;
  String? get message => _message;
  num? get paymentFollowupId => _paymentFollowupId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['payment_followup_id'] = _paymentFollowupId;
    return map;
  }
}
