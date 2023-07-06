import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"name":{"firstName":"admin cg","lastName":"cg"},"location":{"type":"Point","coordinates":[36.7783,36.7783]},"backgroundVerification":{"reject_reason":"","status":0},"_id":"64a3bfd17129baeeb1062ecd","__v":1,"activeStatus":true,"address":[{"location":{"type":"Point","coordinates":[36.7783,36.7783]},"streetName":"xzzxs","lattitude":"36.7783","longitude":"36.7783","city":"5a0ae711737d5eb249331c7f","state":"643d82526cba31e037a0dc2b","address":"dsad","zipCode":"78787878","is_delete":false,"is_default":false,"_id":"64a3c07d7129baeeb1062ed1"}],"certificateVerificationStatus":0,"createdAt":"2023-07-04T06:44:33.291Z","deleteStatus":false,"document":[{"type":"643d82e56cba31e037a0dc60","valid":true,"number":"sadsads","expiry":"2024-09-25T00:00:00.000Z","file":["dsa.jpg"],"status":false,"_id":"64a3c07d7129baeeb1062ed2"}],"email":"adminatedcg1@mail.com","gender":1,"interviewVerificationStatus":0,"is_rejected":false,"onBoardingStatus":true,"otpVerification":false,"password":"$2b$10$.VppJHxzMoMHgrFIqYw25uuuBQf5feeLcRdzV/b3JqfeFQD.KssDW","phoneNumber":"8899889989","roleId":"64409b7d63e7736ada36814a","status":true,"trainingVerificationStatus":0,"updatedAt":"2023-07-04T10:07:13.487Z","verification_status":1,"verified":false,"dateOfBirth":"1998-05-10T00:00:00.000Z","profilePicture":"dadd.jpg","onBoardingStep":8}

CaregiverCreationResponse caregiverCreationResponseFromJson(String str) =>
    CaregiverCreationResponse.fromJson(json.decode(str));
String caregiverCreationResponseToJson(CaregiverCreationResponse data) =>
    json.encode(data.toJson());

