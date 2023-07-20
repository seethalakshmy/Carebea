class CareGiverServiceRequestListResponse {
  bool? status;
  String? message;
  Data? data;

  CareGiverServiceRequestListResponse({this.status, this.message, this.data});

  CareGiverServiceRequestListResponse.fromJson(Map<String, dynamic> json) {
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
  List<ServiceRequested>? serviceRequested;
  int? totalCount;

  Data({
    this.serviceRequested,
  });

  Data.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['service_requested'] != null) {
      serviceRequested = <ServiceRequested>[];
      json['service_requested'].forEach((v) {
        serviceRequested!.add(ServiceRequested.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['totalCount'];
    if (serviceRequested != null) {
      data['service_requested'] =
          serviceRequested!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ServiceRequested {
  String? id;
  String? serviceId;
  String? startDateTime;
  String? endDateTime;
  int? totalServiceFee;
  String? status;
  String? firstName;
  String? lastName;
  String? profile;
  String? fileName;
  String? servicesNeeded;

  ServiceRequested(
      {this.id,
      this.serviceId,
      this.startDateTime,
      this.endDateTime,
      this.totalServiceFee,
      this.status,
      this.firstName,
      this.lastName,
      this.profile,
      this.fileName,
      this.servicesNeeded});

  ServiceRequested.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    totalServiceFee = json['total_service_fee'];
    status = json['status'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    profile = json['profile'];
    fileName = json['file_name'];
    servicesNeeded = json['services_needed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['service_id'] = serviceId;
    data['start_date_time'] = startDateTime;
    data['end_date_time'] = endDateTime;
    data['total_service_fee'] = totalServiceFee;
    data['status'] = status;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['profile'] = profile;
    data['file_name'] = fileName;
    data['services_needed'] = servicesNeeded;
    return data;
  }
}
