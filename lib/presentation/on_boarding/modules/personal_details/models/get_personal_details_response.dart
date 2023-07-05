import 'dart:convert';
/// status : true
/// message : "Success"
/// data : {"user_id":"6479ec415ea3194cb846fd35","name":{"firstName":"Nithi","lastName":"caregiver"},"address":{"streetName":"street","lattitude":"0","longitude":"0","city":"5a0ae710737d5eb24932d9d3","state":"643d82526cba31e037a0dc43","address":"address home","zipCode":"96465-5656","is_delete":false,"location":{"type":"Point","coordinates":[0,0]},"state_name":"Alabama","city_name":"Adger"},"gender":1,"profile_picture":"https://amagicareambassabor185017-dev.s3.amazonaws.com/public/ProfilePictures/6479ec415ea3194cb846fd35/1685712855097.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=KTKH0hdAvoTNCf2PIRk8g0Ktljg%3D","dob":"2005-06-02T00:00:00.000Z","social_security_number":"986-56-626656","document_details":{"document_id":"643fbbbe63e7736ada368142","document_number":"passport123f","expiry_date":"2023-06-24T00:00:00.000Z","doument":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712858645.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=pmaNSLUEyangPUDg3OlGsimcNtY%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712947620.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=WFKVwEIjWVbnhbIf9sIyEhLvGpM%3D"]},"profile_pic_refference":"1685712855097.jpg","document_refference":["1685712858645.jpg","1685712947620.pdf"]}

GetPersonalDetailsResponse getPersonalDetailsResponseFromJson(String str) => GetPersonalDetailsResponse.fromJson(json.decode(str));
String getPersonalDetailsResponseToJson(GetPersonalDetailsResponse data) => json.encode(data.toJson());
class GetPersonalDetailsResponse {
  GetPersonalDetailsResponse({
      bool? status, 
      String? message, 
      Data? data,}){
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
GetPersonalDetailsResponse copyWith({  bool? status,
  String? message,
  Data? data,
}) => GetPersonalDetailsResponse(  status: status ?? _status,
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

/// user_id : "6479ec415ea3194cb846fd35"
/// name : {"firstName":"Nithi","lastName":"caregiver"}
/// address : {"streetName":"street","lattitude":"0","longitude":"0","city":"5a0ae710737d5eb24932d9d3","state":"643d82526cba31e037a0dc43","address":"address home","zipCode":"96465-5656","is_delete":false,"location":{"type":"Point","coordinates":[0,0]},"state_name":"Alabama","city_name":"Adger"}
/// gender : 1
/// profile_picture : "https://amagicareambassabor185017-dev.s3.amazonaws.com/public/ProfilePictures/6479ec415ea3194cb846fd35/1685712855097.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=KTKH0hdAvoTNCf2PIRk8g0Ktljg%3D"
/// dob : "2005-06-02T00:00:00.000Z"
/// social_security_number : "986-56-626656"
/// document_details : {"document_id":"643fbbbe63e7736ada368142","document_number":"passport123f","expiry_date":"2023-06-24T00:00:00.000Z","doument":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712858645.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=pmaNSLUEyangPUDg3OlGsimcNtY%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712947620.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=WFKVwEIjWVbnhbIf9sIyEhLvGpM%3D"]}
/// profile_pic_refference : "1685712855097.jpg"
/// document_refference : ["1685712858645.jpg","1685712947620.pdf"]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? userId, 
      Name? name, 
      Address? address, 
      num? gender, 
      String? profilePicture, 
      String? dob, 
      String? socialSecurityNumber, 
      DocumentDetails? documentDetails, 
      String? profilePicRefference, 
      List<String>? documentRefference,}){
    _userId = userId;
    _name = name;
    _address = address;
    _gender = gender;
    _profilePicture = profilePicture;
    _dob = dob;
    _socialSecurityNumber = socialSecurityNumber;
    _documentDetails = documentDetails;
    _profilePicRefference = profilePicRefference;
    _documentRefference = documentRefference;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _address = json['address'] != null ? Address.fromJson(json['address']) : null;
    _gender = json['gender'];
    _profilePicture = json['profile_picture'];
    _dob = json['dob'];
    _socialSecurityNumber = json['social_security_number'];
    _documentDetails = json['document_details'] != null ? DocumentDetails.fromJson(json['document_details']) : null;
    _profilePicRefference = json['profile_pic_refference'];
    _documentRefference = json['document_refference'] != null ? json['document_refference'].cast<String>() : [];
  }
  String? _userId;
  Name? _name;
  Address? _address;
  num? _gender;
  String? _profilePicture;
  String? _dob;
  String? _socialSecurityNumber;
  DocumentDetails? _documentDetails;
  String? _profilePicRefference;
  List<String>? _documentRefference;
Data copyWith({  String? userId,
  Name? name,
  Address? address,
  num? gender,
  String? profilePicture,
  String? dob,
  String? socialSecurityNumber,
  DocumentDetails? documentDetails,
  String? profilePicRefference,
  List<String>? documentRefference,
}) => Data(  userId: userId ?? _userId,
  name: name ?? _name,
  address: address ?? _address,
  gender: gender ?? _gender,
  profilePicture: profilePicture ?? _profilePicture,
  dob: dob ?? _dob,
  socialSecurityNumber: socialSecurityNumber ?? _socialSecurityNumber,
  documentDetails: documentDetails ?? _documentDetails,
  profilePicRefference: profilePicRefference ?? _profilePicRefference,
  documentRefference: documentRefference ?? _documentRefference,
);
  String? get userId => _userId;
  Name? get name => _name;
  Address? get address => _address;
  num? get gender => _gender;
  String? get profilePicture => _profilePicture;
  String? get dob => _dob;
  String? get socialSecurityNumber => _socialSecurityNumber;
  DocumentDetails? get documentDetails => _documentDetails;
  String? get profilePicRefference => _profilePicRefference;
  List<String>? get documentRefference => _documentRefference;

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
    map['dob'] = _dob;
    map['social_security_number'] = _socialSecurityNumber;
    if (_documentDetails != null) {
      map['document_details'] = _documentDetails?.toJson();
    }
    map['profile_pic_refference'] = _profilePicRefference;
    map['document_refference'] = _documentRefference;
    return map;
  }

}

