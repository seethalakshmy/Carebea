import 'dart:convert';

UserDetailResponse userDetailResponseFromJson(String str) =>
    UserDetailResponse.fromJson(json.decode(str));
String userDetailResponseToJson(UserDetailResponse data) =>
    json.encode(data.toJson());

class UserDetailResponse {
  UserDetailResponse({
    String? status,
    Data? data,
  }) {
    _status = status;
    _data = data;
  }

  UserDetailResponse.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  Data? _data;
  UserDetailResponse copyWith({
    String? status,
    Data? data,
  }) =>
      UserDetailResponse(
        status: status ?? _status,
        data: data ?? _data,
      );
  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? id,
    Name? name,
    String? phone,
    String? email,
    dynamic ssn,
    int? serviceCompleted,
    int? cancelledRequest,
    int? totalReviewsGiven,
    List<SubProfiles>? subProfiles,
    PaymentMethod? paymentMethod,
    List<Services>? services,
    List<Transactions>? transactions,
    List<RequestdServices>? requestdServices,
  }) {
    _id = id;
    _name = name;
    _phone = phone;
    _email = email;
    _ssn = ssn;
    _serviceCompleted = serviceCompleted;
    _cancelledRequest = cancelledRequest;
    _totalReviewsGiven = totalReviewsGiven;
    _subProfiles = subProfiles;
    _paymentMethod = paymentMethod;
    _services = services;
    _transactions = transactions;
    _requestdServices = requestdServices;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _phone = json['phone'];
    _email = json['email'];
    _ssn = json['ssn'];
    _serviceCompleted = json['service_completed'];
    _cancelledRequest = json['cancelled_request'];
    _totalReviewsGiven = json['total_reviews_given'];
    if (json['subProfiles'] != null) {
      _subProfiles = [];
      json['subProfiles'].forEach((v) {
        _subProfiles?.add(SubProfiles.fromJson(v));
      });
    }
    _paymentMethod = json['paymentMethod'] != null
        ? PaymentMethod.fromJson(json['paymentMethod'])
        : null;
    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(Services.fromJson(v));
      });
    }
    if (json['transactions'] != null) {
      _transactions = [];
      json['transactions'].forEach((v) {
        _transactions?.add(Transactions.fromJson(v));
      });
    }
    if (json['requestd_services'] != null) {
      _requestdServices = [];
      json['requestd_services'].forEach((v) {
        _requestdServices?.add(RequestdServices.fromJson(v));
      });
    }
  }
  String? _id;
  Name? _name;
  String? _phone;
  String? _email;
  dynamic _ssn;
  int? _serviceCompleted;
  int? _cancelledRequest;
  int? _totalReviewsGiven;
  List<SubProfiles>? _subProfiles;
  PaymentMethod? _paymentMethod;
  List<Services>? _services;
  List<Transactions>? _transactions;
  List<RequestdServices>? _requestdServices;
  Data copyWith({
    String? id,
    Name? name,
    String? phone,
    String? email,
    dynamic ssn,
    int? serviceCompleted,
    int? cancelledRequest,
    int? totalReviewsGiven,
    List<SubProfiles>? subProfiles,
    PaymentMethod? paymentMethod,
    List<Services>? services,
    List<Transactions>? transactions,
    List<RequestdServices>? requestdServices,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        phone: phone ?? _phone,
        email: email ?? _email,
        ssn: ssn ?? _ssn,
        serviceCompleted: serviceCompleted ?? _serviceCompleted,
        cancelledRequest: cancelledRequest ?? _cancelledRequest,
        totalReviewsGiven: totalReviewsGiven ?? _totalReviewsGiven,
        subProfiles: subProfiles ?? _subProfiles,
        paymentMethod: paymentMethod ?? _paymentMethod,
        services: services ?? _services,
        transactions: transactions ?? _transactions,
        requestdServices: requestdServices ?? _requestdServices,
      );
  String? get id => _id;
  Name? get name => _name;
  String? get phone => _phone;
  String? get email => _email;
  dynamic get ssn => _ssn;
  int? get serviceCompleted => _serviceCompleted;
  int? get cancelledRequest => _cancelledRequest;
  int? get totalReviewsGiven => _totalReviewsGiven;
  List<SubProfiles>? get subProfiles => _subProfiles;
  PaymentMethod? get paymentMethod => _paymentMethod;
  List<Services>? get services => _services;
  List<Transactions>? get transactions => _transactions;
  List<RequestdServices>? get requestdServices => _requestdServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['phone'] = _phone;
    map['email'] = _email;
    map['ssn'] = _ssn;
    map['service_completed'] = _serviceCompleted;
    map['cancelled_request'] = _cancelledRequest;
    map['total_reviews_given'] = _totalReviewsGiven;
    if (_subProfiles != null) {
      map['subProfiles'] = _subProfiles?.map((v) => v.toJson()).toList();
    }
    if (_paymentMethod != null) {
      map['paymentMethod'] = _paymentMethod?.toJson();
    }
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
    if (_transactions != null) {
      map['transactions'] = _transactions?.map((v) => v.toJson()).toList();
    }
    if (_requestdServices != null) {
      map['requestd_services'] =
          _requestdServices?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

RequestdServices requestdServicesFromJson(String str) =>
    RequestdServices.fromJson(json.decode(str));
String requestdServicesToJson(RequestdServices data) =>
    json.encode(data.toJson());

class RequestdServices {
  RequestdServices({
    String? client,
    String? requestId,
    String? startDateTime,
    String? endDateTime,
    List<String>? requesteServices,
  }) {
    _client = client;
    _requestId = requestId;
    _startDateTime = startDateTime;
    _endDateTime = endDateTime;
    _requesteServices = requesteServices;
  }

  RequestdServices.fromJson(dynamic json) {
    _client = json['client'];
    _requestId = json['requestId'];
    _startDateTime = json['start_date_time'];
    _endDateTime = json['end_date_time'];
    _requesteServices = json['requeste_Services'] != null
        ? json['requeste_Services'].cast<String>()
        : [];
  }
  String? _client;
  String? _requestId;
  String? _startDateTime;
  String? _endDateTime;
  List<String>? _requesteServices;
  RequestdServices copyWith({
    String? client,
    String? requestId,
    String? startDateTime,
    String? endDateTime,
    List<String>? requesteServices,
  }) =>
      RequestdServices(
        client: client ?? _client,
        requestId: requestId ?? _requestId,
        startDateTime: startDateTime ?? _startDateTime,
        endDateTime: endDateTime ?? _endDateTime,
        requesteServices: requesteServices ?? _requesteServices,
      );
  String? get client => _client;
  String? get requestId => _requestId;
  String? get startDateTime => _startDateTime;
  String? get endDateTime => _endDateTime;
  List<String>? get requesteServices => _requesteServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client'] = _client;
    map['requestId'] = _requestId;
    map['start_date_time'] = _startDateTime;
    map['end_date_time'] = _endDateTime;
    map['requeste_Services'] = _requesteServices;
    return map;
  }
}

Transactions transactionsFromJson(String str) =>
    Transactions.fromJson(json.decode(str));
String transactionsToJson(Transactions data) => json.encode(data.toJson());

class Transactions {
  Transactions({
    String? client,
    String? serviceId,
    String? transactionType,
    String? dateTime,
    String? amount,
    String? paidFor,
    String? transactionId,
    String? status,
  }) {
    _client = client;
    _serviceId = serviceId;
    _transactionType = transactionType;
    _dateTime = dateTime;
    _amount = amount;
    _paidFor = paidFor;
    _transactionId = transactionId;
    _status = status;
  }

  Transactions.fromJson(dynamic json) {
    _client = json['client'];
    _serviceId = json['service_id'];
    _transactionType = json['transaction_type'];
    _dateTime = json['date_time'];
    _amount = json['amount'];
    _paidFor = json['paid_for'];
    _transactionId = json['transaction_id'];
    _status = json['status'];
  }
  String? _client;
  String? _serviceId;
  String? _transactionType;
  String? _dateTime;
  String? _amount;
  String? _paidFor;
  String? _transactionId;
  String? _status;
  Transactions copyWith({
    String? client,
    String? serviceId,
    String? transactionType,
    String? dateTime,
    String? amount,
    String? paidFor,
    String? transactionId,
    String? status,
  }) =>
      Transactions(
        client: client ?? _client,
        serviceId: serviceId ?? _serviceId,
        transactionType: transactionType ?? _transactionType,
        dateTime: dateTime ?? _dateTime,
        amount: amount ?? _amount,
        paidFor: paidFor ?? _paidFor,
        transactionId: transactionId ?? _transactionId,
        status: status ?? _status,
      );
  String? get client => _client;
  String? get serviceId => _serviceId;
  String? get transactionType => _transactionType;
  String? get dateTime => _dateTime;
  String? get amount => _amount;
  String? get paidFor => _paidFor;
  String? get transactionId => _transactionId;
  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client'] = _client;
    map['service_id'] = _serviceId;
    map['transaction_type'] = _transactionType;
    map['date_time'] = _dateTime;
    map['amount'] = _amount;
    map['paid_for'] = _paidFor;
    map['transaction_id'] = _transactionId;
    map['status'] = _status;
    return map;
  }
}

