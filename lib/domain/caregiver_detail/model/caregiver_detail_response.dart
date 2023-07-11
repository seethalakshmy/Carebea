class CareGiverDetailResponse {
  bool? status;
  String? message;
  Data? data;

  CareGiverDetailResponse({this.status, this.message, this.data});

  CareGiverDetailResponse.fromJson(Map<String, dynamic> json) {
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
  String? userId;
  Name? name;
  Location? location;
  String? phone;
  String? email;
  String? ssn;
  int? serviceCompleted;
  int? cancelledRequests;
  int? totalReviewsGiven;
  int? reviewPending;
  String? rating;
  String? profileCompletion;
  List<String>? pendingDocs;
  Schedule? schedule;
  AccountDetails? accountDetails;

  Data({
    this.userId,
    this.name,
    this.location,
    this.phone,
    this.email,
    this.ssn,
    this.serviceCompleted,
    this.cancelledRequests,
    this.totalReviewsGiven,
    this.reviewPending,
    this.pendingDocs,
    this.schedule,
    this.accountDetails,
  });

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    rating = json['rating'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    phone = json['phone'];
    email = json['email'];
    ssn = json['ssn'];
    serviceCompleted = json['service_completed'];
    cancelledRequests = json['cancelled_requests'];
    totalReviewsGiven = json['total_reviews_given'];
    reviewPending = json['review_pending'];
    profileCompletion = json['profile_completion'];
    pendingDocs = json['pending_docs'].cast<String>();
    schedule =
        json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null;
    accountDetails = json['account_details'] != null
        ? AccountDetails.fromJson(json['account_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    if (location != null) {
      data['location'] = location!.toJson();
    }
    data['phone'] = phone;
    data['email'] = email;
    data['ssn'] = ssn;
    data['service_completed'] = serviceCompleted;
    data['cancelled_requests'] = cancelledRequests;
    data['total_reviews_given'] = totalReviewsGiven;
    data['review_pending'] = reviewPending;
    data['pending_docs'] = pendingDocs;
    if (schedule != null) {
      data['schedule'] = schedule!.toJson();
    }
    if (accountDetails != null) {
      data['account_details'] = accountDetails!.toJson();
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

class Location {
  String? streetName;
  String? lattitude;
  String? longitude;
  String? city;
  String? state;
  String? address;
  String? zipCode;
  bool? isDelete;
  bool? isDefault;
  String? sId;

  Location(
      {this.streetName,
      this.lattitude,
      this.longitude,
      this.city,
      this.state,
      this.address,
      this.zipCode,
      this.isDelete,
      this.isDefault,
      this.sId});

  Location.fromJson(Map<String, dynamic> json) {
    streetName = json['streetName'];
    lattitude = json['lattitude'];
    longitude = json['longitude'];
    city = json['city'];
    state = json['state'];
    address = json['address'];
    zipCode = json['zipCode'];
    isDelete = json['is_delete'];
    isDefault = json['is_default'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['streetName'] = streetName;
    data['lattitude'] = lattitude;
    data['longitude'] = longitude;
    data['city'] = city;
    data['state'] = state;
    data['address'] = address;
    data['zipCode'] = zipCode;
    data['is_delete'] = isDelete;
    data['is_default'] = isDefault;
    data['_id'] = sId;
    return data;
  }
}

class Schedule {
  List<String>? workingDays;
  List<ServiceDates>? serviceDates;
  List<String>? notAvailableDates;
  List<DiffTimeslotDates>? diffTimeslotDates;
  List<DiffLocationDates>? diffLocationDates;

  Schedule(
      {this.workingDays,
      this.serviceDates,
      this.notAvailableDates,
      this.diffTimeslotDates,
      this.diffLocationDates});

  Schedule.fromJson(Map<String, dynamic> json) {
    workingDays = json['working_days'].cast<String>();
    if (json['service_dates'] != null) {
      serviceDates = <ServiceDates>[];
      json['service_dates'].forEach((v) {
        serviceDates!.add(ServiceDates.fromJson(v));
      });
    }
    notAvailableDates = json['not_available_dates'].cast<String>();
    if (json['diff_timeslot_date'] != null) {
      diffTimeslotDates = <DiffTimeslotDates>[];
      json['diff_timeslot_date'].forEach((v) {
        diffTimeslotDates!.add(DiffTimeslotDates.fromJson(v));
      });
    }
    if (json['diff_location_dates'] != null) {
      diffLocationDates = <DiffLocationDates>[];
      json['diff_location_dates'].forEach((v) {
        diffLocationDates!.add(DiffLocationDates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['working_days'] = workingDays;
    if (serviceDates != null) {
      data['service_dates'] = serviceDates!.map((v) => v.toJson()).toList();
    }
    data['not_available_dates'] = notAvailableDates;
    if (diffTimeslotDates != null) {
      data['diff_timeslot_date'] =
          diffTimeslotDates!.map((v) => v.toJson()).toList();
    }
    if (diffLocationDates != null) {
      data['diff_location_dates'] =
          diffLocationDates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DiffTimeslotDates {
  String? date;
  String? startTime;
  String? endTime;

  DiffTimeslotDates({this.date, this.startTime, this.endTime});

  DiffTimeslotDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    startTime = json['starttime'];
    endTime = json['endtime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['start_time'] = startTime;
    data['end_time'] = endTime;
    return data;
  }
}

class ServiceDates {
  String? date;
  String? serviceId;
  String? startTime;
  String? endTime;
  String? bookingId;
  String? clientName;
  String? serviceFee;

  ServiceDates(
      {this.date,
      this.serviceId,
      this.startTime,
      this.endTime,
      this.bookingId,
      this.clientName});

  ServiceDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    serviceId = json['serviceId'];
    startTime = json['from_time'];
    endTime = json['to_time'];
    bookingId = json['bookingId'];
    clientName = json['client_name'];
    serviceFee = json['service_fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['serviceId'] = serviceId;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['bookingId'] = bookingId;
    data['userName'] = clientName;
    return data;
  }
}

class DiffLocationDates {
  String? date;
  String? addressId;

  DiffLocationDates({this.date, this.addressId});

  DiffLocationDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    addressId = json['address_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['address_id'] = addressId;
    return data;
  }
}

class AccountDetails {
  String? accNumber;
  String? routingNumber;
  String? accName;

  AccountDetails({this.accNumber, this.routingNumber, this.accName});

  AccountDetails.fromJson(Map<String, dynamic> json) {
    accNumber = json['accNumber'];
    routingNumber = json['routingNumber'];
    accName = json['accName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accNumber'] = accNumber;
    data['routingNumber'] = routingNumber;
    data['accName'] = accName;
    return data;
  }
}