class CaregiverCreationResponse {
  CaregiverCreationResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  CaregiverCreationResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  CaregiverCreationResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      CaregiverCreationResponse(
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

/// name : {"firstName":"admin cg","lastName":"cg"}
/// location : {"type":"Point","coordinates":[36.7783,36.7783]}
/// backgroundVerification : {"reject_reason":"","status":0}
/// _id : "64a3bfd17129baeeb1062ecd"
/// __v : 1
/// activeStatus : true
/// address : [{"location":{"type":"Point","coordinates":[36.7783,36.7783]},"streetName":"xzzxs","lattitude":"36.7783","longitude":"36.7783","city":"5a0ae711737d5eb249331c7f","state":"643d82526cba31e037a0dc2b","address":"dsad","zipCode":"78787878","is_delete":false,"is_default":false,"_id":"64a3c07d7129baeeb1062ed1"}]
/// certificateVerificationStatus : 0
/// createdAt : "2023-07-04T06:44:33.291Z"
/// deleteStatus : false
/// document : [{"type":"643d82e56cba31e037a0dc60","valid":true,"number":"sadsads","expiry":"2024-09-25T00:00:00.000Z","file":["dsa.jpg"],"status":false,"_id":"64a3c07d7129baeeb1062ed2"}]
/// email : "adminatedcg1@mail.com"
/// gender : 1
/// interviewVerificationStatus : 0
/// is_rejected : false
/// onBoardingStatus : true
/// otpVerification : false
/// password : "$2b$10$.VppJHxzMoMHgrFIqYw25uuuBQf5feeLcRdzV/b3JqfeFQD.KssDW"
/// phoneNumber : "8899889989"
/// roleId : "64409b7d63e7736ada36814a"
/// status : true
/// trainingVerificationStatus : 0
/// updatedAt : "2023-07-04T10:07:13.487Z"
/// verification_status : 1
/// verified : false
/// dateOfBirth : "1998-05-10T00:00:00.000Z"
/// profilePicture : "dadd.jpg"
/// onBoardingStep : 8

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    String? id,
    num? v,
    bool? activeStatus,
    List<Address>? address,
    num? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    List<Document>? document,
    String? email,
    num? gender,
    num? interviewVerificationStatus,
    bool? isRejected,
    bool? onBoardingStatus,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? roleId,
    bool? status,
    num? trainingVerificationStatus,
    String? updatedAt,
    num? verificationStatus,
    bool? verified,
    String? dateOfBirth,
    String? profilePicture,
    num? onBoardingStep,
  }) {
    _name = name;
    _location = location;
    _backgroundVerification = backgroundVerification;
    _id = id;
    _v = v;
    _activeStatus = activeStatus;
    _address = address;
    _certificateVerificationStatus = certificateVerificationStatus;
    _createdAt = createdAt;
    _deleteStatus = deleteStatus;
    _document = document;
    _email = email;
    _gender = gender;
    _interviewVerificationStatus = interviewVerificationStatus;
    _isRejected = isRejected;
    _onBoardingStatus = onBoardingStatus;
    _otpVerification = otpVerification;
    _password = password;
    _phoneNumber = phoneNumber;
    _roleId = roleId;
    _status = status;
    _trainingVerificationStatus = trainingVerificationStatus;
    _updatedAt = updatedAt;
    _verificationStatus = verificationStatus;
    _verified = verified;
    _dateOfBirth = dateOfBirth;
    _profilePicture = profilePicture;
    _onBoardingStep = onBoardingStep;
  }

  Data.fromJson(dynamic json) {
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _backgroundVerification = json['backgroundVerification'] != null
        ? BackgroundVerification.fromJson(json['backgroundVerification'])
        : null;
    _id = json['_id'];
    _v = json['__v'];
    _activeStatus = json['activeStatus'];
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
    _certificateVerificationStatus = json['certificateVerificationStatus'];
    _createdAt = json['createdAt'];
    _deleteStatus = json['deleteStatus'];
    if (json['document'] != null) {
      _document = [];
      json['document'].forEach((v) {
        _document?.add(Document.fromJson(v));
      });
    }
    _email = json['email'];
    _gender = json['gender'];
    _interviewVerificationStatus = json['interviewVerificationStatus'];
    _isRejected = json['is_rejected'];
    _onBoardingStatus = json['onBoardingStatus'];
    _otpVerification = json['otpVerification'];
    _password = json['password'];
    _phoneNumber = json['phoneNumber'];
    _roleId = json['roleId'];
    _status = json['status'];
    _trainingVerificationStatus = json['trainingVerificationStatus'];
    _updatedAt = json['updatedAt'];
    _verificationStatus = json['verification_status'];
    _verified = json['verified'];
    _dateOfBirth = json['dateOfBirth'];
    _profilePicture = json['profilePicture'];
    _onBoardingStep = json['onBoardingStep'];
  }
  Name? _name;
  Location? _location;
  BackgroundVerification? _backgroundVerification;
  String? _id;
  num? _v;
  bool? _activeStatus;
  List<Address>? _address;
  num? _certificateVerificationStatus;
  String? _createdAt;
  bool? _deleteStatus;
  List<Document>? _document;
  String? _email;
  num? _gender;
  num? _interviewVerificationStatus;
  bool? _isRejected;
  bool? _onBoardingStatus;
  bool? _otpVerification;
  String? _password;
  String? _phoneNumber;
  String? _roleId;
  bool? _status;
  num? _trainingVerificationStatus;
  String? _updatedAt;
  num? _verificationStatus;
  bool? _verified;
  String? _dateOfBirth;
  String? _profilePicture;
  num? _onBoardingStep;
  Data copyWith({
    Name? name,
    Location? location,
    BackgroundVerification? backgroundVerification,
    String? id,
    num? v,
    bool? activeStatus,
    List<Address>? address,
    num? certificateVerificationStatus,
    String? createdAt,
    bool? deleteStatus,
    List<Document>? document,
    String? email,
    num? gender,
    num? interviewVerificationStatus,
    bool? isRejected,
    bool? onBoardingStatus,
    bool? otpVerification,
    String? password,
    String? phoneNumber,
    String? roleId,
    bool? status,
    num? trainingVerificationStatus,
    String? updatedAt,
    num? verificationStatus,
    bool? verified,
    String? dateOfBirth,
    String? profilePicture,
    num? onBoardingStep,
  }) =>
      Data(
        name: name ?? _name,
        location: location ?? _location,
        backgroundVerification:
            backgroundVerification ?? _backgroundVerification,
        id: id ?? _id,
        v: v ?? _v,
        activeStatus: activeStatus ?? _activeStatus,
        address: address ?? _address,
        certificateVerificationStatus:
            certificateVerificationStatus ?? _certificateVerificationStatus,
        createdAt: createdAt ?? _createdAt,
        deleteStatus: deleteStatus ?? _deleteStatus,
        document: document ?? _document,
        email: email ?? _email,
        gender: gender ?? _gender,
        interviewVerificationStatus:
            interviewVerificationStatus ?? _interviewVerificationStatus,
        isRejected: isRejected ?? _isRejected,
        onBoardingStatus: onBoardingStatus ?? _onBoardingStatus,
        otpVerification: otpVerification ?? _otpVerification,
        password: password ?? _password,
        phoneNumber: phoneNumber ?? _phoneNumber,
        roleId: roleId ?? _roleId,
        status: status ?? _status,
        trainingVerificationStatus:
            trainingVerificationStatus ?? _trainingVerificationStatus,
        updatedAt: updatedAt ?? _updatedAt,
        verificationStatus: verificationStatus ?? _verificationStatus,
        verified: verified ?? _verified,
        dateOfBirth: dateOfBirth ?? _dateOfBirth,
        profilePicture: profilePicture ?? _profilePicture,
        onBoardingStep: onBoardingStep ?? _onBoardingStep,
      );
  Name? get name => _name;
  Location? get location => _location;
  BackgroundVerification? get backgroundVerification => _backgroundVerification;
  String? get id => _id;
  num? get v => _v;
  bool? get activeStatus => _activeStatus;
  List<Address>? get address => _address;
  num? get certificateVerificationStatus => _certificateVerificationStatus;
  String? get createdAt => _createdAt;
  bool? get deleteStatus => _deleteStatus;
  List<Document>? get document => _document;
  String? get email => _email;
  num? get gender => _gender;
  num? get interviewVerificationStatus => _interviewVerificationStatus;
  bool? get isRejected => _isRejected;
  bool? get onBoardingStatus => _onBoardingStatus;
  bool? get otpVerification => _otpVerification;
  String? get password => _password;
  String? get phoneNumber => _phoneNumber;
  String? get roleId => _roleId;
  bool? get status => _status;
  num? get trainingVerificationStatus => _trainingVerificationStatus;
  String? get updatedAt => _updatedAt;
  num? get verificationStatus => _verificationStatus;
  bool? get verified => _verified;
  String? get dateOfBirth => _dateOfBirth;
  String? get profilePicture => _profilePicture;
  num? get onBoardingStep => _onBoardingStep;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
    map['activeStatus'] = _activeStatus;
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    map['certificateVerificationStatus'] = _certificateVerificationStatus;
    map['createdAt'] = _createdAt;
    map['deleteStatus'] = _deleteStatus;
    if (_document != null) {
      map['document'] = _document?.map((v) => v.toJson()).toList();
    }
    map['email'] = _email;
    map['gender'] = _gender;
    map['interviewVerificationStatus'] = _interviewVerificationStatus;
    map['is_rejected'] = _isRejected;
    map['onBoardingStatus'] = _onBoardingStatus;
    map['otpVerification'] = _otpVerification;
    map['password'] = _password;
    map['phoneNumber'] = _phoneNumber;
    map['roleId'] = _roleId;
    map['status'] = _status;
    map['trainingVerificationStatus'] = _trainingVerificationStatus;
    map['updatedAt'] = _updatedAt;
    map['verification_status'] = _verificationStatus;
    map['verified'] = _verified;
    map['dateOfBirth'] = _dateOfBirth;
    map['profilePicture'] = _profilePicture;
    map['onBoardingStep'] = _onBoardingStep;
    return map;
  }
}

