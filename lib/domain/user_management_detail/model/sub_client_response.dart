import 'dart:convert';

SubClientResponse subClientResponseFromJson(String str) =>
    SubClientResponse.fromJson(json.decode(str));
String subClientResponseToJson(SubClientResponse data) =>
    json.encode(data.toJson());

class SubClientResponse {
  SubClientResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  SubClientResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  SubClientResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      SubClientResponse(
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
    List<Profiles>? profiles,
    num? totalCount,
    num? page,
    num? limit,
  }) {
    _profiles = profiles;
    _totalCount = totalCount;
    _page = page;
    _limit = limit;
  }

  Data.fromJson(dynamic json) {
    if (json['profiles'] != null) {
      _profiles = [];
      json['profiles'].forEach((v) {
        _profiles?.add(Profiles.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    _page = json['page'];
    _limit = json['limit'];
  }
  List<Profiles>? _profiles;
  num? _totalCount;
  num? _page;
  num? _limit;
  Data copyWith({
    List<Profiles>? profiles,
    num? totalCount,
    num? page,
    num? limit,
  }) =>
      Data(
        profiles: profiles ?? _profiles,
        totalCount: totalCount ?? _totalCount,
        page: page ?? _page,
        limit: limit ?? _limit,
      );
  List<Profiles>? get profiles => _profiles;
  num? get totalCount => _totalCount;
  num? get page => _page;
  num? get limit => _limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_profiles != null) {
      map['profiles'] = _profiles?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    map['page'] = _page;
    map['limit'] = _limit;
    return map;
  }
}

Profiles profilesFromJson(String str) => Profiles.fromJson(json.decode(str));
String profilesToJson(Profiles data) => json.encode(data.toJson());

class Profiles {
  Profiles({
    String? id,
    bool? isDeleted,
    bool? isSubscriptionActive,
    Name? name,
    List<Address>? address,
    Location? location,
    String? locationTag,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
    String? age,
    bool? isProfileCompleted,
    num? profileCompletePercentage,
    ProfileCompletion? profileCompletion,
    num? completedServices,
    num? totalService,
  }) {
    _id = id;
    _isDeleted = isDeleted;
    _isSubscriptionActive = isSubscriptionActive;
    _name = name;
    _address = address;
    _location = location;
    _locationTag = locationTag;
    _profilePicReferrence = profilePicReferrence;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
    _age = age;
    _isProfileCompleted = isProfileCompleted;
    _profileCompletePercentage = profileCompletePercentage;
    _profileCompletion = profileCompletion;
    _completedServices = completedServices;
    _totalService = totalService;
  }

  Profiles.fromJson(dynamic json) {
    _id = json['id'];
    _isDeleted = json['is_deleted'];
    _isSubscriptionActive = json['is_subscription_active'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _locationTag = json['location_tag'];
    _profilePicReferrence = json['profile_pic_referrence'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
    _age = json['age'];
    _isProfileCompleted = json['is_profile_completed'];
    _profileCompletePercentage = json['profile_complete_percentage'];
    _profileCompletion = json['profile_completion'] != null
        ? ProfileCompletion.fromJson(json['profile_completion'])
        : null;
    _completedServices = json['completedServices'];
    _totalService = json['totalService'];
  }
  String? _id;
  bool? _isDeleted;
  bool? _isSubscriptionActive;
  Name? _name;
  List<Address>? _address;
  Location? _location;
  String? _locationTag;
  String? _profilePicReferrence;
  String? _profilePic;
  String? _profileThumbnail;
  String? _age;
  bool? _isProfileCompleted;
  num? _profileCompletePercentage;
  ProfileCompletion? _profileCompletion;
  num? _completedServices;
  num? _totalService;
  Profiles copyWith({
    String? id,
    bool? isDeleted,
    bool? isSubscriptionActive,
    Name? name,
    List<Address>? address,
    Location? location,
    String? locationTag,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
    String? age,
    bool? isProfileCompleted,
    num? profileCompletePercentage,
    ProfileCompletion? profileCompletion,
    num? completedServices,
    num? totalService,
  }) =>
      Profiles(
        id: id ?? _id,
        isDeleted: isDeleted ?? _isDeleted,
        isSubscriptionActive: isSubscriptionActive ?? _isSubscriptionActive,
        name: name ?? _name,
        address: address ?? _address,
        location: location ?? _location,
        locationTag: locationTag ?? _locationTag,
        profilePicReferrence: profilePicReferrence ?? _profilePicReferrence,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        age: age ?? _age,
        isProfileCompleted: isProfileCompleted ?? _isProfileCompleted,
        profileCompletePercentage:
            profileCompletePercentage ?? _profileCompletePercentage,
        profileCompletion: profileCompletion ?? _profileCompletion,
        completedServices: completedServices ?? _completedServices,
        totalService: totalService ?? _totalService,
      );
  String? get id => _id;
  bool? get isDeleted => _isDeleted;
  bool? get isSubscriptionActive => _isSubscriptionActive;
  Name? get name => _name;
  List<Address>? get address => _address;
  Location? get location => _location;
  String? get locationTag => _locationTag;
  String? get profilePicReferrence => _profilePicReferrence;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;
  String? get age => _age;
  bool? get isProfileCompleted => _isProfileCompleted;
  num? get profileCompletePercentage => _profileCompletePercentage;
  ProfileCompletion? get profileCompletion => _profileCompletion;
  num? get completedServices => _completedServices;
  num? get totalService => _totalService;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['is_deleted'] = _isDeleted;
    map['is_subscription_active'] = _isSubscriptionActive;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['location_tag'] = _locationTag;
    map['profile_pic_referrence'] = _profilePicReferrence;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    map['age'] = _age;
    map['is_profile_completed'] = _isProfileCompleted;
    map['profile_complete_percentage'] = _profileCompletePercentage;
    if (_profileCompletion != null) {
      map['profile_completion'] = _profileCompletion?.toJson();
    }
    map['completedServices'] = _completedServices;
    map['totalService'] = _totalService;
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
    bool? services,
    bool? termsAndConditions,
  }) {
    _personalDetails = personalDetails;
    _preferences = preferences;
    _contacts = contacts;
    _healthCondition = healthCondition;
    _services = services;
    _termsAndConditions = termsAndConditions;
  }

  ProfileCompletion.fromJson(dynamic json) {
    _personalDetails = json['personalDetails'];
    _preferences = json['preferences'];
    _contacts = json['contacts'];
    _healthCondition = json['healthCondition'];
    _services = json['services'];
    _termsAndConditions = json['termsAndConditions'];
  }
  bool? _personalDetails;
  bool? _preferences;
  bool? _contacts;
  bool? _healthCondition;
  bool? _services;
  bool? _termsAndConditions;
  ProfileCompletion copyWith({
    bool? personalDetails,
    bool? preferences,
    bool? contacts,
    bool? healthCondition,
    bool? services,
    bool? termsAndConditions,
  }) =>
      ProfileCompletion(
        personalDetails: personalDetails ?? _personalDetails,
        preferences: preferences ?? _preferences,
        contacts: contacts ?? _contacts,
        healthCondition: healthCondition ?? _healthCondition,
        services: services ?? _services,
        termsAndConditions: termsAndConditions ?? _termsAndConditions,
      );
  bool? get personalDetails => _personalDetails;
  bool? get preferences => _preferences;
  bool? get contacts => _contacts;
  bool? get healthCondition => _healthCondition;
  bool? get services => _services;
  bool? get termsAndConditions => _termsAndConditions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['personalDetails'] = _personalDetails;
    map['preferences'] = _preferences;
    map['contacts'] = _contacts;
    map['healthCondition'] = _healthCondition;
    map['services'] = _services;
    map['termsAndConditions'] = _termsAndConditions;
    return map;
  }
}

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());

class Location {
  Location({
    List<num>? coordinates,
    String? type,
  }) {
    _coordinates = coordinates;
    _type = type;
  }

  Location.fromJson(dynamic json) {
    _coordinates =
        json['coordinates'] != null ? json['coordinates'].cast<num>() : [];
    _type = json['type'];
  }
  List<num>? _coordinates;
  String? _type;
  Location copyWith({
    List<num>? coordinates,
    String? type,
  }) =>
      Location(
        coordinates: coordinates ?? _coordinates,
        type: type ?? _type,
      );
  List<num>? get coordinates => _coordinates;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coordinates'] = _coordinates;
    map['type'] = _type;
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
    String? region,
    String? address,
    String? locationTag,
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
    _region = region;
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
    _region = json['region'];
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
  String? _region;
  String? _address;
  String? _locationTag;
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
    String? region,
    String? address,
    String? locationTag,
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
        region: region ?? _region,
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
  String? get region => _region;
  String? get address => _address;
  String? get locationTag => _locationTag;
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
    map['region'] = _region;
    map['address'] = _address;
    map['locationTag'] = _locationTag;
    map['zipCode'] = _zipCode;
    map['is_delete'] = _isDelete;
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