Services servicesFromJson(String str) => Services.fromJson(json.decode(str));
String servicesToJson(Services data) => json.encode(data.toJson());

class Services {
  Services({
    String? id,
    String? userId,
    String? startDateTime,
    String? endDateTime,
    double? totalServiceFee,
    String? status,
    Client? client,
    Caregiver? caregiver,
  }) {
    _id = id;
    _userId = userId;
    _startDateTime = startDateTime;
    _endDateTime = endDateTime;
    _totalServiceFee = totalServiceFee;
    _status = status;
    _client = client;
    _caregiver = caregiver;
  }

  Services.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _startDateTime = json['start_date_time'];
    _endDateTime = json['end_date_time'];
    _totalServiceFee = json['total_service_fee'];
    _status = json['status'];
    _client = json['client'] != null ? Client.fromJson(json['client']) : null;
    _caregiver = json['caregiver'] != null
        ? Caregiver.fromJson(json['caregiver'])
        : null;
  }
  String? _id;
  String? _userId;
  String? _startDateTime;
  String? _endDateTime;
  double? _totalServiceFee;
  String? _status;
  Client? _client;
  Caregiver? _caregiver;
  Services copyWith({
    String? id,
    String? userId,
    String? startDateTime,
    String? endDateTime,
    double? totalServiceFee,
    String? status,
    Client? client,
    Caregiver? caregiver,
  }) =>
      Services(
        id: id ?? _id,
        userId: userId ?? _userId,
        startDateTime: startDateTime ?? _startDateTime,
        endDateTime: endDateTime ?? _endDateTime,
        totalServiceFee: totalServiceFee ?? _totalServiceFee,
        status: status ?? _status,
        client: client ?? _client,
        caregiver: caregiver ?? _caregiver,
      );
  String? get id => _id;
  String? get userId => _userId;
  String? get startDateTime => _startDateTime;
  String? get endDateTime => _endDateTime;
  double? get totalServiceFee => _totalServiceFee;
  String? get status => _status;
  Client? get client => _client;
  Caregiver? get caregiver => _caregiver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['userId'] = _userId;
    map['start_date_time'] = _startDateTime;
    map['end_date_time'] = _endDateTime;
    map['total_service_fee'] = _totalServiceFee;
    map['status'] = _status;
    if (_client != null) {
      map['client'] = _client?.toJson();
    }
    if (_caregiver != null) {
      map['caregiver'] = _caregiver?.toJson();
    }
    return map;
  }
}

