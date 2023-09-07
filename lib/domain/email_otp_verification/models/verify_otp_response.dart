import 'dart:convert';

VerifyOtpResponse verifyOtpResponseFromJson(String str) =>
    VerifyOtpResponse.fromJson(json.decode(str));
String verifyOtpResponseToJson(VerifyOtpResponse data) =>
    json.encode(data.toJson());

class VerifyOtpResponse {
  VerifyOtpResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  VerifyOtpResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  VerifyOtpResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      VerifyOtpResponse(
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
    String? accessToken,
    String? refreshToken,
    String? userId,
    bool? isOnboardingCompleted,
    bool? isOtpVerified,
    int? onboardStep,
  }) {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    _userId = userId;
    _isOnboardingCompleted = isOnboardingCompleted;
    _isOtpVerified = isOtpVerified;
    _onboardStep = onboardStep;
  }

  Data.fromJson(dynamic json) {
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
    _userId = json['user_id'];
    _isOnboardingCompleted = json['is_onboarding_completed'];
    _isOtpVerified = json['is_otp_verified'];
    _onboardStep = json['onboard_step'];
  }
  String? _accessToken;
  String? _refreshToken;
  String? _userId;
  bool? _isOnboardingCompleted;
  bool? _isOtpVerified;
  int? _onboardStep;
  Data copyWith({
    String? accessToken,
    String? refreshToken,
    String? userId,
    bool? isOnboardingCompleted,
    bool? isOtpVerified,
    int? onboardStep,
  }) =>
      Data(
        accessToken: accessToken ?? _accessToken,
        refreshToken: refreshToken ?? _refreshToken,
        userId: userId ?? _userId,
        isOnboardingCompleted: isOnboardingCompleted ?? _isOnboardingCompleted,
        isOtpVerified: isOtpVerified ?? _isOtpVerified,
        onboardStep: onboardStep ?? _onboardStep,
      );
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;
  String? get userId => _userId;
  bool? get isOnboardingCompleted => _isOnboardingCompleted;
  bool? get isOtpVerified => _isOtpVerified;
  int? get onboardStep => _onboardStep;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = _accessToken;
    map['refresh_token'] = _refreshToken;
    map['user_id'] = _userId;
    map['is_onboarding_completed'] = _isOnboardingCompleted;
    map['is_otp_verified'] = _isOtpVerified;
    map['onboard_step'] = _onboardStep;
    return map;
  }
}
