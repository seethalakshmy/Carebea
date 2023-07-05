import 'dart:convert';
PersonalDetailsResponse personalDetailsResponseFromJson(String str) => PersonalDetailsResponse.fromJson(json.decode(str));
String personalDetailsResponseToJson(PersonalDetailsResponse data) => json.encode(data.toJson());
class PersonalDetailsResponse {
  PersonalDetailsResponse({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  PersonalDetailsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
PersonalDetailsResponse copyWith({  bool? status,
  String? message,
  Data? data,
}) => PersonalDetailsResponse(  status: status ?? _status,
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
      List<Address>? address, 
      int? gender, 
      String? profilePicture, 
      String? dob, 
      String? socialSecurityNumber,}){
    _userId = userId;
    _name = name;
    _address = address;
    _gender = gender;
    _profilePicture = profilePicture;
    _dob = dob;
    _socialSecurityNumber = socialSecurityNumber;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
    _gender = json['gender'];
    _profilePicture = json['profile_picture'];
    _dob = json['dob'];
    _socialSecurityNumber = json['social_security_number'];
  }
  String? _userId;
  Name? _name;
  List<Address>? _address;
  int? _gender;
  String? _profilePicture;
  String? _dob;
  String? _socialSecurityNumber;
Data copyWith({  String? userId,
  Name? name,
  List<Address>? address,
  int? gender,
  String? profilePicture,
  String? dob,
  String? socialSecurityNumber,
}) => Data(  userId: userId ?? _userId,
  name: name ?? _name,
  address: address ?? _address,
  gender: gender ?? _gender,
  profilePicture: profilePicture ?? _profilePicture,
  dob: dob ?? _dob,
  socialSecurityNumber: socialSecurityNumber ?? _socialSecurityNumber,
);
  String? get userId => _userId;
  Name? get name => _name;
  List<Address>? get address => _address;
  int? get gender => _gender;
  String? get profilePicture => _profilePicture;
  String? get dob => _dob;
  String? get socialSecurityNumber => _socialSecurityNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    map['gender'] = _gender;
    map['profile_picture'] = _profilePicture;
    map['dob'] = _dob;
    map['social_security_number'] = _socialSecurityNumber;
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
      String? address, 
      String? zipCode, 
      String? id,}){
    _streetName = streetName;
    _lattitude = lattitude;
    _longitude = longitude;
    _city = city;
    _state = state;
    _address = address;
    _zipCode = zipCode;
    _id = id;
}

  Address.fromJson(dynamic json) {
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _city = json['city'];
    _state = json['state'];
    _address = json['address'];
    _zipCode = json['zipCode'];
    _id = json['_id'];
  }
  String? _streetName;
  String? _lattitude;
  String? _longitude;
  String? _city;
  String? _state;
  String? _address;
  String? _zipCode;
  String? _id;
Address copyWith({  String? streetName,
  String? lattitude,
  String? longitude,
  String? city,
  String? state,
  String? address,
  String? zipCode,
  String? id,
}) => Address(  streetName: streetName ?? _streetName,
  lattitude: lattitude ?? _lattitude,
  longitude: longitude ?? _longitude,
  city: city ?? _city,
  state: state ?? _state,
  address: address ?? _address,
  zipCode: zipCode ?? _zipCode,
  id: id ?? _id,
);
  String? get streetName => _streetName;
  String? get lattitude => _lattitude;
  String? get longitude => _longitude;
  String? get city => _city;
  String? get state => _state;
  String? get address => _address;
  String? get zipCode => _zipCode;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['streetName'] = _streetName;
    map['lattitude'] = _lattitude;
    map['longitude'] = _longitude;
    map['city'] = _city;
    map['state'] = _state;
    map['address'] = _address;
    map['zipCode'] = _zipCode;
    map['_id'] = _id;
    return map;
  }

}

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