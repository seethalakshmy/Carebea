import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"resData":[{"id":"64b3ca858f36265c50fdf869","uniqueId":"64b3ca858f36265c50fdf869","name":{"firstName":"aaa","lastName":"bbb"},"email":"mytest2@mail.com","phoneNumber":"8889998887","role":"Regional Admin","status":true},{"id":"64b0ccc50b21c642e124a8e1","uniqueId":"64b0ccc50b21c642e124a8e1","name":{"firstName":"test","lastName":"admin1"},"email":"testadmin@mail.com","phoneNumber":"8889998880","role":"Regional Admin","status":true},{"id":"64a69c032961698d154944ea","uniqueId":"64a69c032961698d154944ea","name":{"firstName":"ama-gi admin","lastName":"admin"},"email":"admin@amagi.com","phoneNumber":"123-886-5468","role":"Admin","status":true},{"id":"64a3bf6e56c900ad89003830","uniqueId":"64a3bf6e56c900ad89003830","name":{"firstName":"admin cg","lastName":"cg"},"email":"admincreatedcg@mail.com","phoneNumber":"8899889988","role":"Admin","status":true},{"id":"64937fa14e3e78c136029e1d","uniqueId":"64937fa14e3e78c136029e1d","name":{"firstName":"admin","lastName":"admin"},"email":"testadmin@admin.com","phoneNumber":"123456789","role":"Admin","status":true},{"id":"648aa0df5f9e3010024d670d","uniqueId":"648aa0df5f9e3010024d670d","name":{"firstName":"Regu","lastName":"Nadh"},"email":"test.admin@seeroo.com","phoneNumber":"666-223-1111","role":"Regional Admin","status":true}],"totalCount":6,"offset":0,"actualLimit":10}

AdminGetResponse adminResponseFromJson(String str) =>
    AdminGetResponse.fromJson(json.decode(str));
String adminResponseToJson(AdminGetResponse data) => json.encode(data.toJson());

class AdminGetResponse {
  AdminGetResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  AdminGetResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  AdminGetResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      AdminGetResponse(
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

/// resData : [{"id":"64b3ca858f36265c50fdf869","uniqueId":"64b3ca858f36265c50fdf869","name":{"firstName":"aaa","lastName":"bbb"},"email":"mytest2@mail.com","phoneNumber":"8889998887","role":"Regional Admin","status":true},{"id":"64b0ccc50b21c642e124a8e1","uniqueId":"64b0ccc50b21c642e124a8e1","name":{"firstName":"test","lastName":"admin1"},"email":"testadmin@mail.com","phoneNumber":"8889998880","role":"Regional Admin","status":true},{"id":"64a69c032961698d154944ea","uniqueId":"64a69c032961698d154944ea","name":{"firstName":"ama-gi admin","lastName":"admin"},"email":"admin@amagi.com","phoneNumber":"123-886-5468","role":"Admin","status":true},{"id":"64a3bf6e56c900ad89003830","uniqueId":"64a3bf6e56c900ad89003830","name":{"firstName":"admin cg","lastName":"cg"},"email":"admincreatedcg@mail.com","phoneNumber":"8899889988","role":"Admin","status":true},{"id":"64937fa14e3e78c136029e1d","uniqueId":"64937fa14e3e78c136029e1d","name":{"firstName":"admin","lastName":"admin"},"email":"testadmin@admin.com","phoneNumber":"123456789","role":"Admin","status":true},{"id":"648aa0df5f9e3010024d670d","uniqueId":"648aa0df5f9e3010024d670d","name":{"firstName":"Regu","lastName":"Nadh"},"email":"test.admin@seeroo.com","phoneNumber":"666-223-1111","role":"Regional Admin","status":true}]
/// totalCount : 6
/// offset : 0
/// actualLimit : 10

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<ResData>? resData,
    num? totalCount,
    num? offset,
    num? actualLimit,
  }) {
    _resData = resData;
    _totalCount = totalCount;
    _offset = offset;
    _actualLimit = actualLimit;
  }

  Data.fromJson(dynamic json) {
    if (json['resData'] != null) {
      _resData = [];
      json['resData'].forEach((v) {
        _resData?.add(ResData.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    _offset = json['offset'];
    _actualLimit = json['actualLimit'];
  }
  List<ResData>? _resData;
  num? _totalCount;
  num? _offset;
  num? _actualLimit;
  Data copyWith({
    List<ResData>? resData,
    num? totalCount,
    num? offset,
    num? actualLimit,
  }) =>
      Data(
        resData: resData ?? _resData,
        totalCount: totalCount ?? _totalCount,
        offset: offset ?? _offset,
        actualLimit: actualLimit ?? _actualLimit,
      );
  List<ResData>? get resData => _resData;
  num? get totalCount => _totalCount;
  num? get offset => _offset;
  num? get actualLimit => _actualLimit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_resData != null) {
      map['resData'] = _resData?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    map['offset'] = _offset;
    map['actualLimit'] = _actualLimit;
    return map;
  }
}

/// id : "64b3ca858f36265c50fdf869"
/// uniqueId : "64b3ca858f36265c50fdf869"
/// name : {"firstName":"aaa","lastName":"bbb"}
/// email : "mytest2@mail.com"
/// phoneNumber : "8889998887"
/// role : "Regional Admin"
/// status : true

ResData resDataFromJson(String str) => ResData.fromJson(json.decode(str));
String resDataToJson(ResData data) => json.encode(data.toJson());

class ResData {
  ResData({
    String? id,
    String? uniqueId,
    Name? name,
    String? email,
    String? phoneNumber,
    String? role,
    bool? status,
  }) {
    _id = id;
    _uniqueId = uniqueId;
    _name = name;
    _email = email;
    _phoneNumber = phoneNumber;
    _role = role;
    _status = status;
  }

  ResData.fromJson(dynamic json) {
    _id = json['id'];
    _uniqueId = json['uniqueId'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _role = json['role'];
    _status = json['status'];
  }
  String? _id;
  String? _uniqueId;
  Name? _name;
  String? _email;
  String? _phoneNumber;
  String? _role;
  bool? _status;
  ResData copyWith({
    String? id,
    String? uniqueId,
    Name? name,
    String? email,
    String? phoneNumber,
    String? role,
    bool? status,
  }) =>
      ResData(
        id: id ?? _id,
        uniqueId: uniqueId ?? _uniqueId,
        name: name ?? _name,
        email: email ?? _email,
        phoneNumber: phoneNumber ?? _phoneNumber,
        role: role ?? _role,
        status: status ?? _status,
      );
  String? get id => _id;
  String? get uniqueId => _uniqueId;
  Name? get name => _name;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get role => _role;
  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['uniqueId'] = _uniqueId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['role'] = _role;
    map['status'] = _status;
    return map;
  }
}

/// firstName : "aaa"
/// lastName : "bbb"

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());

class Name {
  Name({
    String? firstName,
    String? lastName,
  }) {
    _firstName = firstName;
    _lastName = lastName;
  }

  Name.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
  }
  String? _firstName;
  String? _lastName;
  Name copyWith({
    String? firstName,
    String? lastName,
  }) =>
      Name(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    return map;
  }
}