/// document_id : "643fbbbe63e7736ada368142"
/// document_number : "passport123f"
/// expiry_date : "2023-06-24T00:00:00.000Z"
/// doument : ["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712858645.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=pmaNSLUEyangPUDg3OlGsimcNtY%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712947620.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686291120&Signature=WFKVwEIjWVbnhbIf9sIyEhLvGpM%3D"]

DocumentDetails documentDetailsFromJson(String str) => DocumentDetails.fromJson(json.decode(str));
String documentDetailsToJson(DocumentDetails data) => json.encode(data.toJson());
class DocumentDetails {
  DocumentDetails({
      String? documentId, 
      String? documentNumber, 
      String? expiryDate, 
      List<String>? doument,}){
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
DocumentDetails copyWith({  String? documentId,
  String? documentNumber,
  String? expiryDate,
  List<String>? doument,
}) => DocumentDetails(  documentId: documentId ?? _documentId,
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

/// streetName : "street"
/// lattitude : "0"
/// longitude : "0"
/// city : "5a0ae710737d5eb24932d9d3"
/// state : "643d82526cba31e037a0dc43"
/// address : "address home"
/// zipCode : "96465-5656"
/// is_delete : false
/// location : {"type":"Point","coordinates":[0,0]}
/// state_name : "Alabama"
/// city_name : "Adger"

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());
class Address {
  Address({
      String? streetName, 
      String? lattitude, 
      String? longitude, 
      String? city, 
      String? state, 
      String? address, 
      String? zipCode, 
      bool? isDelete, 
      Location? location, 
      String? stateName, 
      String? cityName,}){
    _streetName = streetName;
    _lattitude = lattitude;
    _longitude = longitude;
    _city = city;
    _state = state;
    _address = address;
    _zipCode = zipCode;
    _isDelete = isDelete;
    _location = location;
    _stateName = stateName;
    _cityName = cityName;
}

  Address.fromJson(dynamic json) {
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _city = json['city'];
    _state = json['state'];
    _address = json['address'];
    _zipCode = json['zipCode'];
    _isDelete = json['is_delete'];
    _location = json['location'] != null ? Location.fromJson(json['location']) : null;
    _stateName = json['state_name'];
    _cityName = json['city_name'];
  }
  String? _streetName;
  String? _lattitude;
  String? _longitude;
  String? _city;
  String? _state;
  String? _address;
  String? _zipCode;
  bool? _isDelete;
  Location? _location;
  String? _stateName;
  String? _cityName;
Address copyWith({  String? streetName,
  String? lattitude,
  String? longitude,
  String? city,
  String? state,
  String? address,
  String? zipCode,
  bool? isDelete,
  Location? location,
  String? stateName,
  String? cityName,
}) => Address(  streetName: streetName ?? _streetName,
  lattitude: lattitude ?? _lattitude,
  longitude: longitude ?? _longitude,
  city: city ?? _city,
  state: state ?? _state,
  address: address ?? _address,
  zipCode: zipCode ?? _zipCode,
  isDelete: isDelete ?? _isDelete,
  location: location ?? _location,
  stateName: stateName ?? _stateName,
  cityName: cityName ?? _cityName,
);
  String? get streetName => _streetName;
  String? get lattitude => _lattitude;
  String? get longitude => _longitude;
  String? get city => _city;
  String? get state => _state;
  String? get address => _address;
  String? get zipCode => _zipCode;
  bool? get isDelete => _isDelete;
  Location? get location => _location;
  String? get stateName => _stateName;
  String? get cityName => _cityName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['streetName'] = _streetName;
    map['lattitude'] = _lattitude;
    map['longitude'] = _longitude;
    map['city'] = _city;
    map['state'] = _state;
    map['address'] = _address;
    map['zipCode'] = _zipCode;
    map['is_delete'] = _isDelete;
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['state_name'] = _stateName;
    map['city_name'] = _cityName;
    return map;
  }

}

/// type : "Point"
/// coordinates : [0,0]

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());
class Location {
  Location({
      String? type, 
      List<num>? coordinates,}){
    _type = type;
    _coordinates = coordinates;
}

  Location.fromJson(dynamic json) {
    _type = json['type'];
    _coordinates = json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
  }
  String? _type;
  List<num>? _coordinates;
Location copyWith({  String? type,
  List<num>? coordinates,
}) => Location(  type: type ?? _type,
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

/// firstName : "Nithi"
/// lastName : "caregiver"

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());
class Name {
  Name({
      String? firstName, 
      String? lastName,}){
    _firstName = firstName;
    _lastName = lastName;
}

  Name.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
  }
  String? _firstName;
  String? _lastName;
Name copyWith({  String? firstName,
  String? lastName,
}) => Name(  firstName: firstName ?? _firstName,
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