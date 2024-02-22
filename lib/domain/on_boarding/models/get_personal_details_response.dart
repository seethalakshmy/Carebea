import 'dart:convert';

GetPersonalDetailsResponse getPersonalDetailsResponseFromJson(String str) =>
    GetPersonalDetailsResponse.fromJson(json.decode(str));
String getPersonalDetailsResponseToJson(GetPersonalDetailsResponse data) =>
    json.encode(data.toJson());

class GetPersonalDetailsResponse {
  GetPersonalDetailsResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetPersonalDetailsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  GetPersonalDetailsResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      GetPersonalDetailsResponse(
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
    String? userId,
    Name? name,
    Address? address,
    num? gender,
    String? profilePicture,
    String? profileThumbnail,
    String? dob,
    String? socialSecurityNumber,
    DocumentDetails? documentDetails,
    String? profilePicRefference,
    List<String>? documentRefference,
    List<ExpiryDocuments>? expiryDocuments,
  }) {
    _userId = userId;
    _name = name;
    _address = address;
    _gender = gender;
    _profilePicture = profilePicture;
    _profileThumbnail = profileThumbnail;
    _dob = dob;
    _socialSecurityNumber = socialSecurityNumber;
    _documentDetails = documentDetails;
    _profilePicRefference = profilePicRefference;
    _documentRefference = documentRefference;
    _expiryDocuments = expiryDocuments;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    _gender = json['gender'];
    _profilePicture = json['profile_picture'];
    _profileThumbnail = json['profile_thumbnail'];
    _dob = json['dob'];
    _socialSecurityNumber = json['social_security_number'];
    _documentDetails = json['document_details'] != null
        ? DocumentDetails.fromJson(json['document_details'])
        : null;
    _profilePicRefference = json['profile_pic_refference'];
    _documentRefference = json['document_refference'] != null
        ? json['document_refference'].cast<String>()
        : [];
    if (json['expiryDocuments'] != null) {
      _expiryDocuments = [];
      json['expiryDocuments'].forEach((v) {
        _expiryDocuments?.add(ExpiryDocuments.fromJson(v));
      });
    }
  }
  String? _userId;
  Name? _name;
  Address? _address;
  num? _gender;
  String? _profilePicture;
  String? _profileThumbnail;
  String? _dob;
  String? _socialSecurityNumber;
  DocumentDetails? _documentDetails;
  String? _profilePicRefference;
  List<String>? _documentRefference;
  List<ExpiryDocuments>? _expiryDocuments;
  Data copyWith({
    String? userId,
    Name? name,
    Address? address,
    num? gender,
    String? profilePicture,
    String? profileThumbnail,
    String? dob,
    String? socialSecurityNumber,
    DocumentDetails? documentDetails,
    String? profilePicRefference,
    List<String>? documentRefference,
    List<ExpiryDocuments>? expiryDocuments,
  }) =>
      Data(
        userId: userId ?? _userId,
        name: name ?? _name,
        address: address ?? _address,
        gender: gender ?? _gender,
        profilePicture: profilePicture ?? _profilePicture,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        dob: dob ?? _dob,
        socialSecurityNumber: socialSecurityNumber ?? _socialSecurityNumber,
        documentDetails: documentDetails ?? _documentDetails,
        profilePicRefference: profilePicRefference ?? _profilePicRefference,
        documentRefference: documentRefference ?? _documentRefference,
        expiryDocuments: expiryDocuments ?? _expiryDocuments,
      );
  String? get userId => _userId;
  Name? get name => _name;
  Address? get address => _address;
  num? get gender => _gender;
  String? get profilePicture => _profilePicture;
  String? get profileThumbnail => _profileThumbnail;
  String? get dob => _dob;
  String? get socialSecurityNumber => _socialSecurityNumber;
  DocumentDetails? get documentDetails => _documentDetails;
  String? get profilePicRefference => _profilePicRefference;
  List<String>? get documentRefference => _documentRefference;
  List<ExpiryDocuments>? get expiryDocuments => _expiryDocuments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['gender'] = _gender;
    map['profile_picture'] = _profilePicture;
    map['profile_thumbnail'] = _profileThumbnail;
    map['dob'] = _dob;
    map['social_security_number'] = _socialSecurityNumber;
    if (_documentDetails != null) {
      map['document_details'] = _documentDetails?.toJson();
    }
    map['profile_pic_refference'] = _profilePicRefference;
    map['document_refference'] = _documentRefference;
    if (_expiryDocuments != null) {
      map['expiryDocuments'] =
          _expiryDocuments?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

ExpiryDocuments expiryDocumentsFromJson(String str) =>
    ExpiryDocuments.fromJson(json.decode(str));
String expiryDocumentsToJson(ExpiryDocuments data) =>
    json.encode(data.toJson());

class ExpiryDocuments {
  ExpiryDocuments({
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

  ExpiryDocuments.fromJson(dynamic json) {
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
  ExpiryDocuments copyWith({
    String? type,
    bool? valid,
    String? number,
    String? expiry,
    List<String>? file,
    bool? status,
    String? id,
  }) =>
      ExpiryDocuments(
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

DocumentDetails documentDetailsFromJson(String str) =>
    DocumentDetails.fromJson(json.decode(str));
String documentDetailsToJson(DocumentDetails data) =>
    json.encode(data.toJson());

class DocumentDetails {
  DocumentDetails({
    String? documentId,
    String? documentNumber,
    String? expiryDate,
    List<String>? doument,
  }) {
    _documentId = documentId;
    _documentNumber = documentNumber;
    _expiryDate = expiryDate;
    _doument = doument;
  }

  DocumentDetails.fromJson(dynamic json) {
    _documentId = json['document_id'];
    _documentNumber = json['document_number'];
    _expiryDate = json['expiry_date'];
    _doument = json['doument'] != null ? json['doument'].cast<String>() : [];
  }
  String? _documentId;
  String? _documentNumber;
  String? _expiryDate;
  List<String>? _doument;
  DocumentDetails copyWith({
    String? documentId,
    String? documentNumber,
    String? expiryDate,
    List<String>? doument,
  }) =>
      DocumentDetails(
        documentId: documentId ?? _documentId,
        documentNumber: documentNumber ?? _documentNumber,
        expiryDate: expiryDate ?? _expiryDate,
        doument: doument ?? _doument,
      );
  String? get documentId => _documentId;
  String? get documentNumber => _documentNumber;
  String? get expiryDate => _expiryDate;
  List<String>? get doument => _doument;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document_id'] = _documentId;
    map['document_number'] = _documentNumber;
    map['expiry_date'] = _expiryDate;
    map['doument'] = _doument;
    return map;
  }
}

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    String? streetName,
    String? lattitude,
    String? longitude,
    String? city,
    String? state,
    String? cityName,
    String? stateName,
    String? address,
    String? zipCode,
    String? locationTag,
    bool? isDefault,
    String? id,
  }) {
    _streetName = streetName;
    _lattitude = lattitude;
    _longitude = longitude;
    _city = city;
    _state = state;
    _cityName = cityName;
    _stateName = stateName;
    _address = address;
    _zipCode = zipCode;
    _locationTag = locationTag;
    _isDefault = isDefault;
    _id = id;
  }

  Address.fromJson(dynamic json) {
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _city = json['city'];
    _state = json['state'];
    _cityName = json['cityName'];
    _stateName = json['stateName'];
    _address = json['address'];
    _zipCode = json['zipCode'];
    _locationTag = json['locationTag'];
    _isDefault = json['is_default'];
    _id = json['_id'];
  }
  String? _streetName;
  String? _lattitude;
  String? _longitude;
  String? _city;
  String? _state;
  String? _cityName;
  String? _stateName;
  String? _address;
  String? _zipCode;
  String? _locationTag;
  bool? _isDefault;
  String? _id;
  Address copyWith({
    String? streetName,
    String? lattitude,
    String? longitude,
    String? city,
    String? state,
    String? cityName,
    String? stateName,
    String? address,
    String? zipCode,
    String? locationTag,
    bool? isDefault,
    String? id,
  }) =>
      Address(
        streetName: streetName ?? _streetName,
        lattitude: lattitude ?? _lattitude,
        longitude: longitude ?? _longitude,
        city: city ?? _city,
        state: state ?? _state,
        cityName: cityName ?? _cityName,
        stateName: stateName ?? _stateName,
        address: address ?? _address,
        zipCode: zipCode ?? _zipCode,
        locationTag: locationTag ?? _locationTag,
        isDefault: isDefault ?? _isDefault,
        id: id ?? _id,
      );
  String? get streetName => _streetName;
  String? get lattitude => _lattitude;
  String? get longitude => _longitude;
  String? get city => _city;
  String? get state => _state;
  String? get cityName => _cityName;
  String? get stateName => _stateName;
  String? get address => _address;
  String? get zipCode => _zipCode;
  String? get locationTag => _locationTag;
  bool? get isDefault => _isDefault;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['streetName'] = _streetName;
    map['lattitude'] = _lattitude;
    map['longitude'] = _longitude;
    map['city'] = _city;
    map['state'] = _state;
    map['cityName'] = _cityName;
    map['stateName'] = _stateName;
    map['address'] = _address;
    map['zipCode'] = _zipCode;
    map['locationTag'] = _locationTag;
    map['is_default'] = _isDefault;
    map['_id'] = _id;
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
