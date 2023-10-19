import 'dart:convert';

ClientReportUserListResponse clientReportUserListResponseFromJson(String str) =>
    ClientReportUserListResponse.fromJson(json.decode(str));
String clientReportUserListResponseToJson(ClientReportUserListResponse data) =>
    json.encode(data.toJson());

class ClientReportUserListResponse {
  ClientReportUserListResponse({
    bool? status,
    String? message,
    List<ClientReportList>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ClientReportUserListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(ClientReportList.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<ClientReportList>? _data;
  ClientReportUserListResponse copyWith({
    bool? status,
    String? message,
    List<ClientReportList>? data,
  }) =>
      ClientReportUserListResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<ClientReportList>? get data => _data;

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

ClientReportList clientReportListFromJson(String str) =>
    ClientReportList.fromJson(json.decode(str));
String clientReportListToJson(ClientReportList data) =>
    json.encode(data.toJson());

class ClientReportList {
  ClientReportList({
    String? id,
    String? roleId,
    Name? name,
    String? email,
    String? profilePic,
    String? profilePicThumb,
    String? roleName,
  }) {
    _id = id;
    _roleId = roleId;
    _name = name;
    _email = email;
    _profilePic = profilePic;
    _profilePicThumb = profilePicThumb;
    _roleName = roleName;
  }

  ClientReportList.fromJson(dynamic json) {
    _id = json['_id'];
    _roleId = json['roleId'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _email = json['email'];
    _profilePic = json['profile_pic'];
    _profilePicThumb = json['profile_pic_thumb'];
    _roleName = json['role_name'];
  }
  String? _id;
  String? _roleId;
  Name? _name;
  String? _email;
  String? _profilePic;
  String? _profilePicThumb;
  String? _roleName;
  ClientReportList copyWith({
    String? id,
    String? roleId,
    Name? name,
    String? email,
    String? profilePic,
    String? profilePicThumb,
    String? roleName,
  }) =>
      ClientReportList(
        id: id ?? _id,
        roleId: roleId ?? _roleId,
        name: name ?? _name,
        email: email ?? _email,
        profilePic: profilePic ?? _profilePic,
        profilePicThumb: profilePicThumb ?? _profilePicThumb,
        roleName: roleName ?? _roleName,
      );
  String? get id => _id;
  String? get roleId => _roleId;
  Name? get name => _name;
  String? get email => _email;
  String? get profilePic => _profilePic;
  String? get profilePicThumb => _profilePicThumb;
  String? get roleName => _roleName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['roleId'] = _roleId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['email'] = _email;
    map['profile_pic'] = _profilePic;
    map['profile_pic_thumb'] = _profilePicThumb;
    map['role_name'] = _roleName;
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