Caregiver caregiverFromJson(String str) => Caregiver.fromJson(json.decode(str));
String caregiverToJson(Caregiver data) => json.encode(data.toJson());

class Caregiver {
  Caregiver({
    String? firstName,
    String? lastName,
    String? profilePic,
    String? profileThumbnail,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
  }

  Caregiver.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
  }
  String? _firstName;
  String? _lastName;
  String? _profilePic;
  String? _profileThumbnail;
  Caregiver copyWith({
    String? firstName,
    String? lastName,
    String? profilePic,
    String? profileThumbnail,
  }) =>
      Caregiver(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    return map;
  }
}

Client clientFromJson(String str) => Client.fromJson(json.decode(str));
String clientToJson(Client data) => json.encode(data.toJson());

class Client {
  Client({
    String? firstName,
    String? lastName,
    String? profilePic,
    String? profileThumbnail,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
  }

  Client.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
  }
  String? _firstName;
  String? _lastName;
  String? _profilePic;
  String? _profileThumbnail;
  Client copyWith({
    String? firstName,
    String? lastName,
    String? profilePic,
    String? profileThumbnail,
  }) =>
      Client(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    return map;
  }
}

PaymentMethod paymentMethodFromJson(String str) =>
    PaymentMethod.fromJson(json.decode(str));
String paymentMethodToJson(PaymentMethod data) => json.encode(data.toJson());

class PaymentMethod {
  PaymentMethod({
    CreditCard? creditCard,
  }) {
    _creditCard = creditCard;
  }

