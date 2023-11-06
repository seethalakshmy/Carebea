import 'dart:convert';

UserDetailResponse userDetailResponseFromJson(String str) =>
    UserDetailResponse.fromJson(json.decode(str));
String userDetailResponseToJson(UserDetailResponse data) =>
    json.encode(data.toJson());

class UserDetailResponse {
  UserDetailResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  UserDetailResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  UserDetailResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      UserDetailResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
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
    String? profilePic,
    dynamic ssn,
    num? serviceCompleted,
    num? cancelledRequest,
    num? totalReviewsGiven,
    List<SubProfiles>? subProfiles,
    PaymentMethod? paymentMethod,
    List<Transactions>? transactions,
  }) {
    _id = id;
    _name = name;
    _phone = phone;
    _email = email;
    _profilePic = profilePic;
    _ssn = ssn;
    _serviceCompleted = serviceCompleted;
    _cancelledRequest = cancelledRequest;
    _totalReviewsGiven = totalReviewsGiven;
    _subProfiles = subProfiles;
    _paymentMethod = paymentMethod;
    _transactions = transactions;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _phone = json['phone'];
    _email = json['email'];
    _profilePic = json['parent_profile_pic'];
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

    if (json['transactions'] != null) {
      _transactions = [];
      json['transactions'].forEach((v) {
        _transactions?.add(Transactions.fromJson(v));
      });
    }
  }
  String? _id;
  Name? _name;
  String? _phone;
  String? _email;
  String? _profilePic;
  dynamic _ssn;
  num? _serviceCompleted;
  num? _cancelledRequest;
  num? _totalReviewsGiven;
  List<SubProfiles>? _subProfiles;
  PaymentMethod? _paymentMethod;
  List<Transactions>? _transactions;
  Data copyWith({
    String? id,
    Name? name,
    String? phone,
    String? email,
    String? profilePic,
    dynamic ssn,
    num? serviceCompleted,
    num? cancelledRequest,
    num? totalReviewsGiven,
    List<SubProfiles>? subProfiles,
    PaymentMethod? paymentMethod,
    List<Transactions>? transactions,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        phone: phone ?? _phone,
        email: email ?? _email,
        profilePic: profilePic ?? _profilePic,
        ssn: ssn ?? _ssn,
        serviceCompleted: serviceCompleted ?? _serviceCompleted,
        cancelledRequest: cancelledRequest ?? _cancelledRequest,
        totalReviewsGiven: totalReviewsGiven ?? _totalReviewsGiven,
        subProfiles: subProfiles ?? _subProfiles,
        paymentMethod: paymentMethod ?? _paymentMethod,
        transactions: transactions ?? _transactions,
      );
  String? get id => _id;
  Name? get name => _name;
  String? get phone => _phone;
  String? get email => _email;
  String? get profilePic => _profilePic;
  dynamic get ssn => _ssn;
  num? get serviceCompleted => _serviceCompleted;
  num? get cancelledRequest => _cancelledRequest;
  num? get totalReviewsGiven => _totalReviewsGiven;
  List<SubProfiles>? get subProfiles => _subProfiles;
  PaymentMethod? get paymentMethod => _paymentMethod;
  List<Transactions>? get transactions => _transactions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['phone'] = _phone;
    map['email'] = _email;
    map['parent_profile_pic'] = _profilePic;
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

    if (_transactions != null) {
      map['transactions'] = _transactions?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Transactions transactionsFromJson(String str) =>
    Transactions.fromJson(json.decode(str));
String transactionsToJson(Transactions data) => json.encode(data.toJson());

class Transactions {
  Transactions({
    String? client,
    String? uniqueServiceId,
    String? uniqueTransactionId,
    String? serviceId,
    String? transactionType,
    String? dateTime,
    String? amount,
    String? paidFor,
    String? transactionId,
    num? status,
  }) {
    _client = client;
    _uniqueServiceId = uniqueServiceId;
    _uniqueTransactionId = uniqueTransactionId;
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
    _uniqueServiceId = json['unique_service_id'];
    _uniqueTransactionId = json['transaction_uniqueID'];
    _serviceId = json['service_id'];
    _transactionType = json['transaction_type'];
    _dateTime = json['date_time'];
    _amount = json['amount'];
    _paidFor = json['paid_for'];
    _transactionId = json['transaction_id'];
    _status = json['status'];
  }
  String? _client;
  String? _uniqueServiceId;
  String? _uniqueTransactionId;
  String? _serviceId;
  String? _transactionType;
  String? _dateTime;
  String? _amount;
  String? _paidFor;
  String? _transactionId;
  num? _status;
  Transactions copyWith({
    String? client,
    String? uniqueTransactionId,
    String? uniqueServiceId,
    String? serviceId,
    String? transactionType,
    String? dateTime,
    String? amount,
    String? paidFor,
    String? transactionId,
    num? status,
  }) =>
      Transactions(
        client: client ?? _client,
        uniqueServiceId: uniqueServiceId ?? _uniqueServiceId,
        uniqueTransactionId: uniqueTransactionId ?? _uniqueTransactionId,
        serviceId: serviceId ?? _serviceId,
        transactionType: transactionType ?? _transactionType,
        dateTime: dateTime ?? _dateTime,
        amount: amount ?? _amount,
        paidFor: paidFor ?? _paidFor,
        transactionId: transactionId ?? _transactionId,
        status: status ?? _status,
      );
  String? get client => _client;
  String? get uniqueServiceId => _uniqueServiceId;
  String? get uniqueTransactionId => _uniqueTransactionId;
  String? get serviceId => _serviceId;
  String? get transactionType => _transactionType;
  String? get dateTime => _dateTime;
  String? get amount => _amount;
  String? get paidFor => _paidFor;
  String? get transactionId => _transactionId;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['client'] = _client;
    map['unique_service_id'] = _uniqueServiceId;
    map['transaction_uniqueID'] = _uniqueTransactionId;
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

Caregiver caregiverFromJson(String str) => Caregiver.fromJson(json.decode(str));
String caregiverToJson(Caregiver data) => json.encode(data.toJson());

class Caregiver {
  Caregiver({
    FirstName? firstName,
    LastName? lastName,
    String? profilePic,
    String? profileThumbnail,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
  }

  Caregiver.fromJson(dynamic json) {
    _firstName = json['firstName'] != null
        ? FirstName.fromJson(json['firstName'])
        : null;
    _lastName =
        json['lastName'] != null ? LastName.fromJson(json['lastName']) : null;
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
  }
  FirstName? _firstName;
  LastName? _lastName;
  String? _profilePic;
  String? _profileThumbnail;
  Caregiver copyWith({
    FirstName? firstName,
    LastName? lastName,
    String? profilePic,
    String? profileThumbnail,
  }) =>
      Caregiver(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
      );
  FirstName? get firstName => _firstName;
  LastName? get lastName => _lastName;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_firstName != null) {
      map['firstName'] = _firstName?.toJson();
    }
    if (_lastName != null) {
      map['lastName'] = _lastName?.toJson();
    }
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    return map;
  }
}

LastName lastNameFromJson(String str) => LastName.fromJson(json.decode(str));
String lastNameToJson(LastName data) => json.encode(data.toJson());

class LastName {
  LastName({
    ParentId? parentId,
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    String? id,
    num? v,
    List<Address>? address,
    num? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    String? deviceToken,
    String? deviceType,
    List<Document>? document,
    String? email,
    num? gender,
    num? numerviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
    bool? isProfileSet,
    bool? isAppleLogin,
    bool? isGoogleLogin,
    bool? isRejected,
    bool? isSocial,
    bool? onBoardingStatus,
    num? onBoardingStep,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? profilePicture,
    String? roleId,
    bool? status,
    List<dynamic>? subscriptionDetails,
    num? trainingVerificationStatus,
    String? updatedAt,
    num? verificationStatus,
    bool? verified,
    String? dateOfBirth,
  }) {
    _parentId = parentId;
    _name = name;
    _location = location;
    _backgroundVerification = backgroundVerification;
    _id = id;
    _v = v;
    _address = address;
    _certificateVerificationStatus = certificateVerificationStatus;
    _createdAt = createdAt;
    _deleteStatus = deleteStatus;
    _deviceToken = deviceToken;
    _deviceType = deviceType;
    _document = document;
    _email = email;
    _gender = gender;
    _numerviewVerificationStatus = numerviewVerificationStatus;
    _isEmailVerified = isEmailVerified;
    _isPasswordSet = isPasswordSet;
    _isPhoneNumberVerified = isPhoneNumberVerified;
    _isProfileSet = isProfileSet;
    _isAppleLogin = isAppleLogin;
    _isGoogleLogin = isGoogleLogin;
    _isRejected = isRejected;
    _isSocial = isSocial;
    _onBoardingStatus = onBoardingStatus;
    _onBoardingStep = onBoardingStep;
    _otpVerification = otpVerification;
    _password = password;
    _phoneNumber = phoneNumber;
    _profilePicture = profilePicture;
    _roleId = roleId;
    _status = status;
    _subscriptionDetails = subscriptionDetails;
    _trainingVerificationStatus = trainingVerificationStatus;
    _updatedAt = updatedAt;
    _verificationStatus = verificationStatus;
    _verified = verified;
    _dateOfBirth = dateOfBirth;
  }

  LastName.fromJson(dynamic json) {
    _parentId =
        json['parentId'] != null ? ParentId.fromJson(json['parentId']) : null;
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _backgroundVerification = json['backgroundVerification'] != null
        ? BackgroundVerification.fromJson(json['backgroundVerification'])
        : null;
    _id = json['_id'];
    _v = json['__v'];
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
    _certificateVerificationStatus = json['certificateVerificationStatus'];
    _createdAt = json['createdAt'];
    _deleteStatus = json['deleteStatus'];
    _deviceToken = json['deviceToken'];
    _deviceType = json['deviceType'];
    if (json['document'] != null) {
      _document = [];
      json['document'].forEach((v) {
        _document?.add(Document.fromJson(v));
      });
    }
    _email = json['email'];
    _gender = json['gender'];
    _numerviewVerificationStatus = json['numerviewVerificationStatus'];
    _isEmailVerified = json['isEmailVerified'];
    _isPasswordSet = json['isPasswordSet'];
    _isPhoneNumberVerified = json['isPhoneNumberVerified'];
    _isProfileSet = json['isProfileSet'];
    _isAppleLogin = json['is_apple_login'];
    _isGoogleLogin = json['is_google_login'];
    _isRejected = json['is_rejected'];
    _isSocial = json['is_social'];
    _onBoardingStatus = json['onBoardingStatus'];
    _onBoardingStep = json['onBoardingStep'];
    _otpVerification = json['otpVerification'];
    _password = json['password'];
    _phoneNumber = json['phoneNumber'];
    _profilePicture = json['profilePicture'];
    _roleId = json['roleId'];
    _status = json['status'];
    _trainingVerificationStatus = json['trainingVerificationStatus'];
    _updatedAt = json['updatedAt'];
    _verificationStatus = json['verification_status'];
    _verified = json['verified'];
    _dateOfBirth = json['dateOfBirth'];
  }
  ParentId? _parentId;
  Name? _name;
  Location? _location;
  BackgroundVerification? _backgroundVerification;
  String? _id;
  num? _v;
  List<Address>? _address;
  num? _certificateVerificationStatus;
  String? _createdAt;
  bool? _deleteStatus;
  String? _deviceToken;
  String? _deviceType;
  List<Document>? _document;
  String? _email;
  num? _gender;
  num? _numerviewVerificationStatus;
  bool? _isEmailVerified;
  bool? _isPasswordSet;
  bool? _isPhoneNumberVerified;
  bool? _isProfileSet;
  bool? _isAppleLogin;
  bool? _isGoogleLogin;
  bool? _isRejected;
  bool? _isSocial;
  bool? _onBoardingStatus;
  num? _onBoardingStep;
  bool? _otpVerification;
  String? _password;
  String? _phoneNumber;
  String? _profilePicture;
  String? _roleId;
  bool? _status;
  List<dynamic>? _subscriptionDetails;
  num? _trainingVerificationStatus;
  String? _updatedAt;
  num? _verificationStatus;
  bool? _verified;
  String? _dateOfBirth;
  LastName copyWith({
    ParentId? parentId,
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    String? id,
    num? v,
    List<Address>? address,
    num? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    String? deviceToken,
    String? deviceType,
    List<Document>? document,
    String? email,
    num? gender,
    num? numerviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
    bool? isProfileSet,
    bool? isAppleLogin,
    bool? isGoogleLogin,
    bool? isRejected,
    bool? isSocial,
    bool? onBoardingStatus,
    num? onBoardingStep,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? profilePicture,
    String? roleId,
    bool? status,
    List<dynamic>? subscriptionDetails,
    num? trainingVerificationStatus,
    String? updatedAt,
    num? verificationStatus,
    bool? verified,
    String? dateOfBirth,
  }) =>
      LastName(
        parentId: parentId ?? _parentId,
        name: name ?? _name,
        location: location ?? _location,
        backgroundVerification:
            backgroundVerification ?? _backgroundVerification,
        id: id ?? _id,
        v: v ?? _v,
        address: address ?? _address,
        certificateVerificationStatus:
            certificateVerificationStatus ?? _certificateVerificationStatus,
        createdAt: createdAt ?? _createdAt,
        deleteStatus: deleteStatus ?? _deleteStatus,
        deviceToken: deviceToken ?? _deviceToken,
        deviceType: deviceType ?? _deviceType,
        document: document ?? _document,
        email: email ?? _email,
        gender: gender ?? _gender,
        numerviewVerificationStatus:
            numerviewVerificationStatus ?? _numerviewVerificationStatus,
        isEmailVerified: isEmailVerified ?? _isEmailVerified,
        isPasswordSet: isPasswordSet ?? _isPasswordSet,
        isPhoneNumberVerified: isPhoneNumberVerified ?? _isPhoneNumberVerified,
        isProfileSet: isProfileSet ?? _isProfileSet,
        isAppleLogin: isAppleLogin ?? _isAppleLogin,
        isGoogleLogin: isGoogleLogin ?? _isGoogleLogin,
        isRejected: isRejected ?? _isRejected,
        isSocial: isSocial ?? _isSocial,
        onBoardingStatus: onBoardingStatus ?? _onBoardingStatus,
        onBoardingStep: onBoardingStep ?? _onBoardingStep,
        otpVerification: otpVerification ?? _otpVerification,
        password: password ?? _password,
        phoneNumber: phoneNumber ?? _phoneNumber,
        profilePicture: profilePicture ?? _profilePicture,
        roleId: roleId ?? _roleId,
        status: status ?? _status,
        subscriptionDetails: subscriptionDetails ?? _subscriptionDetails,
        trainingVerificationStatus:
            trainingVerificationStatus ?? _trainingVerificationStatus,
        updatedAt: updatedAt ?? _updatedAt,
        verificationStatus: verificationStatus ?? _verificationStatus,
        verified: verified ?? _verified,
        dateOfBirth: dateOfBirth ?? _dateOfBirth,
      );
  ParentId? get parentId => _parentId;
  Name? get name => _name;
  Location? get location => _location;
  BackgroundVerification? get backgroundVerification => _backgroundVerification;
  String? get id => _id;
  num? get v => _v;
  List<Address>? get address => _address;
  num? get certificateVerificationStatus => _certificateVerificationStatus;
  String? get createdAt => _createdAt;
  bool? get deleteStatus => _deleteStatus;
  String? get deviceToken => _deviceToken;
  String? get deviceType => _deviceType;
  List<Document>? get document => _document;
  String? get email => _email;
  num? get gender => _gender;
  num? get numerviewVerificationStatus => _numerviewVerificationStatus;
  bool? get isEmailVerified => _isEmailVerified;
  bool? get isPasswordSet => _isPasswordSet;
  bool? get isPhoneNumberVerified => _isPhoneNumberVerified;
  bool? get isProfileSet => _isProfileSet;
  bool? get isAppleLogin => _isAppleLogin;
  bool? get isGoogleLogin => _isGoogleLogin;
  bool? get isRejected => _isRejected;
  bool? get isSocial => _isSocial;
  bool? get onBoardingStatus => _onBoardingStatus;
  num? get onBoardingStep => _onBoardingStep;
  bool? get otpVerification => _otpVerification;
  String? get password => _password;
  String? get phoneNumber => _phoneNumber;
  String? get profilePicture => _profilePicture;
  String? get roleId => _roleId;
  bool? get status => _status;
  List<dynamic>? get subscriptionDetails => _subscriptionDetails;
  num? get trainingVerificationStatus => _trainingVerificationStatus;
  String? get updatedAt => _updatedAt;
  num? get verificationStatus => _verificationStatus;
  bool? get verified => _verified;
  String? get dateOfBirth => _dateOfBirth;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_parentId != null) {
      map['parentId'] = _parentId?.toJson();
    }
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_backgroundVerification != null) {
      map['backgroundVerification'] = _backgroundVerification?.toJson();
    }
    map['_id'] = _id;
    map['__v'] = _v;
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    map['certificateVerificationStatus'] = _certificateVerificationStatus;
    map['createdAt'] = _createdAt;
    map['deleteStatus'] = _deleteStatus;
    map['deviceToken'] = _deviceToken;
    map['deviceType'] = _deviceType;
    if (_document != null) {
      map['document'] = _document?.map((v) => v.toJson()).toList();
    }
    map['email'] = _email;
    map['gender'] = _gender;
    map['numerviewVerificationStatus'] = _numerviewVerificationStatus;
    map['isEmailVerified'] = _isEmailVerified;
    map['isPasswordSet'] = _isPasswordSet;
    map['isPhoneNumberVerified'] = _isPhoneNumberVerified;
    map['isProfileSet'] = _isProfileSet;
    map['is_apple_login'] = _isAppleLogin;
    map['is_google_login'] = _isGoogleLogin;
    map['is_rejected'] = _isRejected;
    map['is_social'] = _isSocial;
    map['onBoardingStatus'] = _onBoardingStatus;
    map['onBoardingStep'] = _onBoardingStep;
    map['otpVerification'] = _otpVerification;
    map['password'] = _password;
    map['phoneNumber'] = _phoneNumber;
    map['profilePicture'] = _profilePicture;
    map['roleId'] = _roleId;
    map['status'] = _status;
    if (_subscriptionDetails != null) {
      map['subscriptionDetails'] =
          _subscriptionDetails?.map((v) => v.toJson()).toList();
    }
    map['trainingVerificationStatus'] = _trainingVerificationStatus;
    map['updatedAt'] = _updatedAt;
    map['verification_status'] = _verificationStatus;
    map['verified'] = _verified;
    map['dateOfBirth'] = _dateOfBirth;
    return map;
  }
}

