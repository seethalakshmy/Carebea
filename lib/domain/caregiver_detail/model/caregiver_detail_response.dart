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
  List<Services>? services;
  List<ServiceRequested>? serviceRequested;
  List<Earnings>? earnings;

  Data(
      {this.userId,
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
      this.services,
      this.serviceRequested,
      this.earnings});

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
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
    if (json['service_requested'] != null) {
      serviceRequested = <ServiceRequested>[];
      json['service_requested'].forEach((v) {
        serviceRequested!.add(ServiceRequested.fromJson(v));
      });
    }
    if (json['earnings'] != null) {
      earnings = <Earnings>[];
      json['earnings'].forEach((v) {
        earnings!.add(Earnings.fromJson(v));
      });
    }
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
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    if (serviceRequested != null) {
      data['service_requested'] =
          serviceRequested!.map((v) => v.toJson()).toList();
    }
    if (earnings != null) {
      data['earnings'] = earnings!.map((v) => v.toJson()).toList();
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
  String? userName;
  String? serviceFee;

  ServiceDates(
      {this.date,
      this.serviceId,
      this.startTime,
      this.endTime,
      this.bookingId,
      this.userName});

  ServiceDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    serviceId = json['serviceId'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    bookingId = json['bookingId'];
    userName = json['userName'];
    serviceFee = json['service_fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['date'] = date;
    data['serviceId'] = serviceId;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['bookingId'] = bookingId;
    data['userName'] = userName;
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

class Earnings {
  String? serviceId;
  String? transactionType;
  String? dateTime;
  String? amount;
  String? recievedFrom;
  String? paidFor;
  String? transactionId;
  int? status;

  Earnings(
      {this.serviceId,
      this.transactionType,
      this.dateTime,
      this.amount,
      this.recievedFrom,
      this.paidFor,
      this.transactionId,
      this.status});

  Earnings.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    transactionType = json['transaction_type'];
    dateTime = json['date_time'];
    amount = json['amount'];
    recievedFrom = json['recieved_from'];
    paidFor = json['paid_for'];
    transactionId = json['transaction_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['service_id'] = serviceId;
    data['transaction_type'] = transactionType;
    data['date_time'] = dateTime;
    data['amount'] = amount;
    data['recieved_from'] = recievedFrom;
    data['paid_for'] = paidFor;
    data['transaction_id'] = transactionId;
    data['status'] = status;
    return data;
  }
}
