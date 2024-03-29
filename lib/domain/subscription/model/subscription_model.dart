import 'dart:convert';

SubscriptionModel subscriptionModelFromJson(String str) =>
    SubscriptionModel.fromJson(json.decode(str));
String subscriptionModelToJson(SubscriptionModel data) =>
    json.encode(data.toJson());

class SubscriptionModel {
  SubscriptionModel({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  SubscriptionModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  SubscriptionModel copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      SubscriptionModel(
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
    String? id,
    String? userId,
    Name? name,
    String? profile,
    String? profileThumbnail,
    String? email,
    String? mobile,
    String? role,
    bool? status,
    bool? isSubscriptionActive,
    List<SubscriptionDetails>? subscriptionDetails,
  }) {
    _id = id;
    _userId = userId;
    _name = name;
    _profile = profile;
    _profileThumbnail = profileThumbnail;
    _email = email;
    _mobile = mobile;
    _role = role;
    _status = status;
    _isSubscriptionActive = isSubscriptionActive;
    _subscriptionDetails = subscriptionDetails;
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
    _isSubscriptionActive = json['is_subscription_active'];
    if (json['subscription_details'] != null) {
      _subscriptionDetails = [];
      json['subscription_details'].forEach((v) {
        _subscriptionDetails?.add(SubscriptionDetails.fromJson(v));
      });
    }
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
  bool? _isSubscriptionActive;
  List<SubscriptionDetails>? _subscriptionDetails;
  FinalResult copyWith({
    String? id,
    String? userId,
    Name? name,
    String? profile,
    String? profileThumbnail,
    String? email,
    String? mobile,
    String? role,
    bool? status,
    bool? isSubscriptionActive,
    List<SubscriptionDetails>? subscriptionDetails,
  }) =>
      FinalResult(
        id: id ?? _id,
        userId: userId ?? _userId,
        name: name ?? _name,
        profile: profile ?? _profile,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        email: email ?? _email,
        mobile: mobile ?? _mobile,
        role: role ?? _role,
        status: status ?? _status,
        isSubscriptionActive: isSubscriptionActive ?? _isSubscriptionActive,
        subscriptionDetails: subscriptionDetails ?? _subscriptionDetails,
      );
  String? get id => _id;
  String? get userId => _userId;
  Name? get name => _name;
  String? get profile => _profile;
  String? get profileThumbnail => _profileThumbnail;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get role => _role;
  bool? get status => _status;
  bool? get isSubscriptionActive => _isSubscriptionActive;
  List<SubscriptionDetails>? get subscriptionDetails => _subscriptionDetails;

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
    map['is_subscription_active'] = _isSubscriptionActive;
    if (_subscriptionDetails != null) {
      map['subscription_details'] =
          _subscriptionDetails?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

SubscriptionDetails subscriptionDetailsFromJson(String str) =>
    SubscriptionDetails.fromJson(json.decode(str));
String subscriptionDetailsToJson(SubscriptionDetails data) =>
    json.encode(data.toJson());

class SubscriptionDetails {
  SubscriptionDetails({
    dynamic monthlyExpiry,
    dynamic monthlyRenewalLeft,
    dynamic monthlyFee,
    String? subscriptionId,
    String? expiry,
    String? type,
    String? color,
    String? startedAt,
    bool? isRecurring,
    bool? isActive,
    dynamic lastAlertDate,
    bool? isAlertMailSend,
    bool? isAlertSmsSend,
    String? subscriptionPlanFee,
    String? id,
    bool? isPaidMontly,
    String? subscriptionCancelChargePerMonth,
    String? title,
  }) {
    _monthlyExpiry = monthlyExpiry;
    _monthlyRenewalLeft = monthlyRenewalLeft;
    _monthlyFee = monthlyFee;
    _subscriptionId = subscriptionId;
    _expiry = expiry;
    _type = type;
    _color = color;
    _startedAt = startedAt;
    _isRecurring = isRecurring;
    _isActive = isActive;
    _lastAlertDate = lastAlertDate;
    _isAlertMailSend = isAlertMailSend;
    _isAlertSmsSend = isAlertSmsSend;
    _subscriptionPlanFee = subscriptionPlanFee;
    _id = id;
    _isPaidMontly = isPaidMontly;
    _subscriptionCancelChargePerMonth = subscriptionCancelChargePerMonth;
    _title = title;
  }

  SubscriptionDetails.fromJson(dynamic json) {
    _monthlyExpiry = json['monthlyExpiry'];
    _monthlyRenewalLeft = json['monthlyRenewalLeft'];
    _monthlyFee = json['monthlyFee'];
    _subscriptionId = json['subscriptionId'];
    _expiry = json['expiry'];
    _type = json['type'];
    _color = json['color'];
    _startedAt = json['startedAt'];
    _isRecurring = json['isRecurring'];
    _isActive = json['isActive'];
    _lastAlertDate = json['lastAlertDate'];
    _isAlertMailSend = json['isAlertMailSend'];
    _isAlertSmsSend = json['isAlertSmsSend'];
    _subscriptionPlanFee = json['SubscriptionPlanFee'];
    _id = json['_id'];
    _isPaidMontly = json['isPaidMontly'];
    _subscriptionCancelChargePerMonth =
        json['subscriptionCancelChargePerMonth'];
    _title = json['title'];
  }
  dynamic _monthlyExpiry;
  dynamic _monthlyRenewalLeft;
  dynamic _monthlyFee;
  String? _subscriptionId;
  String? _expiry;
  String? _type;
  String? _color;
  String? _startedAt;
  bool? _isRecurring;
  bool? _isActive;
  dynamic _lastAlertDate;
  bool? _isAlertMailSend;
  bool? _isAlertSmsSend;
  String? _subscriptionPlanFee;
  String? _id;
  bool? _isPaidMontly;
  String? _subscriptionCancelChargePerMonth;
  String? _title;
  SubscriptionDetails copyWith({
    dynamic monthlyExpiry,
    dynamic monthlyRenewalLeft,
    dynamic monthlyFee,
    String? subscriptionId,
    String? expiry,
    String? type,
    String? color,
    String? startedAt,
    bool? isRecurring,
    bool? isActive,
    dynamic lastAlertDate,
    bool? isAlertMailSend,
    bool? isAlertSmsSend,
    String? subscriptionPlanFee,
    String? id,
    bool? isPaidMontly,
    String? subscriptionCancelChargePerMonth,
    String? title,
  }) =>
      SubscriptionDetails(
        monthlyExpiry: monthlyExpiry ?? _monthlyExpiry,
        monthlyRenewalLeft: monthlyRenewalLeft ?? _monthlyRenewalLeft,
        monthlyFee: monthlyFee ?? _monthlyFee,
        subscriptionId: subscriptionId ?? _subscriptionId,
        expiry: expiry ?? _expiry,
        type: type ?? _type,
        color: color ?? _color,
        startedAt: startedAt ?? _startedAt,
        isRecurring: isRecurring ?? _isRecurring,
        isActive: isActive ?? _isActive,
        lastAlertDate: lastAlertDate ?? _lastAlertDate,
        isAlertMailSend: isAlertMailSend ?? _isAlertMailSend,
        isAlertSmsSend: isAlertSmsSend ?? _isAlertSmsSend,
        subscriptionPlanFee: subscriptionPlanFee ?? _subscriptionPlanFee,
        id: id ?? _id,
        isPaidMontly: isPaidMontly ?? _isPaidMontly,
        subscriptionCancelChargePerMonth: subscriptionCancelChargePerMonth ??
            _subscriptionCancelChargePerMonth,
        title: title ?? _title,
      );
  dynamic get monthlyExpiry => _monthlyExpiry;
  dynamic get monthlyRenewalLeft => _monthlyRenewalLeft;
  dynamic get monthlyFee => _monthlyFee;
  String? get subscriptionId => _subscriptionId;
  String? get expiry => _expiry;
  String? get type => _type;
  String? get color => _color;
  String? get startedAt => _startedAt;
  bool? get isRecurring => _isRecurring;
  bool? get isActive => _isActive;
  dynamic get lastAlertDate => _lastAlertDate;
  bool? get isAlertMailSend => _isAlertMailSend;
  bool? get isAlertSmsSend => _isAlertSmsSend;
  String? get subscriptionPlanFee => _subscriptionPlanFee;
  String? get id => _id;
  bool? get isPaidMontly => _isPaidMontly;
  String? get subscriptionCancelChargePerMonth =>
      _subscriptionCancelChargePerMonth;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['monthlyExpiry'] = _monthlyExpiry;
    map['monthlyRenewalLeft'] = _monthlyRenewalLeft;
    map['monthlyFee'] = _monthlyFee;
    map['subscriptionId'] = _subscriptionId;
    map['expiry'] = _expiry;
    map['type'] = _type;
    map['color'] = _color;
    map['startedAt'] = _startedAt;
    map['isRecurring'] = _isRecurring;
    map['isActive'] = _isActive;
    map['lastAlertDate'] = _lastAlertDate;
    map['isAlertMailSend'] = _isAlertMailSend;
    map['isAlertSmsSend'] = _isAlertSmsSend;
    map['SubscriptionPlanFee'] = _subscriptionPlanFee;
    map['_id'] = _id;
    map['isPaidMontly'] = _isPaidMontly;
    map['subscriptionCancelChargePerMonth'] = _subscriptionCancelChargePerMonth;
    map['title'] = _title;
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