/// type : "643d82e56cba31e037a0dc60"
/// valid : true
/// number : "sadsads"
/// expiry : "2024-09-25T00:00:00.000Z"
/// file : ["dsa.jpg"]
/// status : false
/// _id : "64a3c07d7129baeeb1062ed2"

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

/// location : {"type":"Point","coordinates":[36.7783,36.7783]}
/// streetName : "xzzxs"
/// lattitude : "36.7783"
/// longitude : "36.7783"
/// city : "5a0ae711737d5eb249331c7f"
/// state : "643d82526cba31e037a0dc2b"
/// address : "dsad"
/// zipCode : "78787878"
/// is_delete : false
/// is_default : false
/// _id : "64a3c07d7129baeeb1062ed1"

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
    map['zipCode'] = _zipCode;
    map['is_delete'] = _isDelete;
    map['is_default'] = _isDefault;
    map['_id'] = _id;
    return map;
  }
}

/// type : "Point"
/// coordinates : [36.7783,36.7783]

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());

class Location {
  Location({
    String? type,
    List<num>? coordinates,
  }) {
    _type = type;
    _coordinates = coordinates;
  }

  Location.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates =
        json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
  }
  String? _type;
  List<num>? _coordinates;
  Location copyWith({
    String? type,
    List<num>? coordinates,
  }) =>
      Location(
        type: type ?? _type,
        coordinates: coordinates ?? _coordinates,
      );
  String? get type => _type;
  List<num>? get coordinates => _coordinates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['coordinates'] = _coordinates;
    return map;
  }
}

/// reject_reason : ""
/// status : 0

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

/// type : "Point"
/// coordinates : [36.7783,36.7783]

/// firstName : "admin cg"
/// lastName : "cg"

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
