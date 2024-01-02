import 'dart:convert';

UpcomingBirthdayResponse upcomingBirthdayResponseFromJson(String str) =>
    UpcomingBirthdayResponse.fromJson(json.decode(str));
String upcomingBirthdayResponseToJson(UpcomingBirthdayResponse data) =>
    json.encode(data.toJson());

class UpcomingBirthdayResponse {
  UpcomingBirthdayResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  UpcomingBirthdayResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  UpcomingBirthdayResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      UpcomingBirthdayResponse(
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
    num? limit,
    num? offset,
    num? totals,
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
  num? _limit;
  num? _offset;
  num? _totals;
  Pagination copyWith({
    num? limit,
    num? offset,
    num? totals,
  }) =>
      Pagination(
        limit: limit ?? _limit,
        offset: offset ?? _offset,
        totals: totals ?? _totals,
      );
  num? get limit => _limit;
  num? get offset => _offset;
  num? get totals => _totals;

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
  FinalResult({
    String? userId,
    Name? name,
    String? email,
    String? mobile,
    String? dob,
    num? gender,
    String? profile,
    bool? onBoardingStatus,
    bool? isVerfied,
    bool? isRejected,
    bool? isActive,
    num? verificationStatus,
  }) {
    _userId = userId;
    _name = name;
    _email = email;
    _mobile = mobile;
    _dob = dob;
    _gender = gender;
    _profile = profile;
    _onBoardingStatus = onBoardingStatus;
    _isVerfied = isVerfied;
    _isRejected = isRejected;
    _isActive = isActive;
    _verificationStatus = verificationStatus;
  }

  FinalResult.fromJson(dynamic json) {
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _email = json['email'];
    _mobile = json['mobile'];
    _dob = json['dob'];
    _gender = json['gender'];
    _profile = json['profile'];
    _onBoardingStatus = json['on_boarding_status'];
    _isVerfied = json['is_verfied'];
    _isRejected = json['is_rejected'];
    _isActive = json['is_active'];
    _verificationStatus = json['verification_status'];
  }
  String? _userId;
  Name? _name;
  String? _email;
  String? _mobile;
  String? _dob;
  num? _gender;
  String? _profile;
  bool? _onBoardingStatus;
  bool? _isVerfied;
  bool? _isRejected;
  bool? _isActive;
  num? _verificationStatus;
  FinalResult copyWith({
    String? userId,
    Name? name,
    String? email,
    String? mobile,
    String? dob,
    num? gender,
    String? profile,
    bool? onBoardingStatus,
    bool? isVerfied,
    bool? isRejected,
    bool? isActive,
    num? verificationStatus,
  }) =>
      FinalResult(
        userId: userId ?? _userId,
        name: name ?? _name,
        email: email ?? _email,
        mobile: mobile ?? _mobile,
        dob: dob ?? _dob,
        gender: gender ?? _gender,
        profile: profile ?? _profile,
        onBoardingStatus: onBoardingStatus ?? _onBoardingStatus,
        isVerfied: isVerfied ?? _isVerfied,
        isRejected: isRejected ?? _isRejected,
        isActive: isActive ?? _isActive,
        verificationStatus: verificationStatus ?? _verificationStatus,
      );
  String? get userId => _userId;
  Name? get name => _name;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get dob => _dob;
  num? get gender => _gender;
  String? get profile => _profile;
  bool? get onBoardingStatus => _onBoardingStatus;
  bool? get isVerfied => _isVerfied;
  bool? get isRejected => _isRejected;
  bool? get isActive => _isActive;
  num? get verificationStatus => _verificationStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['dob'] = _dob;
    map['gender'] = _gender;
    map['profile'] = _profile;
    map['on_boarding_status'] = _onBoardingStatus;
    map['is_verfied'] = _isVerfied;
    map['is_rejected'] = _isRejected;
    map['is_active'] = _isActive;
    map['verification_status'] = _verificationStatus;
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
