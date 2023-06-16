import 'name.dart';

class Caregivers {
  String? userId;
  Name? name;
  String? email;
  String? mobile;
  String? dob;
  int? gender;
  String? profile;
  bool? isActive;

  Caregivers(
      {this.userId,
      this.name,
      this.email,
      this.mobile,
      this.dob,
      this.gender,
      this.profile,
      this.isActive});

  Caregivers copyWith({ String? userId,
    Name? name,
    String? email,
    String? mobile,
    String? dob,
    int? gender,
    String? profile,
    bool?isActive
  }

  ) =>
      Caregivers(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          mobile: mobile ?? this.mobile,
          dob: dob ?? this.dob,
          profile: profile ?? this.profile,
          isActive: isActive ?? this.isActive,
          email: email ?? this.email,
          gender: gender ?? this.gender,

      );

  Caregivers.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    email = json['email'];
    mobile = json['mobile'];
    dob = json['dob'];
    gender = json['gender'];
    profile = json['profile'];
    isActive = json['is_active']??false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['email'] = email;
    data['mobile'] = mobile;
    data['dob'] = dob;
    data['gender'] = gender;
    data['profile'] = profile;
    data['on_boarding_status'] = isActive;
    return data;
  }
}