Document documentFromJson(String str) => Document.fromJson(json.decode(str));
String documentToJson(Document data) => json.encode(data.toJson());

class Document {
  Document({
    String? type,
    bool? valid,
    String? number,
    String? expiry,
    List<String>? file,
    bool? status,
    String? id,
  }) {
    _type = type;
    _valid = valid;
    _number = number;
    _expiry = expiry;
    _file = file;
    _status = status;
    _id = id;
  }

  Document.fromJson(dynamic json) {
    _type = json['type'];
    _valid = json['valid'];
    _number = json['number'];
    _expiry = json['expiry'];
    _file = json['file'] != null ? json['file'].cast<String>() : [];
    _status = json['status'];
    _id = json['_id'];
  }
  String? _type;
  bool? _valid;
  String? _number;
  String? _expiry;
  List<String>? _file;
  bool? _status;
  String? _id;
  Document copyWith({
    String? type,
    bool? valid,
    String? number,
    String? expiry,
    List<String>? file,
    bool? status,
    String? id,
  }) =>
      Document(
        type: type ?? _type,
        valid: valid ?? _valid,
        number: number ?? _number,
        expiry: expiry ?? _expiry,
        file: file ?? _file,
        status: status ?? _status,
        id: id ?? _id,
      );
  String? get type => _type;
  bool? get valid => _valid;
  String? get number => _number;
  String? get expiry => _expiry;
  List<String>? get file => _file;
  bool? get status => _status;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['valid'] = _valid;
    map['number'] = _number;
    map['expiry'] = _expiry;
    map['file'] = _file;
    map['status'] = _status;
    map['_id'] = _id;
    return map;
  }
}

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    Location? location,
    String? streetName,
    String? lattitude,
    String? longitude,
    String? city,
    String? state,
    String? address,
    dynamic locationTag,
    String? zipCode,
    bool? isDelete,
    bool? isDefault,
    String? id,
  }) {
    _location = location;
    _streetName = streetName;
    _lattitude = lattitude;
    _longitude = longitude;
    _city = city;
    _state = state;
    _address = address;
    _locationTag = locationTag;
    _zipCode = zipCode;
    _isDelete = isDelete;
    _isDefault = isDefault;
    _id = id;
  }

  Address.fromJson(dynamic json) {
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _city = json['city'];
    _state = json['state'];
    _address = json['address'];
    _locationTag = json['locationTag'];
    _zipCode = json['zipCode'];
    _isDelete = json['is_delete'];
    _isDefault = json['is_default'];
    _id = json['_id'];
  }
  Location? _location;
  String? _streetName;
  String? _lattitude;
  String? _longitude;
  String? _city;
  String? _state;
  String? _address;
  dynamic _locationTag;
  String? _zipCode;
  bool? _isDelete;
  bool? _isDefault;
  String? _id;
  Address copyWith({
    Location? location,
    String? streetName,
    String? lattitude,
    String? longitude,
    String? city,
    String? state,
    String? address,
    dynamic locationTag,
    String? zipCode,
    bool? isDelete,
    bool? isDefault,
    String? id,
  }) =>
      Address(
        location: location ?? _location,
        streetName: streetName ?? _streetName,
        lattitude: lattitude ?? _lattitude,
        longitude: longitude ?? _longitude,
        city: city ?? _city,
        state: state ?? _state,
        address: address ?? _address,
        locationTag: locationTag ?? _locationTag,
        zipCode: zipCode ?? _zipCode,
        isDelete: isDelete ?? _isDelete,
        isDefault: isDefault ?? _isDefault,
        id: id ?? _id,
      );
  Location? get location => _location;
  String? get streetName => _streetName;
  String? get lattitude => _lattitude;
  String? get longitude => _longitude;
  String? get city => _city;
  String? get state => _state;
  String? get address => _address;
  dynamic get locationTag => _locationTag;
  String? get zipCode => _zipCode;
  bool? get isDelete => _isDelete;
  bool? get isDefault => _isDefault;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['streetName'] = _streetName;
    map['lattitude'] = _lattitude;
    map['longitude'] = _longitude;
    map['city'] = _city;
    map['state'] = _state;
    map['address'] = _address;
    map['locationTag'] = _locationTag;
    map['zipCode'] = _zipCode;
    map['is_delete'] = _isDelete;
    map['is_default'] = _isDefault;
    map['_id'] = _id;
    return map;
  }
}

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());

