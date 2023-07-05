import 'dart:convert';
/// status : true
/// message : "Success"
/// data : [{"_id":"643ceb686cba31e037a0daef","name":"Abkhaz","code":"ab"},{"_id":"643ceb686cba31e037a0daf0","name":"Afar","code":"aa"},{"_id":"643ceb686cba31e037a0daf1","name":"Afrikaans","code":"af"},{"_id":"643ceb686cba31e037a0daf2","name":"Akan","code":"ak"},{"_id":"643ceb686cba31e037a0daf3","name":"Albanian","code":"sq"},{"_id":"643ceb686cba31e037a0daf4","name":"Amharic","code":"am"},{"_id":"643ceb686cba31e037a0daf5","name":"Arabic","code":"ar"},{"_id":"643ceb686cba31e037a0daf6","name":"Aragonese","code":"an"},{"_id":"643ceb686cba31e037a0daf7","name":"Armenian","code":"hy"},{"_id":"643ceb686cba31e037a0daf8","name":"Assamese","code":"as"}]

LanguageListResponse languageListResponseFromJson(String str) => LanguageListResponse.fromJson(json.decode(str));
String languageListResponseToJson(LanguageListResponse data) => json.encode(data.toJson());
class LanguageListResponse {
  LanguageListResponse({
      bool? status, 
      String? message, 
      List<Data>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  LanguageListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Data>? _data;
LanguageListResponse copyWith({  bool? status,
  String? message,
  List<Data>? data,
}) => LanguageListResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

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

/// _id : "643ceb686cba31e037a0daef"
/// name : "Abkhaz"
/// code : "ab"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? name, 
      String? code,}){
    _id = id;
    _name = name;
    _code = code;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _code = json['code'];
  }
  String? _id;
  String? _name;
  String? _code;
Data copyWith({  String? id,
  String? name,
  String? code,
}) => Data(  id: id ?? _id,
  name: name ?? _name,
  code: code ?? _code,
);
  String? get id => _id;
  String? get name => _name;
  String? get code => _code;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    map['code'] = _code;
    return map;
  }

}