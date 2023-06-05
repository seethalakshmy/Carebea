import 'name.dart';

class Caregivers {
  String? userId;
  Name? name;
  String? email;
  String? mobile;
  String? dob;
  int? gender;
  String? profile;
  bool? onBoardingStatus;

  Caregivers(
      {this.userId,
      this.name,
      this.email,
      this.mobile,
      this.dob,
      this.gender,
      this.profile,
      this.onBoardingStatus});

  Caregivers copyWith({ String? userId,
    Name? name,
    String? email,
    String? mobile,
    String? dob,
    int? gender,
    String? profile,
    bool? onBoardingStatus,}

  ) =>
      Caregivers(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          mobile: mobile ?? this.mobile,
          dob: dob ?? this.dob,
          profile: profile ?? this.profile,
          onBoardingStatus: onBoardingStatus ?? this.onBoardingStatus,
          email: email ?? this.email,
          gender: gender ?? this.gender);

  Caregivers.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    email = json['email'];
    mobile = json['mobile'];
    dob = json['dob'];
    gender = json['gender'];
    profile = json['profile'];
    onBoardingStatus = json['on_boarding_status']??false;
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
    data['on_boarding_status'] = onBoardingStatus;
    return data;
  }
}