class Location {
  Location({
    String? type,
    List<double>? coordinates,
  }) {
    _type = type;
    _coordinates = coordinates;
  }

  Location.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates =
        json['coordinates'] != null ? json['coordinates'].cast<double>() : [];
  }
  String? _type;
  List<double>? _coordinates;
  Location copyWith({
    String? type,
    List<double>? coordinates,
  }) =>
      Location(
        type: type ?? _type,
        coordinates: coordinates ?? _coordinates,
      );
  String? get type => _type;
  List<double>? get coordinates => _coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['coordinates'] = _coordinates;
    return map;
  }
}

BackgroundVerification backgroundVerificationFromJson(String str) =>
    BackgroundVerification.fromJson(json.decode(str));
String backgroundVerificationToJson(BackgroundVerification data) =>
    json.encode(data.toJson());

class BackgroundVerification {
  BackgroundVerification({
    String? rejectReason,
    num? status,
  }) {
    _rejectReason = rejectReason;
    _status = status;
  }

  BackgroundVerification.fromJson(dynamic json) {
    _rejectReason = json['reject_reason'];
    _status = json['status'];
  }
  String? _rejectReason;
  num? _status;
  BackgroundVerification copyWith({
    String? rejectReason,
    num? status,
  }) =>
      BackgroundVerification(
        rejectReason: rejectReason ?? _rejectReason,
        status: status ?? _status,
      );
  String? get rejectReason => _rejectReason;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reject_reason'] = _rejectReason;
    map['status'] = _status;
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

ParentId parentIdFromJson(String str) => ParentId.fromJson(json.decode(str));
String parentIdToJson(ParentId data) => json.encode(data.toJson());

class ParentId {
  ParentId({
    num? profileFor,
  }) {
    _profileFor = profileFor;
  }

