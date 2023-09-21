import 'dart:convert';

ClientServiceResponse clientServiceResponseFromJson(String str) =>
    ClientServiceResponse.fromJson(json.decode(str));

String clientServiceResponseToJson(ClientServiceResponse data) =>
    json.encode(data.toJson());

class ClientServiceResponse {
  ClientServiceResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ClientServiceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  Data? _data;

  ClientServiceResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      ClientServiceResponse(
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
    List<ClientService>? clientService,
  }) {
    _clientService = clientService;
  }

  Data.fromJson(dynamic json) {
    if (json['services'] != null) {
      _clientService = [];
      json['services'].forEach((v) {
        _clientService?.add(ClientService.fromJson(v));
      });
    }
  }

  List<ClientService>? _clientService;

  Data copyWith({
    List<ClientService>? clientService,
  }) =>
      Data(
        clientService: clientService ?? _clientService,
      );

  List<ClientService>? get clientService => _clientService;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_clientService != null) {
      map['services'] = _clientService?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

ClientService clientServiceFromJson(String str) =>
    ClientService.fromJson(json.decode(str));

String clientServiceToJson(ClientService data) => json.encode(data.toJson());

class ClientService {
  ClientService({
    String? id,
    String? userId,
    String? startDateTime,
    String? endDateTime,
    num? totalServiceFee,
    num? status,
    String? cancelReason,
    num? serviceRating,
    num? tip,
    Client? client,
    Caregiver? caregiver,
  }) {
    _id = id;
    _userId = userId;
    _startDateTime = startDateTime;
    _endDateTime = endDateTime;
    _totalServiceFee = totalServiceFee;
    _status = status;
    _cancelReason = cancelReason;
    _serviceRating = serviceRating;
    _tip = tip;
    _client = client;
    _caregiver = caregiver;
  }

  ClientService.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['userId'];
    _startDateTime = json['start_date_time'];
    _endDateTime = json['end_date_time'];
    _totalServiceFee = json['total_service_fee'];
    _status = json['status'];
    _cancelReason = json['cancel_reason'];
    _serviceRating = json['service_rating'];
    _tip = json['tip'];
    _client = json['client'] != null ? Client.fromJson(json['client']) : null;
    _caregiver = json['caregiver'] != null
        ? Caregiver.fromJson(json['caregiver'])
        : null;
  }

  String? _id;
  String? _userId;
  String? _startDateTime;
  String? _endDateTime;
  num? _totalServiceFee;
  num? _status;
  String? _cancelReason;
  num? _serviceRating;
  num? _tip;
  Client? _client;
  Caregiver? _caregiver;

  ClientService copyWith({
    String? id,
    String? userId,
    String? startDateTime,
    String? endDateTime,
    num? totalServiceFee,
    num? status,
    String? cancelReason,
    num? serviceRating,
    num? tip,
    Client? client,
    Caregiver? caregiver,
  }) =>
      ClientService(
        id: id ?? _id,
        userId: userId ?? _userId,
        startDateTime: startDateTime ?? _startDateTime,
        endDateTime: endDateTime ?? _endDateTime,
        totalServiceFee: totalServiceFee ?? _totalServiceFee,
        status: status ?? _status,
        cancelReason: cancelReason ?? _cancelReason,
        serviceRating: serviceRating ?? _serviceRating,
        tip: tip ?? _tip,
        client: client ?? _client,
        caregiver: caregiver ?? _caregiver,
      );

  String? get id => _id;

  String? get userId => _userId;

  String? get startDateTime => _startDateTime;

  String? get endDateTime => _endDateTime;

  num? get totalServiceFee => _totalServiceFee;

  num? get status => _status;

  String? get cancelReason => _cancelReason;

  num? get serviceRating => _serviceRating;

  num? get tip => _tip;

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
    map['cancel_reason'] = _cancelReason;
    map['service_rating'] = _serviceRating;
    map['tip'] = _tip;
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
    FirstName? firstName,
    LastName? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
    CompletedServices? completedServices,
    NotcompletedServices? notcompletedServices,
    List<String>? userComplaints,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePicReferrence = profilePicReferrence;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
    _completedServices = completedServices;
    _notcompletedServices = notcompletedServices;
    _userComplaints = userComplaints;
  }

  Caregiver.fromJson(dynamic json) {
    _firstName = json['firstName'] != null
        ? FirstName.fromJson(json['firstName'])
        : null;
    _lastName =
        json['lastName'] != null ? LastName.fromJson(json['lastName']) : null;
    _profilePicReferrence = json['profile_pic_referrence'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
    _completedServices = json['completedServices'] != null
        ? CompletedServices.fromJson(json['completedServices'])
        : null;
    _notcompletedServices = json['notcompletedServices'] != null
        ? NotcompletedServices.fromJson(json['notcompletedServices'])
        : null;
    _userComplaints = json['user_complaints'] != null
        ? json['user_complaints'].cast<String>()
        : [];
  }

  FirstName? _firstName;
  LastName? _lastName;
  String? _profilePicReferrence;
  String? _profilePic;
  String? _profileThumbnail;
  CompletedServices? _completedServices;
  NotcompletedServices? _notcompletedServices;
  List<String>? _userComplaints;

  Caregiver copyWith({
    FirstName? firstName,
    LastName? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
    CompletedServices? completedServices,
    NotcompletedServices? notcompletedServices,
    List<String>? userComplaints,
  }) =>
      Caregiver(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePicReferrence: profilePicReferrence ?? _profilePicReferrence,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        completedServices: completedServices ?? _completedServices,
        notcompletedServices: notcompletedServices ?? _notcompletedServices,
        userComplaints: userComplaints ?? _userComplaints,
      );

  FirstName? get firstName => _firstName;

  LastName? get lastName => _lastName;

  String? get profilePicReferrence => _profilePicReferrence;

  String? get profilePic => _profilePic;

  String? get profileThumbnail => _profileThumbnail;

  CompletedServices? get completedServices => _completedServices;

  NotcompletedServices? get notcompletedServices => _notcompletedServices;

  List<String>? get userComplaints => _userComplaints;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_firstName != null) {
      map['firstName'] = _firstName?.toJson();
    }
    if (_lastName != null) {
      map['lastName'] = _lastName?.toJson();
    }
    map['profile_pic_referrence'] = _profilePicReferrence;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    if (_completedServices != null) {
      map['completedServices'] = _completedServices?.toJson();
    }
    if (_notcompletedServices != null) {
      map['notcompletedServices'] = _notcompletedServices?.toJson();
    }
    map['user_complaints'] = _userComplaints;
    return map;
  }
}

