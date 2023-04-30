class CaregiversResponse {
  bool? status;
  String? message;
  Data? data;

  CaregiversResponse({this.status, this.message, this.data});

  CaregiversResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Caregivers>? caregivers;
  Pagination? pagination;

  Data({this.caregivers, this.pagination});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['caregivers'] != null) {
      caregivers = <Caregivers>[];
      json['caregivers'].forEach((v) {
        caregivers!.add(Caregivers.fromJson(v));
      });
    }
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (caregivers != null) {
      data['caregivers'] = this.caregivers!.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Caregivers {
  String? userId;
  int?id;
  Name? name;
  String? email;
  String? mobile;
  String? dob;
  String? gender;
  String? profile;
  String? onBoardingStatus;

  Caregivers(
      {
        this.id,
        this.userId,
        this.name,
        this.email,
        this.mobile,
        this.dob,
        this.gender,
        this.profile,
        this.onBoardingStatus});

  Caregivers.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    email = json['email'];
    mobile = json['mobile'];
    dob = json['dob'];
    // gender = json['gender'];
    profile = json['profile'];
    // onBoardingStatus = json['on_boarding_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['user_id'] = this.userId;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['dob'] = this.dob;
    data['gender'] = this.gender;
    data['profile'] = this.profile;
    data['on_boarding_status'] = this.onBoardingStatus;
    return data;
  }
}

class Name {
  String? firstName;
  String? lastName;

  Name({this.firstName, this.lastName});

  Name.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    return data;
  }
}

class Pagination {
  int? limit;
  int? offset;
  int? totals;

  Pagination({this.limit, this.offset, this.totals});

  Pagination.fromJson(Map<String, dynamic> json) {
    limit = json['limit'];
    offset = json['offset'];
    totals = json['totals'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    data['totals'] = this.totals;
    return data;
  }
}
