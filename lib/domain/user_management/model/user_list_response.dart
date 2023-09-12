import 'dart:convert';

UserListResponse userListResponseFromJson(String str) =>
    UserListResponse.fromJson(json.decode(str));
String userListResponseToJson(UserListResponse data) =>
    json.encode(data.toJson());

class UserListResponse {
  UserListResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  UserListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  UserListResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      UserListResponse(
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<FinalResult>? finalResult,
    Pagination? pagination,
  }) {
    _finalResult = finalResult;
    _pagination = pagination;
  }

  Data.fromJson(dynamic json) {
    if (json['finalResult'] != null) {
      _finalResult = [];
      json['finalResult'].forEach((v) {
        _finalResult?.add(FinalResult.fromJson(v));
      });
    }
    _pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }
  List<FinalResult>? _finalResult;
  Pagination? _pagination;
  Data copyWith({
    List<FinalResult>? finalResult,
    Pagination? pagination,
  }) =>
      Data(
        finalResult: finalResult ?? _finalResult,
        pagination: pagination ?? _pagination,
      );
  List<FinalResult>? get finalResult => _finalResult;
  Pagination? get pagination => _pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_finalResult != null) {
      map['finalResult'] = _finalResult?.map((v) => v.toJson()).toList();
    }
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    return map;
  }
}

Pagination paginationFromJson(String str) =>
    Pagination.fromJson(json.decode(str));
String paginationToJson(Pagination data) => json.encode(data.toJson());

class Pagination {
  Pagination({
    int? limit,
    int? offset,
    int? totals,
  }) {
    _limit = limit;
    _offset = offset;
    _totals = totals;
  }

  Pagination.fromJson(dynamic json) {
    _limit = json['limit'];
    _offset = json['offset'];
    _totals = json['totals'];
  }
  int? _limit;
  int? _offset;
  int? _totals;
  Pagination copyWith({
    int? limit,
    int? offset,
    int? totals,
  }) =>
      Pagination(
        limit: limit ?? _limit,
        offset: offset ?? _offset,
        totals: totals ?? _totals,
      );
  int? get limit => _limit;
  int? get offset => _offset;
  int? get totals => _totals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['limit'] = _limit;
    map['offset'] = _offset;
    map['totals'] = _totals;
    return map;
  }
}

FinalResult finalResultFromJson(String str) =>
    FinalResult.fromJson(json.decode(str));
String finalResultToJson(FinalResult data) => json.encode(data.toJson());

class FinalResult {
  FinalResult(
      {String? id,
      String? userId,
      Name? name,
      String? profile,
      String? profileThumbnail,
      String? email,
      String? mobile,
      String? role,
      bool? status}) {
    _id = id;
    _userId = userId;
    _name = name;
    _profile = profile;
    _profileThumbnail = profileThumbnail;
    _email = email;
    _mobile = mobile;
    _role = role;
    _status = status;
  }

  FinalResult.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _profile = json['profile'];
    _profileThumbnail = json['profile_thumbnail'];
    _email = json['email'];
    _mobile = json['mobile'];
    _role = json['role'];
    _status = json['status'];
  }
  String? _id;
  String? _userId;
  Name? _name;
  String? _profile;
  String? _profileThumbnail;
  String? _email;
  String? _mobile;
  String? _role;
  bool? _status;
  FinalResult copyWith(
          {String? id,
          String? userId,
          Name? name,
          String? profile,
          String? profileThumbnail,
          String? email,
          String? mobile,
          String? role,
          bool? status}) =>
      FinalResult(
          id: id ?? _id,
          userId: userId ?? _userId,
          name: name ?? _name,
          profile: profile ?? _profile,
          profileThumbnail: profileThumbnail ?? _profileThumbnail,
          email: email ?? _email,
          mobile: mobile ?? _mobile,
          role: role ?? _role,
          status: status ?? _status);
  String? get id => _id;
  String? get userId => _userId;
  Name? get name => _name;
  String? get profile => _profile;
  String? get profileThumbnail => _profileThumbnail;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get role => _role;
  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['profile'] = _profile;
    map['profile_thumbnail'] = _profileThumbnail;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['role'] = _role;
    map['status'] = _status;
    return map;
  }
}

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
    _firstName = json['first_name'];
    _lastName = json['last_name'];
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
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    return map;
  }
}
