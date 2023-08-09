import 'dart:convert';

RescheduleResponse rescheduleResponseFromJson(String str) =>
    RescheduleResponse.fromJson(json.decode(str));
String rescheduleResponseToJson(RescheduleResponse data) =>
    json.encode(data.toJson());

class RescheduleResponse {
  RescheduleResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  RescheduleResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  RescheduleResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      RescheduleResponse(
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
    bool? caregiverFound,
    String? oldServiceId,
    String? serviceId,
    List<Caregivers>? caregivers,
  }) {
    _caregiverFound = caregiverFound;
    _oldServiceId = oldServiceId;
    _serviceId = serviceId;
    _caregivers = caregivers;
  }

  Data.fromJson(dynamic json) {
    _caregiverFound = json['caregiver_found'];
    _oldServiceId = json['old_service_id'];
    _serviceId = json['service_id'];
    if (json['caregivers'] != null) {
      _caregivers = [];
      json['caregivers'].forEach((v) {
        _caregivers?.add(Caregivers.fromJson(v));
      });
    }
  }
  bool? _caregiverFound;
  String? _oldServiceId;
  String? _serviceId;
  List<Caregivers>? _caregivers;
  Data copyWith({
    bool? caregiverFound,
    String? oldServiceId,
    String? serviceId,
    List<Caregivers>? caregivers,
  }) =>
      Data(
        caregiverFound: caregiverFound ?? _caregiverFound,
        oldServiceId: oldServiceId ?? _oldServiceId,
        serviceId: serviceId ?? _serviceId,
        caregivers: caregivers ?? _caregivers,
      );
  bool? get caregiverFound => _caregiverFound;
  String? get oldServiceId => _oldServiceId;
  String? get serviceId => _serviceId;
  List<Caregivers>? get caregivers => _caregivers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['caregiver_found'] = _caregiverFound;
    map['old_service_id'] = _oldServiceId;
    map['service_id'] = _serviceId;
    if (_caregivers != null) {
      map['caregivers'] = _caregivers?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Caregivers caregiversFromJson(String str) =>
    Caregivers.fromJson(json.decode(str));
String caregiversToJson(Caregivers data) => json.encode(data.toJson());

class Caregivers {
  Caregivers({
    String? serviceId,
    String? caregiverId,
    num? distance,
    Name? name,
    List<Address>? address,
    String? fee,
    num? rating,
    num? totalReviews,
    String? about,
    String? hobbies,
    String? experience,
    List<String>? qualification,
    num? match,
    String? notMatchText,
    List<String>? languages,
    bool? willingToWorkkWithPets,
    bool? serveClientThatSmoke,
    AvailableServices? services,
    String? profilePic,
    MatchingPercentages? matchingPercentages,
  }) {
    _serviceId = serviceId;
    _caregiverId = caregiverId;
    _distance = distance;
    _name = name;
    _address = address;
    _fee = fee;
    _rating = rating;
    _totalReviews = totalReviews;
    _about = about;
    _hobbies = hobbies;
    _experience = experience;
    _qualification = qualification;
    _match = match;
    _notMatchText = notMatchText;
    _languages = languages;
    _willingToWorkkWithPets = willingToWorkkWithPets;
    _serveClientThatSmoke = serveClientThatSmoke;
    _services = services;
    _profilePic = profilePic;
    _matchingPercentages = matchingPercentages;
  }

  Caregivers.fromJson(dynamic json) {
    _serviceId = json['service_id'];
    _caregiverId = json['caregiver_id'];
    _distance = json['distance'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
    _fee = json['fee'];
    _rating = json['rating'];
    _totalReviews = json['total_reviews'];
    _about = json['about'];
    _hobbies = json['hobbies'];
    _experience = json['experience'];
    _qualification = json['qualification'] != null
        ? json['qualification'].cast<String>()
        : [];
    _match = json['match'];
    _notMatchText = json['not_match_text'];
    _languages =
        json['languages'] != null ? json['languages'].cast<String>() : [];
    _willingToWorkkWithPets = json['willing_to_workk_with_pets'];
    _serveClientThatSmoke = json['serve_client_that_smoke'];
    _services = json['services'] != null
        ? AvailableServices.fromJson(json['services'])
        : null;
    _profilePic = json['profile_pic'];
    _matchingPercentages = json['matching_percentages'] != null
        ? MatchingPercentages.fromJson(json['matching_percentages'])
        : null;
  }
  String? _serviceId;
  String? _caregiverId;
  num? _distance;
  Name? _name;
  List<Address>? _address;
  String? _fee;
  num? _rating;
  num? _totalReviews;
  String? _about;
  String? _hobbies;
  String? _experience;
  List<String>? _qualification;
  num? _match;
  String? _notMatchText;
  List<String>? _languages;
  bool? _willingToWorkkWithPets;
  bool? _serveClientThatSmoke;
  AvailableServices? _services;
  String? _profilePic;
  MatchingPercentages? _matchingPercentages;
  Caregivers copyWith({
    String? serviceId,
    String? caregiverId,
    num? distance,
    Name? name,
    List<Address>? address,
    String? fee,
    num? rating,
    num? totalReviews,
    String? about,
    String? hobbies,
    String? experience,
    List<String>? qualification,
    num? match,
    String? notMatchText,
    List<String>? languages,
    bool? willingToWorkkWithPets,
    bool? serveClientThatSmoke,
    AvailableServices? services,
    String? profilePic,
    MatchingPercentages? matchingPercentages,
  }) =>
      Caregivers(
        serviceId: serviceId ?? _serviceId,
        caregiverId: caregiverId ?? _caregiverId,
        distance: distance ?? _distance,
        name: name ?? _name,
        address: address ?? _address,
        fee: fee ?? _fee,
        rating: rating ?? _rating,
        totalReviews: totalReviews ?? _totalReviews,
        about: about ?? _about,
        hobbies: hobbies ?? _hobbies,
        experience: experience ?? _experience,
        qualification: qualification ?? _qualification,
        match: match ?? _match,
        notMatchText: notMatchText ?? _notMatchText,
        languages: languages ?? _languages,
        willingToWorkkWithPets:
            willingToWorkkWithPets ?? _willingToWorkkWithPets,
        serveClientThatSmoke: serveClientThatSmoke ?? _serveClientThatSmoke,
        services: services ?? _services,
        profilePic: profilePic ?? _profilePic,
        matchingPercentages: matchingPercentages ?? _matchingPercentages,
      );
  String? get serviceId => _serviceId;
  String? get caregiverId => _caregiverId;
  num? get distance => _distance;
  Name? get name => _name;
  List<Address>? get address => _address;
  String? get fee => _fee;
  num? get rating => _rating;
  num? get totalReviews => _totalReviews;
  String? get about => _about;
  String? get hobbies => _hobbies;
  String? get experience => _experience;
  List<String>? get qualification => _qualification;
  num? get match => _match;
  String? get notMatchText => _notMatchText;
  List<String>? get languages => _languages;
  bool? get willingToWorkkWithPets => _willingToWorkkWithPets;
  bool? get serveClientThatSmoke => _serveClientThatSmoke;
  AvailableServices? get services => _services;
  String? get profilePic => _profilePic;
  MatchingPercentages? get matchingPercentages => _matchingPercentages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_id'] = _serviceId;
    map['caregiver_id'] = _caregiverId;
    map['distance'] = _distance;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    map['fee'] = _fee;
    map['rating'] = _rating;
    map['total_reviews'] = _totalReviews;
    map['about'] = _about;
    map['hobbies'] = _hobbies;
    map['experience'] = _experience;
    map['qualification'] = _qualification;
    map['match'] = _match;
    map['not_match_text'] = _notMatchText;
    map['languages'] = _languages;
    map['willing_to_workk_with_pets'] = _willingToWorkkWithPets;
    map['serve_client_that_smoke'] = _serveClientThatSmoke;
    if (_services != null) {
      map['services'] = _services?.toJson();
    }
    map['profile_pic'] = _profilePic;
    if (_matchingPercentages != null) {
      map['matching_percentages'] = _matchingPercentages?.toJson();
    }
    return map;
  }
}

MatchingPercentages matchingPercentagesFromJson(String str) =>
    MatchingPercentages.fromJson(json.decode(str));
String matchingPercentagesToJson(MatchingPercentages data) =>
    json.encode(data.toJson());

class MatchingPercentages {
  MatchingPercentages({
    num? cgpetMatching,
    num? cgService1Matching,
    num? cgLanguageMatching,
    num? cgGenderMatching,
    num? cgSmokeMatching,
  }) {
    _cgpetMatching = cgpetMatching;
    _cgService1Matching = cgService1Matching;
    _cgLanguageMatching = cgLanguageMatching;
    _cgGenderMatching = cgGenderMatching;
    _cgSmokeMatching = cgSmokeMatching;
  }

  MatchingPercentages.fromJson(dynamic json) {
    _cgpetMatching = json['cgpetMatching'];
    _cgService1Matching = json['cgService1Matching'];
    _cgLanguageMatching = json['cgLanguageMatching'];
    _cgGenderMatching = json['cgGenderMatching'];
    _cgSmokeMatching = json['cgSmokeMatching'];
  }
  num? _cgpetMatching;
  num? _cgService1Matching;
  num? _cgLanguageMatching;
  num? _cgGenderMatching;
  num? _cgSmokeMatching;
  MatchingPercentages copyWith({
    num? cgpetMatching,
    num? cgService1Matching,
    num? cgLanguageMatching,
    num? cgGenderMatching,
    num? cgSmokeMatching,
  }) =>
      MatchingPercentages(
        cgpetMatching: cgpetMatching ?? _cgpetMatching,
        cgService1Matching: cgService1Matching ?? _cgService1Matching,
        cgLanguageMatching: cgLanguageMatching ?? _cgLanguageMatching,
        cgGenderMatching: cgGenderMatching ?? _cgGenderMatching,
        cgSmokeMatching: cgSmokeMatching ?? _cgSmokeMatching,
      );
  num? get cgpetMatching => _cgpetMatching;
  num? get cgService1Matching => _cgService1Matching;
  num? get cgLanguageMatching => _cgLanguageMatching;
  num? get cgGenderMatching => _cgGenderMatching;
  num? get cgSmokeMatching => _cgSmokeMatching;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cgpetMatching'] = _cgpetMatching;
    map['cgService1Matching'] = _cgService1Matching;
    map['cgLanguageMatching'] = _cgLanguageMatching;
    map['cgGenderMatching'] = _cgGenderMatching;
    map['cgSmokeMatching'] = _cgSmokeMatching;
    return map;
  }
}

