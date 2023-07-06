import 'dart:convert';
DocumentListResponse documentListResponseFromJson(String str) => DocumentListResponse.fromJson(json.decode(str));
String documentListResponseToJson(DocumentListResponse data) => json.encode(data.toJson());
class DocumentListResponse {
  DocumentListResponse({
      bool? status, 
      String? message, 
      List<DocumentType>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  DocumentListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(DocumentType.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<DocumentType>? _data;
DocumentListResponse copyWith({  bool? status,
  String? message,
  List<DocumentType>? data,
}) => DocumentListResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  List<DocumentType>? get data => _data;

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

DocumentType dataFromJson(String str) => DocumentType.fromJson(json.decode(str));
String dataToJson(DocumentType data) => json.encode(data.toJson());
class DocumentType {
  DocumentType({
      String? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  DocumentType.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
DocumentType copyWith({  String? id,
  String? name,
}) => DocumentType(  id: id ?? _id,
  name: name ?? _name,
);
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    return map;
  }

}