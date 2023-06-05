import 'name.dart';

class Users {
  String? userId;
  Name? name;
  String? email;
  String? mobile;
  String? profile;
  bool? isActive;
  String?role;

  Users(
      {this.userId,
      this.name,
      this.email,
      this.mobile,
      this.profile,
      this.isActive,
        this.role,
      });

  Users copyWith({ String? userId,
    Name? name,
    String? email,
    String? mobile,
    String? dob,
    int? gender,
    String? profile,
    bool? onBoardingStatus,
    String?role,
  }

  ) =>
      Users(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          mobile: mobile ?? this.mobile,
          profile: profile ?? this.profile,
          isActive: onBoardingStatus ?? this.isActive,
          email: email ?? this.email,
          role: role ?? this.role);

  Users.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    email = json['email'];
    mobile = json['mobile'];
    profile = json['profile'];
    role = json['role'];
    isActive = json['on_boarding_status']??false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['email'] = email;
    data['mobile'] = mobile;
    data['profile'] = profile;
    data['role'] = role;
    data['on_boarding_status'] = isActive;
    return data;
  }
}
