

import 'package:admin_580_tech/domain/user_management/model/user_data.dart';

class UserResponse {
  bool? status;
  String? message;
  UserData? data;

  UserResponse({this.status, this.message, this.data});

  UserResponse copyWith({bool? status, String? message, UserData? data}) =>
      UserResponse(
          data: data ?? this.data,
          status: status ?? this.status,
          message: message ?? this.message);

  UserResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = data;
    return data;
  }
}