  PaymentMethod.fromJson(dynamic json) {
    _creditCard = json['creditCard'] != null
        ? CreditCard.fromJson(json['creditCard'])
        : null;
  }
  CreditCard? _creditCard;
  PaymentMethod copyWith({
    CreditCard? creditCard,
  }) =>
      PaymentMethod(
        creditCard: creditCard ?? _creditCard,
      );
  CreditCard? get creditCard => _creditCard;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_creditCard != null) {
      map['creditCard'] = _creditCard?.toJson();
    }
    return map;
  }
}

CreditCard creditCardFromJson(String str) =>
    CreditCard.fromJson(json.decode(str));
String creditCardToJson(CreditCard data) => json.encode(data.toJson());

class CreditCard {
  CreditCard({
    String? cardNumber,
    String? expirationDate,
    String? cvv,
  }) {
    _cardNumber = cardNumber;
    _expirationDate = expirationDate;
    _cvv = cvv;
  }

  CreditCard.fromJson(dynamic json) {
    _cardNumber = json['cardNumber'];
    _expirationDate = json['expirationDate'];
    _cvv = json['cvv'];
  }
  String? _cardNumber;
  String? _expirationDate;
  String? _cvv;
  CreditCard copyWith({
    String? cardNumber,
    String? expirationDate,
    String? cvv,
  }) =>
      CreditCard(
        cardNumber: cardNumber ?? _cardNumber,
        expirationDate: expirationDate ?? _expirationDate,
        cvv: cvv ?? _cvv,
      );
  String? get cardNumber => _cardNumber;
  String? get expirationDate => _expirationDate;
  String? get cvv => _cvv;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cardNumber'] = _cardNumber;
    map['expirationDate'] = _expirationDate;
    map['cvv'] = _cvv;
    return map;
  }
}

SubProfiles subProfilesFromJson(String str) =>
    SubProfiles.fromJson(json.decode(str));
String subProfilesToJson(SubProfiles data) => json.encode(data.toJson());

class SubProfiles {
  SubProfiles({
    String? id,
    Name? name,
    String? profilePic,
    String? profileThumbnail,
    String? age,
    bool? isProfileCompleted,
    int? profileCompletePercentage,
    int? profileCompletion,
    int? completedServices,
  }) {
    _id = id;
    _name = name;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
    _age = age;
    _isProfileCompleted = isProfileCompleted;
    _profileCompletePercentage = profileCompletePercentage;
    _profileCompletion = profileCompletion;
    _completedServices = completedServices;
  }

  SubProfiles.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
    _age = json['age'];
    _isProfileCompleted = json['is_profile_completed'];
    _profileCompletePercentage = json['profile_complete_percentage'];
    _profileCompletion = json['profile_completion'];
    _completedServices = json['completedServices'];
  }
  String? _id;
  Name? _name;
  String? _profilePic;
  String? _profileThumbnail;
  String? _age;
  bool? _isProfileCompleted;
  int? _profileCompletePercentage;
  int? _profileCompletion;
  int? _completedServices;
  SubProfiles copyWith({
    String? id,
    Name? name,
    String? profilePic,
    String? profileThumbnail,
    String? age,
    bool? isProfileCompleted,
    int? profileCompletePercentage,
    int? profileCompletion,
    int? completedServices,
  }) =>
      SubProfiles(
        id: id ?? _id,
        name: name ?? _name,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        age: age ?? _age,
        isProfileCompleted: isProfileCompleted ?? _isProfileCompleted,
        profileCompletePercentage:
            profileCompletePercentage ?? _profileCompletePercentage,
        profileCompletion: profileCompletion ?? _profileCompletion,
        completedServices: completedServices ?? _completedServices,
      );
  String? get id => _id;
  Name? get name => _name;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;
  String? get age => _age;
  bool? get isProfileCompleted => _isProfileCompleted;
  int? get profileCompletePercentage => _profileCompletePercentage;
  int? get profileCompletion => _profileCompletion;
  int? get completedServices => _completedServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    map['age'] = _age;
    map['is_profile_completed'] = _isProfileCompleted;
    map['profile_complete_percentage'] = _profileCompletePercentage;
    map['profile_completion'] = _profileCompletion;
    map['completedServices'] = _completedServices;
    return map;
  }
}

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());

class Name {
  Name({
    String? firstName,
    String? lastName,
  }) {
    _firstName = firstName;
    _lastName = lastName;
  }

  Name.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
  }
  String? _firstName;
  String? _lastName;
  Name copyWith({
    String? firstName,
    String? lastName,
  }) =>
      Name(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    return map;
  }
}