NotcompletedServices notcompletedServicesFromJson(String str) =>
    NotcompletedServices.fromJson(json.decode(str));

String notcompletedServicesToJson(NotcompletedServices data) =>
    json.encode(data.toJson());

class NotcompletedServices {
  NotcompletedServices({
    List<String>? tier1,
    List<String>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  NotcompletedServices.fromJson(dynamic json) {
    _tier1 = json['tier1'] != null ? json['tier1'].cast<String>() : [];
    _tier2 = json['tier2'] != null ? json['tier2'].cast<String>() : [];
  }

  List<String>? _tier1;
  List<String>? _tier2;

  NotcompletedServices copyWith({
    List<String>? tier1,
    List<String>? tier2,
  }) =>
      NotcompletedServices(
        tier1: tier1 ?? _tier1,
        tier2: tier2 ?? _tier2,
      );

  List<String>? get tier1 => _tier1;

  List<String>? get tier2 => _tier2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tier1'] = _tier1;
    map['tier2'] = _tier2;
    return map;
  }
}

CompletedServices completedServicesFromJson(String str) =>
    CompletedServices.fromJson(json.decode(str));

String completedServicesToJson(CompletedServices data) =>
    json.encode(data.toJson());

class CompletedServices {
  CompletedServices({
    List<String>? tier1,
    List<String>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  CompletedServices.fromJson(dynamic json) {
    _tier1 = json['tier1'] != null ? json['tier1'].cast<String>() : [];
    _tier2 = json['tier2'] != null ? json['tier2'].cast<String>() : [];
  }

  List<String>? _tier1;
  List<String>? _tier2;

  CompletedServices copyWith({
    List<String>? tier1,
    List<String>? tier2,
  }) =>
      CompletedServices(
        tier1: tier1 ?? _tier1,
        tier2: tier2 ?? _tier2,
      );

  List<String>? get tier1 => _tier1;

  List<String>? get tier2 => _tier2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tier1'] = _tier1;
    map['tier2'] = _tier2;
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
    bool? isProfileSet,
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
    num? interviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
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
    _isProfileSet = isProfileSet;
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
    _interviewVerificationStatus = interviewVerificationStatus;
    _isEmailVerified = isEmailVerified;
    _isPasswordSet = isPasswordSet;
    _isPhoneNumberVerified = isPhoneNumberVerified;
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

  LastName.fromJson(dynamic json) {
    _parentId =
        json['parentId'] != null ? ParentId.fromJson(json['parentId']) : null;
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _backgroundVerification = json['backgroundVerification'] != null
        ? BackgroundVerification.fromJson(json['backgroundVerification'])
        : null;
    _isProfileSet = json['isProfileSet'];
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
    _interviewVerificationStatus = json['interviewVerificationStatus'];
    _isEmailVerified = json['isEmailVerified'];
    _isPasswordSet = json['isPasswordSet'];
    _isPhoneNumberVerified = json['isPhoneNumberVerified'];
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
  bool? _isProfileSet;
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
  num? _interviewVerificationStatus;
  bool? _isEmailVerified;
  bool? _isPasswordSet;
  bool? _isPhoneNumberVerified;
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

  LastName copyWith({
    ParentId? parentId,
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    bool? isProfileSet,
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
    num? interviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
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
      LastName(
        parentId: parentId ?? _parentId,
        name: name ?? _name,
        location: location ?? _location,
        backgroundVerification:
            backgroundVerification ?? _backgroundVerification,
        isProfileSet: isProfileSet ?? _isProfileSet,
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
        interviewVerificationStatus:
            interviewVerificationStatus ?? _interviewVerificationStatus,
        isEmailVerified: isEmailVerified ?? _isEmailVerified,
        isPasswordSet: isPasswordSet ?? _isPasswordSet,
        isPhoneNumberVerified: isPhoneNumberVerified ?? _isPhoneNumberVerified,
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

  bool? get isProfileSet => _isProfileSet;

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

  num? get interviewVerificationStatus => _interviewVerificationStatus;

  bool? get isEmailVerified => _isEmailVerified;

  bool? get isPasswordSet => _isPasswordSet;

  bool? get isPhoneNumberVerified => _isPhoneNumberVerified;

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
    map['isProfileSet'] = _isProfileSet;
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
    map['interviewVerificationStatus'] = _interviewVerificationStatus;
    map['isEmailVerified'] = _isEmailVerified;
    map['isPasswordSet'] = _isPasswordSet;
    map['isPhoneNumberVerified'] = _isPhoneNumberVerified;
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
    dynamic locationTag,
    String? streetName,
    String? lattitude,
    String? longitude,
    String? city,
    String? state,
    String? address,
    String? zipCode,
    bool? isDelete,
    bool? isDefault,
    String? id,
  }) {
    _location = location;
    _locationTag = locationTag;
    _streetName = streetName;
    _lattitude = lattitude;
    _longitude = longitude;
    _city = city;
    _state = state;
    _address = address;
    _zipCode = zipCode;
    _isDelete = isDelete;
    _isDefault = isDefault;
    _id = id;
  }

  Address.fromJson(dynamic json) {
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _locationTag = json['locationTag'];
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _city = json['city'];
    _state = json['state'];
    _address = json['address'];
    _zipCode = json['zipCode'];
    _isDelete = json['is_delete'];
    _isDefault = json['is_default'];
    _id = json['_id'];
  }

  Location? _location;
  dynamic _locationTag;
  String? _streetName;
  String? _lattitude;
  String? _longitude;
  String? _city;
  String? _state;
  String? _address;
  String? _zipCode;
  bool? _isDelete;
  bool? _isDefault;
  String? _id;

  Address copyWith({
    Location? location,
    dynamic locationTag,
    String? streetName,
    String? lattitude,
    String? longitude,
    String? city,
    String? state,
    String? address,
    String? zipCode,
    bool? isDelete,
    bool? isDefault,
    String? id,
  }) =>
      Address(
        location: location ?? _location,
        locationTag: locationTag ?? _locationTag,
        streetName: streetName ?? _streetName,
        lattitude: lattitude ?? _lattitude,
        longitude: longitude ?? _longitude,
        city: city ?? _city,
        state: state ?? _state,
        address: address ?? _address,
        zipCode: zipCode ?? _zipCode,
        isDelete: isDelete ?? _isDelete,
        isDefault: isDefault ?? _isDefault,
        id: id ?? _id,
      );

  Location? get location => _location;

  dynamic get locationTag => _locationTag;

  String? get streetName => _streetName;

  String? get lattitude => _lattitude;

  String? get longitude => _longitude;

  String? get city => _city;

  String? get state => _state;

  String? get address => _address;

  String? get zipCode => _zipCode;

  bool? get isDelete => _isDelete;

  bool? get isDefault => _isDefault;

  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['locationTag'] = _locationTag;
    map['streetName'] = _streetName;
    map['lattitude'] = _lattitude;
    map['longitude'] = _longitude;
    map['city'] = _city;
    map['state'] = _state;
    map['address'] = _address;
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
    int? status,
  }) {
    _rejectReason = rejectReason;
    _status = status;
  }

  BackgroundVerification.fromJson(dynamic json) {
    _rejectReason = json['reject_reason'];
    _status = json['status'];
  }

  String? _rejectReason;
  int? _status;

  BackgroundVerification copyWith({
    String? rejectReason,
    int? status,
  }) =>
      BackgroundVerification(
        rejectReason: rejectReason ?? _rejectReason,
        status: status ?? _status,
      );

  String? get rejectReason => _rejectReason;

  int? get status => _status;

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
    int? profileFor,
  }) {
    _profileFor = profileFor;
  }

