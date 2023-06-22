import 'dart:convert';
GenderListResponse genderListResponseFromJson(String str) => GenderListResponse.fromJson(json.decode(str));
String genderListResponseToJson(GenderListResponse data) => json.encode(data.toJson());
class GenderListResponse {
  GenderListResponse({
      bool? status, 
      String? message, 
      List<Gender>? gender,}){
    _status = status;
    _message = message;
    _gender = gender;
}

  GenderListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['gender'] != null) {
      _gender = [];
      json['gender'].forEach((v) {
        _gender?.add(Gender.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Gender>? _gender;
GenderListResponse copyWith({  bool? status,
  String? message,
  List<Gender>? gender,
}) => GenderListResponse(  status: status ?? _status,
  message: message ?? _message,
  gender: gender ?? _gender,
);
  bool? get status => _status;
  String? get message => _message;
  List<Gender>? get gender => _gender;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_gender != null) {
      map['gender'] = _gender?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

Gender genderFromJson(String str) => Gender.fromJson(json.decode(str));
String genderToJson(Gender data) => json.encode(data.toJson());
class Gender {
  Gender({
      String? name, 
      int? id,}){
    _name = name;
    _id = id;
}

  Gender.fromJson(dynamic json) {
    _name = json['name'];
    _id = json['id'];
  }
  String? _name;
  int? _id;
Gender copyWith({  String? name,
  int? id,
}) => Gender(  name: name ?? _name,
  id: id ?? _id,
);
  String? get name => _name;
  int? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['id'] = _id;
    return map;
  }

}