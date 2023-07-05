import 'dart:convert';
VerifySocialSercurityResponse verifySocialSercurityResponseFromJson(String str) => VerifySocialSercurityResponse.fromJson(json.decode(str));
String verifySocialSercurityResponseToJson(VerifySocialSercurityResponse data) => json.encode(data.toJson());
class VerifySocialSercurityResponse {
  VerifySocialSercurityResponse({
      bool? status, 
      String? message, 
      dynamic data,}){
    _status = status;
    _message = message;
    _data = data;
}

  VerifySocialSercurityResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'];
  }
  bool? _status;
  String? _message;
  dynamic _data;
VerifySocialSercurityResponse copyWith({  bool? status,
  String? message,
  dynamic data,
}) => VerifySocialSercurityResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  dynamic get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['data'] = _data;
    return map;
  }

}