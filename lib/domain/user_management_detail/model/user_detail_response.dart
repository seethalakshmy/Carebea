class UserDetailResponse {
  bool? status;
  String? message;
  User? user;

  UserDetailResponse({this.status, this.message, this.user});

  UserDetailResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  String? location;
  Name? name;
  String? phone;
  String? email;
  String? ssn;
  int? serviceCompleted;
  int? canceledRequest;
  int? totalReviewsGiven;
  List<SubProfiles>? subProfiles;
  PaymentMethod? paymentMethod;
  List<Services>? services;
  List<Transactions>? transactions;
  List<ServiceRequest>? serviceRequest;

  User({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.ssn,
    this.serviceCompleted,
    this.canceledRequest,
    this.totalReviewsGiven,
    this.subProfiles,
    this.paymentMethod,
    this.services,
    this.transactions,
    this.serviceRequest,
    this.location,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    location = json['location'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    phone = json['phone'];
    email = json['email'];
    ssn = json['ssn'];
    serviceCompleted = json['service_completed'];
    canceledRequest = json['canceled_request'];
    totalReviewsGiven = json['total_reviews_given'];
    if (json['sub_profiles'] != null) {
      subProfiles = <SubProfiles>[];
      json['sub_profiles'].forEach((v) {
        subProfiles!.add(SubProfiles.fromJson(v));
      });
    }
    paymentMethod = json['payment_method'] != null
        ? PaymentMethod.fromJson(json['payment_method'])
        : null;
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
    if (json['transactions'] != null) {
      transactions = <Transactions>[];
      json['transactions'].forEach((v) {
        transactions!.add(Transactions.fromJson(v));
      });
    }
    if (json['service_request'] != null) {
      serviceRequest = <ServiceRequest>[];
      json['service_request'].forEach((v) {
        serviceRequest!.add(ServiceRequest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['phones'] = phone;
    data['email'] = email;
    data['ssn'] = ssn;
    data['service_completed'] = serviceCompleted;
    data['canceled_request'] = canceledRequest;
    data['total_reviews_given'] = totalReviewsGiven;
    if (subProfiles != null) {
      data['sub_profiles'] = subProfiles!.map((v) => v.toJson()).toList();
    }
    if (paymentMethod != null) {
      data['payment_method'] = paymentMethod!.toJson();
    }
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    if (transactions != null) {
      data['transactions'] = transactions!.map((v) => v.toJson()).toList();
    }
    if (serviceRequest != null) {
      data['service_request'] = serviceRequest!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Name {
  String? firstName;
  String? lastName;
  String? profile;

  Name({this.firstName, this.lastName, this.profile});

  Name.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['profile'] = profile;
    return data;
  }
}

class SubProfiles {
  String? id;
  String? userId;
  int? totalSeriviceCompleted;
  int? age;
  Name? name;

  SubProfiles(
      {this.id, this.userId, this.totalSeriviceCompleted, this.age, this.name});

  SubProfiles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    totalSeriviceCompleted = json['total_serivice_completed'];
    age = json['age'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['total_serivice_completed'] = totalSeriviceCompleted;
    data['age'] = age;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    return data;
  }
}

class PaymentMethod {
  CreditCardDetails? creditCardDetails;
  AchDetails? achDetails;

  PaymentMethod({this.creditCardDetails, this.achDetails});

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    creditCardDetails = json['credit_card_details'] != null
        ? CreditCardDetails.fromJson(json['credit_card_details'])
        : null;
    achDetails = json['ach_details'] != null
        ? AchDetails.fromJson(json['ach_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (creditCardDetails != null) {
      data['credit_card_details'] = creditCardDetails!.toJson();
    }
    if (achDetails != null) {
      data['ach_details'] = achDetails!.toJson();
    }
    return data;
  }
}

class CreditCardDetails {
  String? accountHolderName;
  String? accountNumber;
  String? expirationDate;
  int? securityNumber;

  CreditCardDetails(
      {this.accountHolderName,
      this.accountNumber,
      this.expirationDate,
      this.securityNumber});

  CreditCardDetails.fromJson(Map<String, dynamic> json) {
    accountHolderName = json['account_holder_name'];
    accountNumber = json['account_number'];
    expirationDate = json['expiration_date'];
    securityNumber = json['security_number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['account_holder_name'] = accountHolderName;
    data['account_number'] = accountNumber;
    data['expiration_date'] = expirationDate;
    data['security_number'] = securityNumber;
    return data;
  }
}

class AchDetails {
  String? accountHolderName;
  String? routingNumber;
  String? accountNumber;
  List<String>? accountType;

  AchDetails(
      {this.accountHolderName,
      this.routingNumber,
      this.accountNumber,
      this.accountType});

  AchDetails.fromJson(Map<String, dynamic> json) {
    accountHolderName = json['account_holder_name'];
    routingNumber = json['routing_number'];
    accountNumber = json['account_number'];
    accountType = json['account_type'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['account_holder_name'] = accountHolderName;
    data['routing_number'] = routingNumber;
    data['account_number'] = accountNumber;
    data['account_type'] = accountType;
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
  Name? client;
  Name? caregiver;

  Services(
      {this.id,
      this.userId,
      this.startDateTime,
      this.endDateTime,
      this.totalServiceFee,
      this.status,
      this.client,
      this.caregiver});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    totalServiceFee = json['total_service_fee'];
    status = json['status'];
    client = json['client'] != null ? Name.fromJson(json['client']) : null;
    caregiver =
        json['caregiver'] != null ? Name.fromJson(json['caregiver']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['start_date_time'] = startDateTime;
    data['end_date_time'] = endDateTime;
    data['total_service_fee'] = totalServiceFee;
    data['status'] = status;
    if (client != null) {
      data['client'] = client!.toJson();
    }
    if (caregiver != null) {
      data['caregiver'] = caregiver!.toJson();
    }
    return data;
  }
}

class Transactions {
  String? client;
  String? serviceId;
  String? transactionType;
  String? dateTime;
  String? amount;
  String? paidFor;
  String? transactionId;
  int? status;

  Transactions(
      {this.client,
      this.serviceId,
      this.transactionType,
      this.dateTime,
      this.amount,
      this.paidFor,
      this.transactionId,
      this.status});

  Transactions.fromJson(Map<String, dynamic> json) {
    client = json['client'];
    serviceId = json['service_id'];
    transactionType = json['transaction_type'];
    dateTime = json['date_time'];
    amount = json['amount'];
    paidFor = json['paid_for'];
    transactionId = json['transaction_id'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['client'] = client;
    data['service_id'] = serviceId;
    data['transaction_type'] = transactionType;
    data['date_time'] = dateTime;
    data['amount'] = amount;
    data['paid_for'] = paidFor;
    data['transaction_id'] = transactionId;
    data['status'] = status;
    return data;
  }
}

class ServiceRequest {
  ServiceRequestName? clientName;
  String? requestId;
  String? startDateTime;
  String? endDateTime;
  int? matchingListCount;
  String? serviceNeed;
  String? status;

  ServiceRequest(
      {this.clientName,
      this.requestId,
      this.startDateTime,
      this.endDateTime,
      this.matchingListCount,
      this.serviceNeed});

  ServiceRequest.fromJson(Map<String, dynamic> json) {
    requestId = json['request_id'];
    startDateTime = json['start_date_time'];
    endDateTime = json['end_date_time'];
    matchingListCount = json['matching_list_count'];
    serviceNeed = json['service_need'];
    status = json['status'];
    clientName =
        json['name'] != null ? ServiceRequestName.fromJson(json['name']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['request_id'] = requestId;
    data['start_date_time'] = startDateTime;
    data['end_date_time'] = endDateTime;
    data['matching_list_count'] = matchingListCount;
    data['service_need'] = serviceNeed;
    if (clientName != null) {
      data['name'] = clientName!.toJson();
    }
    return data;
  }
}

class ServiceRequestName {
  String? firstName;
  String? lastName;

  ServiceRequestName({
    this.firstName,
    this.lastName,
  });

  ServiceRequestName.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    return data;
  }
}
