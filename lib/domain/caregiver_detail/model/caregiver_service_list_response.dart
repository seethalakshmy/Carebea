class CareGiverServiceListResponse {
  bool? status;
  String? message;
  Data? data;

  CareGiverServiceListResponse({this.status, this.message, this.data});

  CareGiverServiceListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.toJson();
    }
    return map;
  }
}

class Data {
  List<Services>? services;
  int? totalCount;

  Data({
    this.services,
  });

  Data.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalCount'];
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  String? id;
  String? userId;
  String? startDateTime;
  String? endDateTime;
  String? totalServiceFee;
  int? status;
  String? service;
  Name? client;

  Services(
      {this.id,
      this.userId,
      this.startDateTime,
      this.endDateTime,
      this.totalServiceFee,
      this.status,
      this.service,
      this.client});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    totalServiceFee = json['total_service_fee'];
    status = json['status'];
    service = json['service'];
    client = json['client'] != null ? Name.fromJson(json['client']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['start_date_time'] = startDateTime;
    data['end_date_time'] = endDateTime;
    data['total_service_fee'] = totalServiceFee;
    data['status'] = status;
    data['service'] = service;
    if (client != null) {
      data['client'] = client!.toJson();
    }
    return data;
  }
}

class Name {
  String? firstName;
  String? lastName;
  String? profile;
  String? fileName;

  Name({this.firstName, this.lastName, this.profile, this.fileName});

  Name.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    profile = json['profile'];
    fileName = json['file_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['profile'] = profile;
    data['file_name'] = fileName;
    return data;
  }
}