  ParentId.fromJson(dynamic json) {
    _profileFor = json['profileFor'];
  }
  num? _profileFor;
  ParentId copyWith({
    num? profileFor,
  }) =>
      ParentId(
        profileFor: profileFor ?? _profileFor,
      );
  num? get profileFor => _profileFor;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['profileFor'] = _profileFor;
    return map;
  }
}

FirstName firstNameFromJson(String str) => FirstName.fromJson(json.decode(str));
String firstNameToJson(FirstName data) => json.encode(data.toJson());

class FirstName {
  FirstName({
    ParentId? parentId,
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    String? id,
    num? v,
    List<Address>? address,
    num? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    String? deviceToken,
    String? deviceType,
    List<Document>? document,
    String? email,
    num? gender,
    num? numerviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
    bool? isProfileSet,
    bool? isAppleLogin,
    bool? isGoogleLogin,
    bool? isRejected,
    bool? isSocial,
    bool? onBoardingStatus,
    num? onBoardingStep,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? profilePicture,
    String? roleId,
    bool? status,
    num? trainingVerificationStatus,
    String? updatedAt,
    num? verificationStatus,
    bool? verified,
    String? dateOfBirth,
  }) {
    _parentId = parentId;
    _name = name;
    _location = location;
    _backgroundVerification = backgroundVerification;
    _id = id;
    _v = v;
    _address = address;
    _certificateVerificationStatus = certificateVerificationStatus;
    _createdAt = createdAt;
    _deleteStatus = deleteStatus;
    _deviceToken = deviceToken;
    _deviceType = deviceType;
    _document = document;
    _email = email;
    _gender = gender;
    _numerviewVerificationStatus = numerviewVerificationStatus;
    _isEmailVerified = isEmailVerified;
    _isPasswordSet = isPasswordSet;
    _isPhoneNumberVerified = isPhoneNumberVerified;
    _isProfileSet = isProfileSet;
    _isAppleLogin = isAppleLogin;
    _isGoogleLogin = isGoogleLogin;
    _isRejected = isRejected;
    _isSocial = isSocial;
    _onBoardingStatus = onBoardingStatus;
    _onBoardingStep = onBoardingStep;
    _otpVerification = otpVerification;
    _password = password;
    _phoneNumber = phoneNumber;
    _profilePicture = profilePicture;
    _roleId = roleId;
    _status = status;
    _trainingVerificationStatus = trainingVerificationStatus;
    _updatedAt = updatedAt;
    _verificationStatus = verificationStatus;
    _verified = verified;
    _dateOfBirth = dateOfBirth;
  }

