import 'dart:convert';

BuildYourProfileResponse buildYourProfileResponseFromJson(String str) =>
    BuildYourProfileResponse.fromJson(json.decode(str));
String buildYourProfileResponseToJson(BuildYourProfileResponse data) =>
    json.encode(data.toJson());

class BuildYourProfileResponse {
  BuildYourProfileResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  BuildYourProfileResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  BuildYourProfileResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      BuildYourProfileResponse(
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
    String? userId,
    Profile? profile,
  }) {
    _userId = userId;
    _profile = profile;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _profile =
        json['profile'] != null ? Profile.fromJson(json['profile']) : null;
  }
  String? _userId;
  Profile? _profile;
  Data copyWith({
    String? userId,
    Profile? profile,
  }) =>
      Data(
        userId: userId ?? _userId,
        profile: profile ?? _profile,
      );
  String? get userId => _userId;
  Profile? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_profile != null) {
      map['profile'] = _profile?.toJson();
    }
    return map;
  }
}

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));
String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    String? about,
    String? hobbies,
    String? description,
  }) {
    _about = about;
    _hobbies = hobbies;
    _description = description;
  }

  Profile.fromJson(dynamic json) {
    _about = json['about'];
    _hobbies = json['hobbies'];
    _description = json['description'];
  }
  String? _about;
  String? _hobbies;
  String? _description;
  Profile copyWith({
    String? about,
    String? hobbies,
    String? description,
  }) =>
      Profile(
        about: about ?? _about,
        hobbies: hobbies ?? _hobbies,
        description: description ?? _description,
      );
  String? get about => _about;
  String? get hobbies => _hobbies;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['about'] = _about;
    map['hobbies'] = _hobbies;
    map['description'] = _description;
    return map;
  }
}
