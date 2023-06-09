class CareGiverDetailResponse {
  bool? status;
  String? message;
  Data? data;

  CareGiverDetailResponse({this.status, this.message, this.data});

  CareGiverDetailResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map =   <String, dynamic>{};
    map['status'] = status;
    map['message'] =message;
    if (data != null) {
      map['data'] =data!.toJson();
    }
    return map;
  }
}

class Data {
  String? id;
  Name? name;
  String? location;
  String? phone;
  String? email;
  String? ssn;
  String? profileCompletion;
  int? serviceCompleted;
  int? canceledRequest;
  int? totalReviewsGiven;
  Schedule? schedule;
  AccountDetails? accountDetails;
  List<Services>? services;
  List<Earnings>? earnings;
  List<ServiceRequest>? serviceRequest;

  Data(
      {this.id,
        this.name,
        this.location,
        this.phone,
        this.email,
        this.ssn,
        this.profileCompletion,
        this.serviceCompleted,
        this.canceledRequest,
        this.totalReviewsGiven,
        this.schedule,
        this.accountDetails,
        this.services,
        this.earnings,
        this.serviceRequest});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'] != null ?  Name.fromJson(json['name']) : null;
    location = json['location'];
    phone = json['phone'];
    email = json['email'];
    ssn = json['ssn'];
    profileCompletion = json['profile_completion'];
    serviceCompleted = json['service_completed'];
    canceledRequest = json['canceled_request'];
    totalReviewsGiven = json['total_reviews_given'];
    schedule = json['schedule'] != null
        ?  Schedule.fromJson(json['schedule'])
        : null;
    accountDetails = json['account_details'] != null
        ?  AccountDetails.fromJson(json['account_details'])
        : null;
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add( Services.fromJson(v));
      });
    }
    if (json['earnings'] != null) {
      earnings = <Earnings>[];
      json['earnings'].forEach((v) {
        earnings!.add( Earnings.fromJson(v));
      });
    }
    if (json['service_request'] != null) {
      serviceRequest = <ServiceRequest>[];
      json['service_request'].forEach((v) {
        serviceRequest!.add( ServiceRequest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['id'] =id;
    if (name != null) {
      data['name'] =name!.toJson();
    }
    data['location'] =location;
    data['phone'] =phone;
    data['email'] =email;
    data['ssn'] =ssn;
    data['profile_completion'] =profileCompletion;
    data['service_completed'] =serviceCompleted;
    data['canceled_request'] =canceledRequest;
    data['total_reviews_given'] =totalReviewsGiven;
    if (schedule != null) {
      data['schedule'] =schedule!.toJson();
    }
    if (accountDetails != null) {
      data['account_details'] =accountDetails!.toJson();
    }
    if (services != null) {
      data['services'] =services!.map((v) => v.toJson()).toList();
    }
    if (earnings != null) {
      data['earnings'] =earnings!.map((v) => v.toJson()).toList();
    }
    if (serviceRequest != null) {
      data['service_request'] =
         serviceRequest!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Name {
  String? firstName;
  String? lastName;
  String? profile;

  Name({this.firstName,lastName,profile});

  Name.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['first_name'] =firstName;
    data['last_name'] =lastName;
    data['profile'] =profile;
    return data;
  }
}

class Schedule {
  List<String>? workingDays;
  String? fromTime;
  String? toTime;
  List<ServiceDates>? serviceDates;
  List<String>? notAvailableDates;
  List<DiffLocationDates>? diffLocationDates;
  List<DiffTimeslotDates>? diffTimeslotDates;

  Schedule(
      {this.workingDays,
        this.fromTime,
        this.toTime,
        this.serviceDates,
        this.notAvailableDates,
        this.diffLocationDates,
        this.diffTimeslotDates});

  Schedule.fromJson(Map<String, dynamic> json) {
    workingDays = json['working_days'].cast<String>();
    fromTime = json['from_time'];
    toTime = json['to_time'];
    if (json['service_dates'] != null) {
      serviceDates = <ServiceDates>[];
      json['service_dates'].forEach((v) {
        serviceDates!.add( ServiceDates.fromJson(v));
      });
    }
    notAvailableDates = json['not_available_dates'].cast<String>();
    if (json['diff_location_dates'] != null) {
      diffLocationDates = <DiffLocationDates>[];
      json['diff_location_dates'].forEach((v) {
        diffLocationDates!.add( DiffLocationDates.fromJson(v));
      });
    }
    if (json['diff_timeslot_dates'] != null) {
      diffTimeslotDates = <DiffTimeslotDates>[];
      json['diff_timeslot_dates'].forEach((v) {
        diffTimeslotDates!.add( DiffTimeslotDates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['working_days'] =workingDays;
    data['from_time'] =fromTime;
    data['to_time'] =toTime;
    if (serviceDates != null) {
      data['service_dates'] =
         serviceDates!.map((v) => v.toJson()).toList();
    }
    data['not_available_dates'] =notAvailableDates;
    if (diffLocationDates != null) {
      data['diff_location_dates'] =
         diffLocationDates!.map((v) => v.toJson()).toList();
    }
    if (diffTimeslotDates != null) {
      data['diff_timeslot_dates'] =
         diffTimeslotDates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ServiceDates {
  String? date;
  String? fromTime;
  String? toTime;
  int? serviceFee;
  String? serviceId;
  String? clientName;

  ServiceDates(
      {this.date,
        this.fromTime,
        this.toTime,
        this.serviceFee,
        this.serviceId,
        this.clientName});

  ServiceDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    serviceFee = json['service_fee'];
    serviceId = json['service_id'];
    clientName = json['client_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['date'] =date;
    data['from_time'] =fromTime;
    data['to_time'] =toTime;
    data['service_fee'] =serviceFee;
    data['service_id'] =serviceId;
    data['client_name'] =clientName;
    return data;
  }
}

class DiffLocationDates {
  String? date;
  String? starttime;
  String? endtime;

  DiffLocationDates({this.date, this.starttime, this.endtime});

  DiffLocationDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    starttime = json['start_time'];
    endtime = json['end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['date'] = date;
    data['start_time'] = starttime;
    data['end_time'] = endtime;
    return data;
  }
}

class DiffTimeslotDates {
  String? date;
  String? starttime;
  String? endtime;

  DiffTimeslotDates({this.date, this.starttime, this.endtime});

  DiffTimeslotDates.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    starttime = json['start_time'];
    endtime = json['end_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['date'] =date;
    data['start_time'] =starttime;
    data['end_time'] =endtime;
    return data;
  }
}

class AccountDetails {
  String? accountHolderName;
  String? accountNumber;
  String? routingNumber;

  AccountDetails(
      {this.accountHolderName, this.accountNumber, this.routingNumber});

  AccountDetails.fromJson(Map<String, dynamic> json) {
    accountHolderName = json['account_holder_name'];
    accountNumber = json['account_number'];
    routingNumber = json['routing_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['account_holder_name'] =accountHolderName;
    data['account_number'] =accountNumber;
    data['roting_number'] =routingNumber;
    return data;
  }
}

class Services {
  String? id;
  String? userId;
  String? startDateTime;
  String? endDateTime;
  String? serviceName;
  String? totalServiceFee;
  int? status;
  Name? client;

  Services(
      {this.id,
        this.userId,
        this.startDateTime,
        this.endDateTime,
        this.totalServiceFee,
        this.status,
        this.client});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    totalServiceFee = json['total_service_fee'];
    status = json['status'];
    serviceName = json['service'];
    client = json['client'] != null ?  Name.fromJson(json['client']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['id'] =id;
    data['user_id'] =userId;
    data['start_date_time'] =startDateTime;
    data['end_date_time'] =endDateTime;
    data['total_service_fee'] =totalServiceFee;
    data['status'] =status;
    if (client != null) {
      data['client'] =client!.toJson();
    }
    return data;
  }
}

class Earnings {
  String? serviceId;
  String? transactionType;
  String? dateTime;
  String? amount;
  String? receivedFrom;
  String? paidFor;
  String? transactionId;
  int? status;

  Earnings(
      {this.serviceId,
       this.transactionType,
        this.dateTime,
        this.amount,
        this.receivedFrom,
        this.paidFor,
        this.transactionId,
        this.status});

  Earnings.fromJson(Map<String, dynamic> json) {
    serviceId = json['service_id'];
    transactionType = json['transaction_type'];
    dateTime = json['date_time'];
    amount = json['amount'];
    receivedFrom = json['received_from'];
    paidFor = json['paid_for'];
    transactionId = json['transaction_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    data['service_id'] =serviceId;
    data['transaction_type'] =transactionType;
    data['date_time'] =dateTime;
    data['amount'] =amount;
    data['received_from'] =receivedFrom;
    data['paid_for'] =paidFor;
    data['transaction_id'] =transactionId;
    data['status'] =status;
    return data;
  }
}

class ServiceRequest {
  ServiceRequestName? name;
  String? requestId;
  String? requstedStartDateTime;
  String? requstedEndDateTime;
  String? status;
  List<String>? serviceNeed;

  ServiceRequest(
      {this.name,
        this.requestId,
        this.requstedStartDateTime,
        this.requstedEndDateTime,
        this.status,
        this.serviceNeed});

  ServiceRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ?  ServiceRequestName.fromJson(json['name']) : null;
    requestId = json['request_id'];
    requstedStartDateTime = json['requsted_start_date_time'];
    requstedEndDateTime = json['requsted_end_date_time'];
    status = json['status'];
    serviceNeed = json['service_need'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =   <String, dynamic>{};
    if (name != null) {
      data['name'] =name!.toJson();
    }
    data['request_id'] =requestId;
    data['requsted_start_date_time'] =requstedStartDateTime;
    data['requsted_end_date_time'] =requstedEndDateTime;
    data['status'] =status;
    data['service_need'] =serviceNeed;
    return data;
  }
}

class ServiceRequestName {
  String? firstName;
  String? lastName;

  ServiceRequestName({this.firstName, this.lastName});

  ServiceRequestName.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['first_name'] =firstName;
    data['last_name'] =lastName;
    return data;
  }
}