  FirstName.fromJson(dynamic json) {
    _parentId =
        json['parentId'] != null ? ParentId.fromJson(json['parentId']) : null;
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _backgroundVerification = json['backgroundVerification'] != null
        ? BackgroundVerification.fromJson(json['backgroundVerification'])
        : null;
    _id = json['_id'];
    _v = json['__v'];
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
    _certificateVerificationStatus = json['certificateVerificationStatus'];
    _createdAt = json['createdAt'];
    _deleteStatus = json['deleteStatus'];
    _deviceToken = json['deviceToken'];
    _deviceType = json['deviceType'];
    if (json['document'] != null) {
      _document = [];
      json['document'].forEach((v) {
        _document?.add(Document.fromJson(v));
      });
    }
    _email = json['email'];
    _gender = json['gender'];
    _numerviewVerificationStatus = json['numerviewVerificationStatus'];
    _isEmailVerified = json['isEmailVerified'];
    _isPasswordSet = json['isPasswordSet'];
    _isPhoneNumberVerified = json['isPhoneNumberVerified'];
    _isProfileSet = json['isProfileSet'];
    _isAppleLogin = json['is_apple_login'];
    _isGoogleLogin = json['is_google_login'];
    _isRejected = json['is_rejected'];
    _isSocial = json['is_social'];
    _onBoardingStatus = json['onBoardingStatus'];
    _onBoardingStep = json['onBoardingStep'];
    _otpVerification = json['otpVerification'];
    _password = json['password'];
    _phoneNumber = json['phoneNumber'];
    _profilePicture = json['profilePicture'];
    _roleId = json['roleId'];
    _status = json['status'];
    _trainingVerificationStatus = json['trainingVerificationStatus'];
    _updatedAt = json['updatedAt'];
    _verificationStatus = json['verification_status'];
    _verified = json['verified'];
    _dateOfBirth = json['dateOfBirth'];
  }
  ParentId? _parentId;
  Name? _name;
  Location? _location;
  BackgroundVerification? _backgroundVerification;
  String? _id;
  num? _v;
  List<Address>? _address;
  num? _certificateVerificationStatus;
  String? _createdAt;
  bool? _deleteStatus;
  String? _deviceToken;
  String? _deviceType;
  List<Document>? _document;
  String? _email;
  num? _gender;
  num? _numerviewVerificationStatus;
  bool? _isEmailVerified;
  bool? _isPasswordSet;
  bool? _isPhoneNumberVerified;
  bool? _isProfileSet;
  bool? _isAppleLogin;
  bool? _isGoogleLogin;
  bool? _isRejected;
  bool? _isSocial;
  bool? _onBoardingStatus;
  num? _onBoardingStep;
  bool? _otpVerification;
  String? _password;
  String? _phoneNumber;
  String? _profilePicture;
  String? _roleId;
  bool? _status;
  num? _trainingVerificationStatus;
  String? _updatedAt;
  num? _verificationStatus;
  bool? _verified;
  String? _dateOfBirth;
  FirstName copyWith({
    ParentId? parentId,
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    String? id,
    num? v,
    List<Address>? address,
    num? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    String? deviceToken,
    String? deviceType,
    List<Document>? document,
    String? email,
    num? gender,
    num? numerviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
    bool? isProfileSet,
    bool? isAppleLogin,
    bool? isGoogleLogin,
    bool? isRejected,
    bool? isSocial,
    bool? onBoardingStatus,
    num? onBoardingStep,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? profilePicture,
    String? roleId,
    bool? status,
    num? trainingVerificationStatus,
    String? updatedAt,
    num? verificationStatus,
    bool? verified,
    String? dateOfBirth,
  }) =>
      FirstName(
        parentId: parentId ?? _parentId,
        name: name ?? _name,
        location: location ?? _location,
        backgroundVerification:
            backgroundVerification ?? _backgroundVerification,
        id: id ?? _id,
        v: v ?? _v,
        address: address ?? _address,
        certificateVerificationStatus:
            certificateVerificationStatus ?? _certificateVerificationStatus,
        createdAt: createdAt ?? _createdAt,
        deleteStatus: deleteStatus ?? _deleteStatus,
        deviceToken: deviceToken ?? _deviceToken,
        deviceType: deviceType ?? _deviceType,
        document: document ?? _document,
        email: email ?? _email,
        gender: gender ?? _gender,
        numerviewVerificationStatus:
            numerviewVerificationStatus ?? _numerviewVerificationStatus,
        isEmailVerified: isEmailVerified ?? _isEmailVerified,
        isPasswordSet: isPasswordSet ?? _isPasswordSet,
        isPhoneNumberVerified: isPhoneNumberVerified ?? _isPhoneNumberVerified,
        isProfileSet: isProfileSet ?? _isProfileSet,
        isAppleLogin: isAppleLogin ?? _isAppleLogin,
        isGoogleLogin: isGoogleLogin ?? _isGoogleLogin,
        isRejected: isRejected ?? _isRejected,
        isSocial: isSocial ?? _isSocial,
        onBoardingStatus: onBoardingStatus ?? _onBoardingStatus,
        onBoardingStep: onBoardingStep ?? _onBoardingStep,
        otpVerification: otpVerification ?? _otpVerification,
        password: password ?? _password,
        phoneNumber: phoneNumber ?? _phoneNumber,
        profilePicture: profilePicture ?? _profilePicture,
        roleId: roleId ?? _roleId,
        status: status ?? _status,
        trainingVerificationStatus:
            trainingVerificationStatus ?? _trainingVerificationStatus,
        updatedAt: updatedAt ?? _updatedAt,
        verificationStatus: verificationStatus ?? _verificationStatus,
        verified: verified ?? _verified,
        dateOfBirth: dateOfBirth ?? _dateOfBirth,
      );
  ParentId? get parentId => _parentId;
  Name? get name => _name;
  Location? get location => _location;
  BackgroundVerification? get backgroundVerification => _backgroundVerification;
  String? get id => _id;
  num? get v => _v;
  List<Address>? get address => _address;
  num? get certificateVerificationStatus => _certificateVerificationStatus;
  String? get createdAt => _createdAt;
  bool? get deleteStatus => _deleteStatus;
  String? get deviceToken => _deviceToken;
  String? get deviceType => _deviceType;
  List<Document>? get document => _document;
  String? get email => _email;
  num? get gender => _gender;
  num? get numerviewVerificationStatus => _numerviewVerificationStatus;
  bool? get isEmailVerified => _isEmailVerified;
  bool? get isPasswordSet => _isPasswordSet;
  bool? get isPhoneNumberVerified => _isPhoneNumberVerified;
  bool? get isProfileSet => _isProfileSet;
  bool? get isAppleLogin => _isAppleLogin;
  bool? get isGoogleLogin => _isGoogleLogin;
  bool? get isRejected => _isRejected;
  bool? get isSocial => _isSocial;
  bool? get onBoardingStatus => _onBoardingStatus;
  num? get onBoardingStep => _onBoardingStep;
  bool? get otpVerification => _otpVerification;
  String? get password => _password;
  String? get phoneNumber => _phoneNumber;
  String? get profilePicture => _profilePicture;
  String? get roleId => _roleId;
  bool? get status => _status;
  num? get trainingVerificationStatus => _trainingVerificationStatus;
  String? get updatedAt => _updatedAt;
  num? get verificationStatus => _verificationStatus;
  bool? get verified => _verified;
  String? get dateOfBirth => _dateOfBirth;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_parentId != null) {
      map['parentId'] = _parentId?.toJson();
    }
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    if (_backgroundVerification != null) {
      map['backgroundVerification'] = _backgroundVerification?.toJson();
    }
    map['_id'] = _id;
    map['__v'] = _v;
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    map['certificateVerificationStatus'] = _certificateVerificationStatus;
    map['createdAt'] = _createdAt;
    map['deleteStatus'] = _deleteStatus;
    map['deviceToken'] = _deviceToken;
    map['deviceType'] = _deviceType;
    if (_document != null) {
      map['document'] = _document?.map((v) => v.toJson()).toList();
    }
    map['email'] = _email;
    map['gender'] = _gender;
    map['numerviewVerificationStatus'] = _numerviewVerificationStatus;
    map['isEmailVerified'] = _isEmailVerified;
    map['isPasswordSet'] = _isPasswordSet;
    map['isPhoneNumberVerified'] = _isPhoneNumberVerified;
    map['isProfileSet'] = _isProfileSet;
    map['is_apple_login'] = _isAppleLogin;
    map['is_google_login'] = _isGoogleLogin;
    map['is_rejected'] = _isRejected;
    map['is_social'] = _isSocial;
    map['onBoardingStatus'] = _onBoardingStatus;
    map['onBoardingStep'] = _onBoardingStep;
    map['otpVerification'] = _otpVerification;
    map['password'] = _password;
    map['phoneNumber'] = _phoneNumber;
    map['profilePicture'] = _profilePicture;
    map['roleId'] = _roleId;
    map['status'] = _status;
    map['trainingVerificationStatus'] = _trainingVerificationStatus;
    map['updatedAt'] = _updatedAt;
    map['verification_status'] = _verificationStatus;
    map['verified'] = _verified;
    map['dateOfBirth'] = _dateOfBirth;
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
    String? name,
    String? cardNumber,
    String? accountNumber,
    String? routingNumber,
    dynamic expiry,
    dynamic securityNumber,
    String? paymentMethodId,
    String? stripeId,
    num? type,
    bool? status,
    bool? deleteStatus,
  }) {
    _name = name;
    _cardNumber = cardNumber;
    _accountNumber = accountNumber;
    _routingNumber = routingNumber;
    _expiry = expiry;
    _securityNumber = securityNumber;
    _paymentMethodId = paymentMethodId;
    _stripeId = stripeId;
    _type = type;
    _status = status;
    _deleteStatus = deleteStatus;
  }

  PaymentMethod.fromJson(dynamic json) {
    _name = json['name'];
    _cardNumber = json['cardNumber'];
    _accountNumber = json['accountNumber'];
    _routingNumber = json['routingNumber'];
    _expiry = json['expiry'];
    _securityNumber = json['securityNumber'];
    _paymentMethodId = json['paymentMethodId'];
    _stripeId = json['stripeId'];
    _type = json['type'];
    _status = json['status'];
    _deleteStatus = json['deleteStatus'];
  }
  String? _name;
  String? _cardNumber;
  String? _accountNumber;
  String? _routingNumber;
  dynamic _expiry;
  dynamic _securityNumber;
  String? _paymentMethodId;
  String? _stripeId;
  num? _type;
  bool? _status;
  bool? _deleteStatus;
  PaymentMethod copyWith({
    String? name,
    String? cardNumber,
    String? accountNumber,
    String? routingNumber,
    dynamic expiry,
    dynamic securityNumber,
    String? paymentMethodId,
    String? stripeId,
    num? type,
    bool? status,
    bool? deleteStatus,
  }) =>
      PaymentMethod(
        name: name ?? _name,
        cardNumber: cardNumber ?? _cardNumber,
        accountNumber: accountNumber ?? _accountNumber,
        routingNumber: routingNumber ?? _routingNumber,
        expiry: expiry ?? _expiry,
        securityNumber: securityNumber ?? _securityNumber,
        paymentMethodId: paymentMethodId ?? _paymentMethodId,
        stripeId: stripeId ?? _stripeId,
        type: type ?? _type,
        status: status ?? _status,
        deleteStatus: deleteStatus ?? _deleteStatus,
      );
  String? get name => _name;
  String? get cardNumber => _cardNumber;
  String? get accountNumber => _accountNumber;
  String? get routingNumber => _routingNumber;
  dynamic get expiry => _expiry;
  dynamic get securityNumber => _securityNumber;
  String? get paymentMethodId => _paymentMethodId;
  String? get stripeId => _stripeId;
  num? get type => _type;
  bool? get status => _status;
  bool? get deleteStatus => _deleteStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['cardNumber'] = _cardNumber;
    map['accountNumber'] = _accountNumber;
    map['routingNumber'] = _routingNumber;
    map['expiry'] = _expiry;
    map['securityNumber'] = _securityNumber;
    map['paymentMethodId'] = _paymentMethodId;
    map['stripeId'] = _stripeId;
    map['type'] = _type;
    map['status'] = _status;
    map['deleteStatus'] = _deleteStatus;
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
    Location? location,
    String? locationTag,
    String? profilePic,
    String? age,
    num? totalServices,
    String? profileThumbnail,
    bool? isProfileCompleted,
    bool? isSubscribed,
    num? profileCompletePercentage,
    ProfileCompletion? profileCompletion,
    num? completedServices,
  }) {
    _id = id;
    _name = name;
    _location = location;
    _locationTag = locationTag;
    _profilePic = profilePic;
    _age = age;
    _totalServices = totalServices;
    _profileThumbnail = profileThumbnail;
    _isProfileCompleted = isProfileCompleted;
    _isSubscribed = isSubscribed;
    _profileCompletePercentage = profileCompletePercentage;
    _profileCompletion = profileCompletion;
    _completedServices = completedServices;
  }

  SubProfiles.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _locationTag = json['location_tag'];
    _profilePic = json['profile_pic'];
    _age = json['age'];
    _profileThumbnail = json['profile_thumbnail'];
    _isProfileCompleted = json['is_profile_completed'];
    _profileCompletePercentage = json['profile_complete_percentage'];
    _isSubscribed = json['is_subscription_active'];
    _totalServices = json['totalService'];
    _completedServices = json['completedServices'];
    _profileCompletion = json['profile_completion'] != null
        ? ProfileCompletion.fromJson(json['profile_completion'])
        : null;
  }
  String? _id;
  Name? _name;
  Location? _location;
  String? _locationTag;
  String? _profilePic;
  String? _age;
  String? _profileThumbnail;
  bool? _isProfileCompleted;
  bool? _isSubscribed;
  num? _profileCompletePercentage;
  num? _totalServices;
  ProfileCompletion? _profileCompletion;
  num? _completedServices;
  SubProfiles copyWith({
    String? id,
    Name? name,
    Location? location,
    String? locationTag,
    String? profilePic,
    String? age,
    String? profileThumbnail,
    bool? isProfileCompleted,
    bool? isSubscribed,
    num? profileCompletePercentage,
    num? totalServices,
    ProfileCompletion? profileCompletion,
    num? completedServices,
  }) =>
      SubProfiles(
        id: id ?? _id,
        name: name ?? _name,
        location: location ?? _location,
        locationTag: locationTag ?? _locationTag,
        profilePic: profilePic ?? _profilePic,
        age: age ?? _age,
        totalServices: totalServices ?? _totalServices,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        isProfileCompleted: isProfileCompleted ?? _isProfileCompleted,
        isSubscribed: isSubscribed ?? _isSubscribed,
        profileCompletePercentage:
            profileCompletePercentage ?? _profileCompletePercentage,
        profileCompletion: profileCompletion ?? _profileCompletion,
        completedServices: completedServices ?? _completedServices,
      );
  String? get id => _id;
  Name? get name => _name;
  Location? get location => _location;
  String? get locationTag => _locationTag;
  String? get profilePic => _profilePic;
  String? get age => _age;
  String? get profileThumbnail => _profileThumbnail;
  bool? get isProfileCompleted => _isProfileCompleted;
  bool? get isSubscribed => _isSubscribed;
  num? get profileCompletePercentage => _profileCompletePercentage;
  num? get totalServices => _totalServices;
  ProfileCompletion? get profileCompletion => _profileCompletion;
  num? get completedServices => _completedServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['location_tag'] = _locationTag;
    map['profile_pic'] = _profilePic;
    map['age'] = _age;
    map['profile_thumbnail'] = _profileThumbnail;
    map['is_profile_completed'] = _isProfileCompleted;
    map['profile_complete_percentage'] = _profileCompletePercentage;
    map['is_subscription_active'] = _isSubscribed;
    map['totalServices'] = _totalServices;
    map["completedServices"] = _completedServices;
    if (_profileCompletion != null) {
      map['profile_completion'] = _profileCompletion?.toJson();
    }

    return map;
  }
}

