import '../../../presentation/caregiver_creation/models/caregiver_creation_response.dart';

class SupportTickets {
  String? userId;
  Name? name;
  String? email;
  String? mobile;
  String? profile;
  String? category;
  String? createdDate;
  String? repliedOn;
  String? title;
  String? status;
  bool? isActive;
  String? role;

  SupportTickets(
      {this.userId,
      this.name,
      this.email,
      this.mobile,
      this.profile,
      this.isActive,
      this.role,
      this.title,
      this.repliedOn,
      this.createdDate,
      this.category,
      this.status});

  SupportTickets copyWith({
    String? userId,
    Name? name,
    String? email,
    String? mobile,
    String? dob,
    int? gender,
    String? profile,
    bool? onBoardingStatus,
    String? role,
    String? category,
    String? createdDate,
    String? repliedOn,
    String? title,
    String? status,
  }) =>
      SupportTickets(
          userId: userId ?? this.userId,
          name: name ?? this.name,
          mobile: mobile ?? this.mobile,
          profile: profile ?? this.profile,
          isActive: onBoardingStatus ?? this.isActive,
          email: email ?? this.email,
          role: role ?? this.role,
          category: category ?? this.category,
          createdDate: createdDate ?? this.createdDate,
          repliedOn: repliedOn ?? this.repliedOn,
          title: title ?? this.title,
          status: status ?? this.status);

  SupportTickets.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    email = json['email'];
    mobile = json['mobile'];
    profile = json['profile'];
    role = json['role'];
    isActive = json['on_boarding_status'] ?? false;
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
