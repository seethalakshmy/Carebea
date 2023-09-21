import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"result":[{"_id":"65084aa40c78c2532b009dba","role":"Test Role CA","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"65084aa40c78c2532b009dbb"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-18T13:03:32.060Z","updatedAt":"2023-09-18T13:03:32.060Z","__v":0},{"_id":"65004a4f5e46931fd0fabddd","role":"fffffffffffffff","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":false,"write":true,"delete":false,"_id":"65004a4f5e46931fd0fabdde"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T11:23:59.796Z","updatedAt":"2023-09-12T11:23:59.796Z","__v":0},{"_id":"650048b4b242262d97f0ca82","role":"Main Admin","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"650048b4b242262d97f0ca83"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":true,"write":false,"delete":false,"_id":"650048b4b242262d97f0ca84"},{"module_id":"64c9f00fd66eff2d3be2fa31","module_name":"Admin","read":true,"write":true,"delete":true,"_id":"650048b4b242262d97f0ca85"},{"module_id":"64c9f00fd66eff2d3be2fa32","module_name":"Transactions","read":true,"write":false,"delete":false,"_id":"650048b4b242262d97f0ca86"},{"module_id":"64c9f00fd66eff2d3be2fa39","module_name":"Services","read":true,"write":true,"delete":false,"_id":"650048b4b242262d97f0ca87"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T11:17:08.773Z","updatedAt":"2023-09-12T11:17:08.773Z","__v":0},{"_id":"6500323c8991fc4609959f1c","role":"rrrrrrrrrrrrrrr","permissions":[{"module_id":"64c9f00fd66eff2d3be2fa30","module_name":"Role","read":true,"write":false,"delete":false,"_id":"6500323c8991fc4609959f1d"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T09:41:16.370Z","updatedAt":"2023-09-12T09:41:16.370Z","__v":0},{"_id":"65002b09d738deba3f8ec97e","role":"test case 2","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"65002b09d738deba3f8ec97f"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":true,"write":false,"delete":false,"_id":"65002b09d738deba3f8ec980"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T09:10:33.360Z","updatedAt":"2023-09-12T09:10:33.360Z","__v":0},{"_id":"64fee2cc9a59c9aaeeebfb4b","role":"0000654465464//989465464464843+62fdfgdbgbfgdhbfgdnfgnfgnfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfg","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fee2cc9a59c9aaeeebfb4c"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:50:04.018Z","updatedAt":"2023-09-11T09:50:04.018Z","__v":0},{"_id":"64fee298f720cd06a4a085ad","role":"dddd","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fee298f720cd06a4a085ae"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":false,"write":true,"delete":false,"_id":"64fee298f720cd06a4a085af"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:49:12.910Z","updatedAt":"2023-09-11T09:49:12.910Z","__v":0},{"_id":"64fee20df720cd06a4a085a4","role":"tets111","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fee2219a59c9aaeeebfb3c"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":false,"write":true,"delete":false,"_id":"64fee2219a59c9aaeeebfb3d"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:46:53.283Z","updatedAt":"2023-09-11T09:47:13.369Z","__v":0},{"_id":"64fee0ce49fbaf06e9dc115c","role":"test11","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":false,"write":false,"delete":false,"_id":"64fee0ce49fbaf06e9dc115d"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:41:34.037Z","updatedAt":"2023-09-11T09:41:34.037Z","__v":0},{"_id":"64fed977e90228c45927faa0","role":"Admin","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fed977e90228c45927faa1"},{"module_id":"64c9f00fd66eff2d3be2fa30","module_name":"Role","read":false,"write":true,"delete":false,"_id":"64fed977e90228c45927faa2"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:10:15.527Z","updatedAt":"2023-09-11T09:10:15.527Z","__v":0}],"totalCount":60,"offset":0,"actualLimit":"10"}

GetRoleResponse getRoleResponseFromJson(String str) =>
    GetRoleResponse.fromJson(json.decode(str));

String getRoleResponseToJson(GetRoleResponse data) =>
    json.encode(data.toJson());

class GetRoleResponse {
  GetRoleResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetRoleResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  Data? _data;

  GetRoleResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      GetRoleResponse(
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

/// result : [{"_id":"65084aa40c78c2532b009dba","role":"Test Role CA","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"65084aa40c78c2532b009dbb"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-18T13:03:32.060Z","updatedAt":"2023-09-18T13:03:32.060Z","__v":0},{"_id":"65004a4f5e46931fd0fabddd","role":"fffffffffffffff","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":false,"write":true,"delete":false,"_id":"65004a4f5e46931fd0fabdde"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T11:23:59.796Z","updatedAt":"2023-09-12T11:23:59.796Z","__v":0},{"_id":"650048b4b242262d97f0ca82","role":"Main Admin","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"650048b4b242262d97f0ca83"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":true,"write":false,"delete":false,"_id":"650048b4b242262d97f0ca84"},{"module_id":"64c9f00fd66eff2d3be2fa31","module_name":"Admin","read":true,"write":true,"delete":true,"_id":"650048b4b242262d97f0ca85"},{"module_id":"64c9f00fd66eff2d3be2fa32","module_name":"Transactions","read":true,"write":false,"delete":false,"_id":"650048b4b242262d97f0ca86"},{"module_id":"64c9f00fd66eff2d3be2fa39","module_name":"Services","read":true,"write":true,"delete":false,"_id":"650048b4b242262d97f0ca87"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T11:17:08.773Z","updatedAt":"2023-09-12T11:17:08.773Z","__v":0},{"_id":"6500323c8991fc4609959f1c","role":"rrrrrrrrrrrrrrr","permissions":[{"module_id":"64c9f00fd66eff2d3be2fa30","module_name":"Role","read":true,"write":false,"delete":false,"_id":"6500323c8991fc4609959f1d"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T09:41:16.370Z","updatedAt":"2023-09-12T09:41:16.370Z","__v":0},{"_id":"65002b09d738deba3f8ec97e","role":"test case 2","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"65002b09d738deba3f8ec97f"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":true,"write":false,"delete":false,"_id":"65002b09d738deba3f8ec980"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-12T09:10:33.360Z","updatedAt":"2023-09-12T09:10:33.360Z","__v":0},{"_id":"64fee2cc9a59c9aaeeebfb4b","role":"0000654465464//989465464464843+62fdfgdbgbfgdhbfgdnfgnfgnfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfgfg","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fee2cc9a59c9aaeeebfb4c"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:50:04.018Z","updatedAt":"2023-09-11T09:50:04.018Z","__v":0},{"_id":"64fee298f720cd06a4a085ad","role":"dddd","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fee298f720cd06a4a085ae"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":false,"write":true,"delete":false,"_id":"64fee298f720cd06a4a085af"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:49:12.910Z","updatedAt":"2023-09-11T09:49:12.910Z","__v":0},{"_id":"64fee20df720cd06a4a085a4","role":"tets111","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fee2219a59c9aaeeebfb3c"},{"module_id":"6450ba97fa2b88fb3dab9168","module_name":"Client","read":false,"write":true,"delete":false,"_id":"64fee2219a59c9aaeeebfb3d"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:46:53.283Z","updatedAt":"2023-09-11T09:47:13.369Z","__v":0},{"_id":"64fee0ce49fbaf06e9dc115c","role":"test11","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":false,"write":false,"delete":false,"_id":"64fee0ce49fbaf06e9dc115d"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:41:34.037Z","updatedAt":"2023-09-11T09:41:34.037Z","__v":0},{"_id":"64fed977e90228c45927faa0","role":"Admin","permissions":[{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":false,"delete":false,"_id":"64fed977e90228c45927faa1"},{"module_id":"64c9f00fd66eff2d3be2fa30","module_name":"Role","read":false,"write":true,"delete":false,"_id":"64fed977e90228c45927faa2"}],"status":1,"deleteStatus":0,"createdAt":"2023-09-11T09:10:15.527Z","updatedAt":"2023-09-11T09:10:15.527Z","__v":0}]
/// totalCount : 60
/// offset : 0
/// actualLimit : "10"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<Result>? result,
    int? totalCount,
    int? offset,
    int? actualLimit,
  }) {
    _result = result;
    _totalCount = totalCount;
    _offset = offset;
    _actualLimit = actualLimit;
  }

  Data.fromJson(dynamic json) {
    if (json['result'] != null) {
      _result = [];
      json['result'].forEach((v) {
        _result?.add(Result.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    _offset = json['offset'];
    _actualLimit = json['actualLimit'];
  }

  List<Result>? _result;
  int? _totalCount;
  int? _offset;
  int? _actualLimit;

  Data copyWith({
    List<Result>? result,
    int? totalCount,
    int? offset,
    int? actualLimit,
  }) =>
      Data(
        result: result ?? _result,
        totalCount: totalCount ?? _totalCount,
        offset: offset ?? _offset,
        actualLimit: actualLimit ?? _actualLimit,
      );

  List<Result>? get result => _result;

  int? get totalCount => _totalCount;

  int? get offset => _offset;

  int? get actualLimit => _actualLimit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_result != null) {
      map['result'] = _result?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    map['offset'] = _offset;
    map['actualLimit'] = _actualLimit;
    return map;
  }
}

/// _id : "65084aa40c78c2532b009dba"
/// role : "Test Role CA"
/// permissions : [{"module_id":"6450ba4ffa2b88fb3dab9167","module_name":"Care Ambassador","read":true,"write":true,"delete":false,"_id":"65084aa40c78c2532b009dbb"}]
/// status : 1
/// deleteStatus : 0
/// createdAt : "2023-09-18T13:03:32.060Z"
/// updatedAt : "2023-09-18T13:03:32.060Z"
/// __v : 0

Result resultFromJson(String str) => Result.fromJson(json.decode(str));

String resultToJson(Result data) => json.encode(data.toJson());

class Result {
  Result({
    String? id,
    String? role,
    List<Permissions>? permissions,
    num? status,
    num? deleteStatus,
    String? createdAt,
    String? updatedAt,
    num? v,
  }) {
    _id = id;
    _role = role;
    _permissions = permissions;
    _status = status;
    _deleteStatus = deleteStatus;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
  }

  Result.fromJson(dynamic json) {
    _id = json['_id'];
    _role = json['role'];
    if (json['permissions'] != null) {
      _permissions = [];
      json['permissions'].forEach((v) {
        _permissions?.add(Permissions.fromJson(v));
      });
    }
    _status = json['status'];
    _deleteStatus = json['deleteStatus'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }

  String? _id;
  String? _role;
  List<Permissions>? _permissions;
  num? _status;
  num? _deleteStatus;
  String? _createdAt;
  String? _updatedAt;
  num? _v;

  Result copyWith({
    String? id,
    String? role,
    List<Permissions>? permissions,
    num? status,
    num? deleteStatus,
    String? createdAt,
    String? updatedAt,
    num? v,
  }) =>
      Result(
        id: id ?? _id,
        role: role ?? _role,
        permissions: permissions ?? _permissions,
        status: status ?? _status,
        deleteStatus: deleteStatus ?? _deleteStatus,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        v: v ?? _v,
      );

  String? get id => _id;

  String? get role => _role;

  List<Permissions>? get permissions => _permissions;

  num? get status => _status;

  num? get deleteStatus => _deleteStatus;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['role'] = _role;
    if (_permissions != null) {
      map['permissions'] = _permissions?.map((v) => v.toJson()).toList();
    }
    map['status'] = _status;
    map['deleteStatus'] = _deleteStatus;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }
}

/// module_id : "6450ba4ffa2b88fb3dab9167"
/// module_name : "Care Ambassador"
/// read : true
/// write : true
/// delete : false
/// _id : "65084aa40c78c2532b009dbb"

Permissions permissionsFromJson(String str) =>
    Permissions.fromJson(json.decode(str));

String permissionsToJson(Permissions data) => json.encode(data.toJson());

class Permissions {
  Permissions({
    String? moduleId,
    String? moduleName,
    bool? read,
    bool? write,
    bool? delete,
    String? id,
  }) {
    _moduleId = moduleId;
    _moduleName = moduleName;
    _read = read;
    _write = write;
    _delete = delete;
    _id = id;
  }

  Permissions.fromJson(dynamic json) {
    _moduleId = json['module_id'];
    _moduleName = json['module_name'];
    _read = json['read'];
    _write = json['write'];
    _delete = json['delete'];
    _id = json['_id'];
  }

  String? _moduleId;
  String? _moduleName;
  bool? _read;
  bool? _write;
  bool? _delete;
  String? _id;

  Permissions copyWith({
    String? moduleId,
    String? moduleName,
    bool? read,
    bool? write,
    bool? delete,
    String? id,
  }) =>
      Permissions(
        moduleId: moduleId ?? _moduleId,
        moduleName: moduleName ?? _moduleName,
        read: read ?? _read,
        write: write ?? _write,
        delete: delete ?? _delete,
        id: id ?? _id,
      );

  String? get moduleId => _moduleId;

  String? get moduleName => _moduleName;

  bool? get read => _read;

  bool? get write => _write;

  bool? get delete => _delete;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['module_id'] = _moduleId;
    map['module_name'] = _moduleName;
    map['read'] = _read;
    map['write'] = _write;
    map['delete'] = _delete;
    map['_id'] = _id;
    return map;
  }
}