ProblemFaced problemFacedFromJson(String str) =>
    ProblemFaced.fromJson(json.decode(str));
String problemFacedToJson(ProblemFaced data) => json.encode(data.toJson());

class ProblemFaced {
  ProblemFaced({
    String? issueDescription,
    String? problemDescription,
  }) {
    _issueDescription = issueDescription;
    _problemDescription = problemDescription;
  }

  ProblemFaced.fromJson(dynamic json) {
    _issueDescription = json['issueDescription'];
    _problemDescription = json['problemDescription'];
  }
  String? _issueDescription;
  String? _problemDescription;
  ProblemFaced copyWith({
    String? issueDescription,
    String? problemDescription,
  }) =>
      ProblemFaced(
        issueDescription: issueDescription ?? _issueDescription,
        problemDescription: problemDescription ?? _problemDescription,
      );
  String? get issueDescription => _issueDescription;
  String? get problemDescription => _problemDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['issueDescription'] = _issueDescription;
    map['problemDescription'] = _problemDescription;
    return map;
  }
}

Tier1 tier1FromJson(String str) => Tier1.fromJson(json.decode(str));
String tier1ToJson(Tier1 data) => json.encode(data.toJson());

class Tier1 {
  Tier1({
    String? id,
    bool? isExtra,
  }) {
    _id = id;
    _isExtra = isExtra;
    _id = id;
  }