  ParentId.fromJson(dynamic json) {
    _profileFor = json['profileFor'];
  }

  int? _profileFor;

  ParentId copyWith({
    int? profileFor,
  }) =>
      ParentId(
        profileFor: profileFor ?? _profileFor,
      );

  int? get profileFor => _profileFor;

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
    bool? isProfileSet,
    String? id,
    int? v,
    List<Address>? address,
    int? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    String? deviceToken,
    String? deviceType,
    List<Document>? document,
    String? email,
    int? gender,
    int? interviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
    bool? isAppleLogin,
    bool? isGoogleLogin,
    bool? isRejected,
    bool? isSocial,
    bool? onBoardingStatus,
    int? onBoardingStep,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? profilePicture,
    String? roleId,
    bool? status,
    int? trainingVerificationStatus,
    String? updatedAt,
    int? verificationStatus,
    bool? verified,
    String? dateOfBirth,
  }) {
    _parentId = parentId;
    _name = name;
    _location = location;
    _backgroundVerification = backgroundVerification;
    _isProfileSet = isProfileSet;
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
    _interviewVerificationStatus = interviewVerificationStatus;
    _isEmailVerified = isEmailVerified;
    _isPasswordSet = isPasswordSet;
    _isPhoneNumberVerified = isPhoneNumberVerified;
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
    _isProfileSet = json['isProfileSet'];
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
    _interviewVerificationStatus = json['interviewVerificationStatus'];
    _isEmailVerified = json['isEmailVerified'];
    _isPasswordSet = json['isPasswordSet'];
    _isPhoneNumberVerified = json['isPhoneNumberVerified'];
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
  bool? _isProfileSet;
  String? _id;
  int? _v;
  List<Address>? _address;
  int? _certificateVerificationStatus;
  String? _createdAt;
  bool? _deleteStatus;
  String? _deviceToken;
  String? _deviceType;
  List<Document>? _document;
  String? _email;
  int? _gender;
  int? _interviewVerificationStatus;
  bool? _isEmailVerified;
  bool? _isPasswordSet;
  bool? _isPhoneNumberVerified;
  bool? _isAppleLogin;
  bool? _isGoogleLogin;
  bool? _isRejected;
  bool? _isSocial;
  bool? _onBoardingStatus;
  int? _onBoardingStep;
  bool? _otpVerification;
  String? _password;
  String? _phoneNumber;
  String? _profilePicture;
  String? _roleId;
  bool? _status;
  int? _trainingVerificationStatus;
  String? _updatedAt;
  int? _verificationStatus;
  bool? _verified;
  String? _dateOfBirth;

  FirstName copyWith({
    ParentId? parentId,
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    bool? isProfileSet,
    String? id,
    int? v,
    List<Address>? address,
    int? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    String? deviceToken,
    String? deviceType,
    List<Document>? document,
    String? email,
    int? gender,
    int? interviewVerificationStatus,
    bool? isEmailVerified,
    bool? isPasswordSet,
    bool? isPhoneNumberVerified,
    bool? isAppleLogin,
    bool? isGoogleLogin,
    bool? isRejected,
    bool? isSocial,
    bool? onBoardingStatus,
    int? onBoardingStep,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? profilePicture,
    String? roleId,
    bool? status,
    int? trainingVerificationStatus,
    String? updatedAt,
    int? verificationStatus,
    bool? verified,
    String? dateOfBirth,
  }) =>
      FirstName(
        parentId: parentId ?? _parentId,
        name: name ?? _name,
        location: location ?? _location,
        backgroundVerification:
            backgroundVerification ?? _backgroundVerification,
        isProfileSet: isProfileSet ?? _isProfileSet,
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
        interviewVerificationStatus:
            interviewVerificationStatus ?? _interviewVerificationStatus,
        isEmailVerified: isEmailVerified ?? _isEmailVerified,
        isPasswordSet: isPasswordSet ?? _isPasswordSet,
        isPhoneNumberVerified: isPhoneNumberVerified ?? _isPhoneNumberVerified,
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

  bool? get isProfileSet => _isProfileSet;

  String? get id => _id;

  int? get v => _v;

  List<Address>? get address => _address;

  int? get certificateVerificationStatus => _certificateVerificationStatus;

  String? get createdAt => _createdAt;

  bool? get deleteStatus => _deleteStatus;

  String? get deviceToken => _deviceToken;

  String? get deviceType => _deviceType;

  List<Document>? get document => _document;

  String? get email => _email;

  int? get gender => _gender;

  int? get interviewVerificationStatus => _interviewVerificationStatus;

  bool? get isEmailVerified => _isEmailVerified;

  bool? get isPasswordSet => _isPasswordSet;

  bool? get isPhoneNumberVerified => _isPhoneNumberVerified;

  bool? get isAppleLogin => _isAppleLogin;

  bool? get isGoogleLogin => _isGoogleLogin;

  bool? get isRejected => _isRejected;

  bool? get isSocial => _isSocial;

  bool? get onBoardingStatus => _onBoardingStatus;

  int? get onBoardingStep => _onBoardingStep;

  bool? get otpVerification => _otpVerification;

  String? get password => _password;

  String? get phoneNumber => _phoneNumber;

  String? get profilePicture => _profilePicture;

  String? get roleId => _roleId;

  bool? get status => _status;

  int? get trainingVerificationStatus => _trainingVerificationStatus;

  String? get updatedAt => _updatedAt;

  int? get verificationStatus => _verificationStatus;

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
    map['isProfileSet'] = _isProfileSet;
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
    map['interviewVerificationStatus'] = _interviewVerificationStatus;
    map['isEmailVerified'] = _isEmailVerified;
    map['isPasswordSet'] = _isPasswordSet;
    map['isPhoneNumberVerified'] = _isPhoneNumberVerified;
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
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePicReferrence = profilePicReferrence;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
  }

  Client.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _profilePicReferrence = json['profile_pic_referrence'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
  }

  String? _firstName;
  String? _lastName;
  String? _profilePicReferrence;
  String? _profilePic;
  String? _profileThumbnail;

  Client copyWith({
    String? firstName,
    String? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
  }) =>
      Client(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePicReferrence: profilePicReferrence ?? _profilePicReferrence,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
      );

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get profilePicReferrence => _profilePicReferrence;

  String? get profilePic => _profilePic;

  String? get profileThumbnail => _profileThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['profile_pic_referrence'] = _profilePicReferrence;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    return map;
  }
}