AvailableServices servicesFromJson(String str) =>
    AvailableServices.fromJson(json.decode(str));
String servicesToJson(AvailableServices data) => json.encode(data.toJson());

class AvailableServices {
  AvailableServices({
    List<String>? tier1,
  }) {
    _tier1 = tier1;
  }

  AvailableServices.fromJson(dynamic json) {
    _tier1 = json['tier1'] != null ? json['tier1'].cast<String>() : [];
  }
  List<String>? _tier1;
  AvailableServices copyWith({
    List<String>? tier1,
  }) =>
      AvailableServices(
        tier1: tier1 ?? _tier1,
      );
  List<String>? get tier1 => _tier1;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tier1'] = _tier1;
    return map;
  }
}

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    String? streetName,
    String? city,
    String? state,
    String? address,
    String? zipCode,
    bool? isDelete,
    Location? location,
    bool? isDefault,
    String? id,
  }) {
    _streetName = streetName;
    _city = city;
    _state = state;
    _address = address;
    _zipCode = zipCode;
    _isDelete = isDelete;
    _location = location;
    _isDefault = isDefault;
    _id = id;
  }

  Address.fromJson(dynamic json) {
    _streetName = json['streetName'];
    _city = json['city'];
    _state = json['state'];
    _address = json['address'];
    _zipCode = json['zipCode'];
    _isDelete = json['is_delete'];
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _isDefault = json['is_default'];
    _id = json['_id'];
  }
  String? _streetName;
  String? _city;
  String? _state;
  String? _address;
  String? _zipCode;
  bool? _isDelete;
  Location? _location;
  bool? _isDefault;
  String? _id;
  Address copyWith({
    String? streetName,
    String? city,
    String? state,
    String? address,
    String? zipCode,
    bool? isDelete,
    Location? location,
    bool? isDefault,
    String? id,
  }) =>
      Address(
        streetName: streetName ?? _streetName,
        city: city ?? _city,
        state: state ?? _state,
        address: address ?? _address,
        zipCode: zipCode ?? _zipCode,
        isDelete: isDelete ?? _isDelete,
        location: location ?? _location,
        isDefault: isDefault ?? _isDefault,
        id: id ?? _id,
      );
  String? get streetName => _streetName;
  String? get city => _city;
  String? get state => _state;
  String? get address => _address;
  String? get zipCode => _zipCode;
  bool? get isDelete => _isDelete;
  Location? get location => _location;
  bool? get isDefault => _isDefault;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['streetName'] = _streetName;
    map['city'] = _city;
    map['state'] = _state;
    map['address'] = _address;
    map['zipCode'] = _zipCode;
    map['is_delete'] = _isDelete;
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
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
  }) {
    _type = type;
  }

  Location.fromJson(dynamic json) {
    _type = json['type'];
  }
  String? _type;
  Location copyWith({
    String? type,
  }) =>
      Location(
        type: type ?? _type,
      );
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
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