  Tier1.fromJson(dynamic json) {
    _id = json['id'];
    _isExtra = json['is_extra'];
    _id = json['_id'];
  }
  String? _id;
  bool? _isExtra;
  Tier1 copyWith({
    String? id,
    bool? isExtra,
  }) =>
      Tier1(
        id: id ?? _id,
        isExtra: isExtra ?? _isExtra,
      );
  String? get id => _id;
  bool? get isExtra => _isExtra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['is_extra'] = _isExtra;
    map['_id'] = _id;
    return map;
  }
}

ProfileCompletion profileCompletionFromJson(String str) =>
    ProfileCompletion.fromJson(json.decode(str));
String profileCompletionToJson(ProfileCompletion data) =>
    json.encode(data.toJson());

class ProfileCompletion {
  ProfileCompletion({
    bool? personalDetails,
    bool? preferences,
    bool? contacts,
    bool? healthCondition,
    bool? termsAndConditions,
  }) {
    _personalDetails = personalDetails;
    _preferences = preferences;
    _contacts = contacts;
    _healthCondition = healthCondition;
    _termsAndConditions = termsAndConditions;
  }

  ProfileCompletion.fromJson(dynamic json) {
    _personalDetails = json['personalDetails'];
    _preferences = json['preferences'];
    _contacts = json['contacts'];
    _healthCondition = json['healthCondition'];
    _termsAndConditions = json['termsAndConditions'];
  }
  bool? _personalDetails;
  bool? _preferences;
  bool? _contacts;
  bool? _healthCondition;
  bool? _termsAndConditions;
  ProfileCompletion copyWith({
    bool? personalDetails,
    bool? preferences,
    bool? contacts,
    bool? healthCondition,
    bool? termsAndConditions,
  }) =>
      ProfileCompletion(
        personalDetails: personalDetails ?? _personalDetails,
        preferences: preferences ?? _preferences,
        contacts: contacts ?? _contacts,
        healthCondition: healthCondition ?? _healthCondition,
        termsAndConditions: termsAndConditions ?? _termsAndConditions,
      );
  bool? get personalDetails => _personalDetails;
  bool? get preferences => _preferences;
  bool? get contacts => _contacts;
  bool? get healthCondition => _healthCondition;
  bool? get termsAndConditions => _termsAndConditions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['personalDetails'] = _personalDetails;
    map['preferences'] = _preferences;
    map['contacts'] = _contacts;
    map['healthCondition'] = _healthCondition;
    map['termsAndConditions'] = _termsAndConditions;
    return map;
  }
}
