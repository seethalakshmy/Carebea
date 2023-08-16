import 'package:admin_580_tech/domain/caregivers/model/pagination.dart';

import 'users.dart';

class UserData {
  List<Users>? users;
  Pagination? pagination;

  UserData({this.users, this.pagination});

  UserData copyWith({List<Users>? users, Pagination? pagination}) => UserData(
      users: users ?? this.users, pagination: pagination ?? this.pagination);

  UserData.fromJson(Map<String, dynamic> json) {
    if (json['finalResult'] != null) {
      users = <Users>[];
      json['finalResult'].forEach((v) {
        users!.add(Users.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (users != null) {
      data['finalResult'] = users!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    return data;
  }
}
