import 'dart:convert';

SubProfileDetailResponse subProfileDetailsModelFromJson(String str) =>
    SubProfileDetailResponse.fromJson(json.decode(str));
String subProfileDetailsModelToJson(SubProfileDetailResponse data) =>
    json.encode(data.toJson());

class SubProfileDetailResponse {
  SubProfileDetailResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  SubProfileDetailResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  SubProfileDetailResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      SubProfileDetailResponse(
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
    ProfileCompletion? profileCompletion,
    dynamic agreement,
    int? serviceCompleted,
    int? cancelledRequests,
    double? averageReview,
    int? reviewCount,
    Name? name,
    String? profilePic,
    PersonalDetails1? personalDetails1,
    DocumentDetails2? documentDetails2,
    PersonalDetails2? personalDetails2,
    List<String>? languages1,
    Pets? pets,
    Contacts? contacts,
    List<String>? healthProfile,
    List<String>? diet,
    Services? services,
  }) {
    _id = id;
    _profileCompletion = profileCompletion;
    _agreement = agreement;
    _serviceCompleted = serviceCompleted;
    _cancelledRequests = cancelledRequests;
    _averageReview = averageReview;
    _reviewCount = reviewCount;
    _name = name;
    _profilePic = profilePic;
    _personalDetails1 = personalDetails1;
    _documentDetails2 = documentDetails2;
    _personalDetails2 = personalDetails2;
    _languages1 = languages1;
    _pets = pets;
    _contacts = contacts;
    _healthProfile = healthProfile;
    _diet = diet;
    _services = services;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _profileCompletion = json['profile_completion'] != null
        ? ProfileCompletion.fromJson(json['profile_completion'])
        : null;
    _agreement = json['agreement'];
    _serviceCompleted = json['service_completed'];
    _cancelledRequests = json['cancelled_requests'];
    _averageReview = json['average_review'];
    _reviewCount = json['review_count'];
    _profilePic = json['profile_pic'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _personalDetails1 = json['personal_details'] != null
        ? PersonalDetails1.fromJson(json['personal_details'])
        : null;
    _documentDetails2 = json['document_details'] != null
        ? DocumentDetails2.fromJson(json['document_details'])
        : null;
    _personalDetails2 = json['personal_details2'] != null
        ? PersonalDetails2.fromJson(json['personal_details2'])
        : null;
    _languages1 =
        json['languages'] != null ? json['languages'].cast<String>() : [];
    _pets = json['pets'] != null ? Pets.fromJson(json['pets']) : null;
    _contacts =
        json['contacts'] != null ? Contacts.fromJson(json['contacts']) : null;
    _healthProfile = json['health_profile'] != null
        ? json['health_profile'].cast<String>()
        : [];
    _diet = json['diet'] != null ? json['diet'].cast<String>() : [];
    _services =
        json['services'] != null ? Services.fromJson(json['services']) : null;
  }
  String? _id;
  ProfileCompletion? _profileCompletion;
  dynamic _agreement;
  int? _serviceCompleted;
  int? _cancelledRequests;
  double? _averageReview;
  int? _reviewCount;
  String? _profilePic;
  Name? _name;
  PersonalDetails1? _personalDetails1;
  DocumentDetails2? _documentDetails2;
  PersonalDetails2? _personalDetails2;
  List<String>? _languages1;
  Pets? _pets;
  Contacts? _contacts;
  List<String>? _healthProfile;
  List<String>? _diet;
  Services? _services;
  Data copyWith({
    String? id,
    ProfileCompletion? profileCompletion,
    dynamic agreement,
    int? serviceCompleted,
    int? cancelledRequests,
    String? profilePic,
    double? averageReview,
    int? reviewCount,
    Name? name,
    PersonalDetails1? personalDetails1,
    DocumentDetails2? documentDetails2,
    PersonalDetails2? personalDetails2,
    List<String>? languages1,
    Pets? pets,
    Contacts? contacts,
    List<String>? healthProfile,
    List<String>? diet,
    Services? services,
  }) =>
      Data(
        id: id ?? _id,
        profileCompletion: profileCompletion ?? _profileCompletion,
        agreement: agreement ?? _agreement,
        serviceCompleted: serviceCompleted ?? _serviceCompleted,
        cancelledRequests: cancelledRequests ?? _cancelledRequests,
        averageReview: averageReview ?? _averageReview,
        reviewCount: reviewCount ?? _reviewCount,
        name: name ?? _name,
        profilePic: profilePic ?? _profilePic,
        personalDetails1: personalDetails1 ?? _personalDetails1,
        documentDetails2: documentDetails2 ?? _documentDetails2,
        personalDetails2: personalDetails2 ?? _personalDetails2,
        languages1: languages1 ?? _languages1,
        pets: pets ?? _pets,
        contacts: contacts ?? _contacts,
        healthProfile: healthProfile ?? _healthProfile,
        diet: diet ?? _diet,
        services: services ?? _services,
      );
  String? get id => _id;
  ProfileCompletion? get profileCompletion => _profileCompletion;
  dynamic get agreement => _agreement;
  int? get serviceCompleted => _serviceCompleted;
  int? get cancelledRequests => _cancelledRequests;
  double? get averageReview => _averageReview;
  int? get reviewCount => _reviewCount;
  Name? get name => _name;
  String? get profilePic => _profilePic;
  PersonalDetails1? get personalDetails => _personalDetails1;
  DocumentDetails2? get documentDetails2 => _documentDetails2;
  PersonalDetails2? get personalDetails2 => _personalDetails2;
  List<String>? get languages1 => _languages1;
  Pets? get pets => _pets;
  Contacts? get contacts => _contacts;
  List<String>? get healthProfile => _healthProfile;
  List<String>? get diet => _diet;
  Services? get services => _services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_profileCompletion != null) {
      map['profile_completion'] = _profileCompletion?.toJson();
    }
    map['agreement'] = _agreement;
    map['service_completed'] = _serviceCompleted;
    map['cancelled_requests'] = _cancelledRequests;
    map['average_review'] = _averageReview;
    map['review_count'] = _reviewCount;
    map['profile_pic'] = _profilePic;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_personalDetails1 != null) {
      map['personal_details'] = _personalDetails1?.toJson();
    }
    if (_documentDetails2 != null) {
      map['document_details'] = _documentDetails2?.toJson();
    }
    if (_personalDetails2 != null) {
      map['personal_details2'] = _personalDetails2?.toJson();
    }
    map['languages'] = _languages1;
    if (_pets != null) {
      map['pets'] = _pets?.toJson();
    }
    if (_contacts != null) {
      map['contacts'] = _contacts?.toJson();
    }
    map['health_profile'] = _healthProfile;
    map['diet'] = _diet;
    if (_services != null) {
      map['services'] = _services?.toJson();
    }
    return map;
  }
}

Services servicesFromJson(String str) => Services.fromJson(json.decode(str));
String servicesToJson(Services data) => json.encode(data.toJson());

class Services {
  Services({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  Services.fromJson(dynamic json) {
    if (json['tier1'] != null) {
      _tier1 = [];
      json['tier1'].forEach((v) {
        _tier1?.add(Tier1.fromJson(v));
      });
    }
    if (json['tier2'] != null) {
      _tier2 = [];
      json['tier2'].forEach((v) {
        _tier2?.add(Tier2.fromJson(v));
      });
    }
  }
  List<Tier1>? _tier1;
  List<Tier2>? _tier2;
  Services copyWith({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) =>
      Services(
        tier1: tier1 ?? _tier1,
        tier2: tier2 ?? _tier2,
      );
  List<Tier1>? get tier1 => _tier1;
  List<Tier2>? get tier2 => _tier2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_tier1 != null) {
      map['tier1'] = _tier1?.map((v) => v.toJson()).toList();
    }
    if (_tier2 != null) {
      map['tier2'] = _tier2?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Tier2 tier2FromJson(String str) => Tier2.fromJson(json.decode(str));
String tier2ToJson(Tier2 data) => json.encode(data.toJson());

class Tier2 {
  Tier2({
    String? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  Tier2.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
  Tier2 copyWith({
    String? id,
    String? name,
  }) =>
      Tier2(
        id: id ?? _id,
        name: name ?? _name,
      );
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

Tier1 tier1FromJson(String str) => Tier1.fromJson(json.decode(str));
String tier1ToJson(Tier1 data) => json.encode(data.toJson());

class Tier1 {
  Tier1({
    String? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  Tier1.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
  Tier1 copyWith({
    String? id,
    String? name,
  }) =>
      Tier1(
        id: id ?? _id,
        name: name ?? _name,
      );
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

Contacts contactsFromJson(String str) => Contacts.fromJson(json.decode(str));
String contactsToJson(Contacts data) => json.encode(data.toJson());

class Contacts {
  Contacts({
    PrimaryContact? primaryContact,
    SecondaryContact? secondaryContact,
    PrimaryCarePhysician? primaryCarePhysician,
    Pharmacy? pharmacy,
    HomeHealth? homeHealth,
    OtherCare? otherCare,
  }) {
    _primaryContact = primaryContact;
    _secondaryContact = secondaryContact;
    _primaryCarePhysician = primaryCarePhysician;
    _pharmacy = pharmacy;
    _homeHealth = homeHealth;
    _otherCare = otherCare;
  }

  Contacts.fromJson(dynamic json) {
    _primaryContact = json['primary_contact'] != null
        ? PrimaryContact.fromJson(json['primary_contact'])
        : null;
    _secondaryContact = json['secondary_contact'] != null
        ? SecondaryContact.fromJson(json['secondary_contact'])
        : null;
    _primaryCarePhysician = json['primary_care_physician'] != null
        ? PrimaryCarePhysician.fromJson(json['primary_care_physician'])
        : null;
    _pharmacy =
        json['pharmacy'] != null ? Pharmacy.fromJson(json['pharmacy']) : null;
    _homeHealth = json['home_health'] != null
        ? HomeHealth.fromJson(json['home_health'])
        : null;
    _otherCare = json['other_care'] != null
        ? OtherCare.fromJson(json['other_care'])
        : null;
  }
  PrimaryContact? _primaryContact;
  SecondaryContact? _secondaryContact;
  PrimaryCarePhysician? _primaryCarePhysician;
  Pharmacy? _pharmacy;
  HomeHealth? _homeHealth;
  OtherCare? _otherCare;
  Contacts copyWith({
    PrimaryContact? primaryContact,
    SecondaryContact? secondaryContact,
    PrimaryCarePhysician? primaryCarePhysician,
    Pharmacy? pharmacy,
    HomeHealth? homeHealth,
    OtherCare? otherCare,
  }) =>
      Contacts(
        primaryContact: primaryContact ?? _primaryContact,
        secondaryContact: secondaryContact ?? _secondaryContact,
        primaryCarePhysician: primaryCarePhysician ?? _primaryCarePhysician,
        pharmacy: pharmacy ?? _pharmacy,
        homeHealth: homeHealth ?? _homeHealth,
        otherCare: otherCare ?? _otherCare,
      );
  PrimaryContact? get primaryContact => _primaryContact;
  SecondaryContact? get secondaryContact => _secondaryContact;
  PrimaryCarePhysician? get primaryCarePhysician => _primaryCarePhysician;
  Pharmacy? get pharmacy => _pharmacy;
  HomeHealth? get homeHealth => _homeHealth;
  OtherCare? get otherCare => _otherCare;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_primaryContact != null) {
      map['primary_contact'] = _primaryContact?.toJson();
    }
    if (_secondaryContact != null) {
      map['secondary_contact'] = _secondaryContact?.toJson();
    }
    if (_primaryCarePhysician != null) {
      map['primary_care_physician'] = _primaryCarePhysician?.toJson();
    }
    if (_pharmacy != null) {
      map['pharmacy'] = _pharmacy?.toJson();
    }
    if (_homeHealth != null) {
      map['home_health'] = _homeHealth?.toJson();
    }
    if (_otherCare != null) {
      map['other_care'] = _otherCare?.toJson();
    }
    return map;
  }
}

OtherCare otherCareFromJson(String str) => OtherCare.fromJson(json.decode(str));
String otherCareToJson(OtherCare data) => json.encode(data.toJson());

class OtherCare {
  OtherCare({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) {
    _name = name;
    _address = address;
    _phoneNumber = phoneNumber;
    _street = street;
    _stateName = stateName;
    _state = state;
    _cityName = cityName;
    _city = city;
    _zip = zip;
  }

  OtherCare.fromJson(dynamic json) {
    _name = json['name'];
    _address = json['address'];
    _phoneNumber = json['phone_number'];
    _street = json['street'];
    _stateName = json['state_name'];
    _state = json['state'];
    _cityName = json['city_name'];
    _city = json['city'];
    _zip = json['zip'];
  }
  dynamic _name;
  dynamic _address;
  dynamic _phoneNumber;
  dynamic _street;
  dynamic _stateName;
  dynamic _state;
  dynamic _cityName;
  dynamic _city;
  dynamic _zip;
  OtherCare copyWith({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) =>
      OtherCare(
        name: name ?? _name,
        address: address ?? _address,
        phoneNumber: phoneNumber ?? _phoneNumber,
        street: street ?? _street,
        stateName: stateName ?? _stateName,
        state: state ?? _state,
        cityName: cityName ?? _cityName,
        city: city ?? _city,
        zip: zip ?? _zip,
      );
  dynamic get name => _name;
  dynamic get address => _address;
  dynamic get phoneNumber => _phoneNumber;
  dynamic get street => _street;
  dynamic get stateName => _stateName;
  dynamic get state => _state;
  dynamic get cityName => _cityName;
  dynamic get city => _city;
  dynamic get zip => _zip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['address'] = _address;
    map['phone_number'] = _phoneNumber;
    map['street'] = _street;
    map['state_name'] = _stateName;
    map['state'] = _state;
    map['city_name'] = _cityName;
    map['city'] = _city;
    map['zip'] = _zip;
    return map;
  }
}

HomeHealth homeHealthFromJson(String str) =>
    HomeHealth.fromJson(json.decode(str));
String homeHealthToJson(HomeHealth data) => json.encode(data.toJson());

class HomeHealth {
  HomeHealth({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) {
    _name = name;
    _address = address;
    _phoneNumber = phoneNumber;
    _street = street;
    _stateName = stateName;
    _state = state;
    _cityName = cityName;
    _city = city;
    _zip = zip;
  }

  HomeHealth.fromJson(dynamic json) {
    _name = json['name'];
    _address = json['address'];
    _phoneNumber = json['phone_number'];
    _street = json['street'];
    _stateName = json['state_name'];
    _state = json['state'];
    _cityName = json['city_name'];
    _city = json['city'];
    _zip = json['zip'];
  }
  dynamic _name;
  dynamic _address;
  dynamic _phoneNumber;
  dynamic _street;
  dynamic _stateName;
  dynamic _state;
  dynamic _cityName;
  dynamic _city;
  dynamic _zip;
  HomeHealth copyWith({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) =>
      HomeHealth(
        name: name ?? _name,
        address: address ?? _address,
        phoneNumber: phoneNumber ?? _phoneNumber,
        street: street ?? _street,
        stateName: stateName ?? _stateName,
        state: state ?? _state,
        cityName: cityName ?? _cityName,
        city: city ?? _city,
        zip: zip ?? _zip,
      );
  dynamic get name => _name;
  dynamic get address => _address;
  dynamic get phoneNumber => _phoneNumber;
  dynamic get street => _street;
  dynamic get stateName => _stateName;
  dynamic get state => _state;
  dynamic get cityName => _cityName;
  dynamic get city => _city;
  dynamic get zip => _zip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['address'] = _address;
    map['phone_number'] = _phoneNumber;
    map['street'] = _street;
    map['state_name'] = _stateName;
    map['state'] = _state;
    map['city_name'] = _cityName;
    map['city'] = _city;
    map['zip'] = _zip;
    return map;
  }
}

Pharmacy pharmacyFromJson(String str) => Pharmacy.fromJson(json.decode(str));
String pharmacyToJson(Pharmacy data) => json.encode(data.toJson());

class Pharmacy {
  Pharmacy({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) {
    _name = name;
    _address = address;
    _phoneNumber = phoneNumber;
    _street = street;
    _stateName = stateName;
    _state = state;
    _cityName = cityName;
    _city = city;
    _zip = zip;
  }

  Pharmacy.fromJson(dynamic json) {
    _name = json['name'];
    _address = json['address'];
    _phoneNumber = json['phone_number'];
    _street = json['street'];
    _stateName = json['state_name'];
    _state = json['state'];
    _cityName = json['city_name'];
    _city = json['city'];
    _zip = json['zip'];
  }
  dynamic _name;
  dynamic _address;
  dynamic _phoneNumber;
  dynamic _street;
  dynamic _stateName;
  dynamic _state;
  dynamic _cityName;
  dynamic _city;
  dynamic _zip;
  Pharmacy copyWith({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) =>
      Pharmacy(
        name: name ?? _name,
        address: address ?? _address,
        phoneNumber: phoneNumber ?? _phoneNumber,
        street: street ?? _street,
        stateName: stateName ?? _stateName,
        state: state ?? _state,
        cityName: cityName ?? _cityName,
        city: city ?? _city,
        zip: zip ?? _zip,
      );
  dynamic get name => _name;
  dynamic get address => _address;
  dynamic get phoneNumber => _phoneNumber;
  dynamic get street => _street;
  dynamic get stateName => _stateName;
  dynamic get state => _state;
  dynamic get cityName => _cityName;
  dynamic get city => _city;
  dynamic get zip => _zip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['address'] = _address;
    map['phone_number'] = _phoneNumber;
    map['street'] = _street;
    map['state_name'] = _stateName;
    map['state'] = _state;
    map['city_name'] = _cityName;
    map['city'] = _city;
    map['zip'] = _zip;
    return map;
  }
}

PrimaryCarePhysician primaryCarePhysicianFromJson(String str) =>
    PrimaryCarePhysician.fromJson(json.decode(str));
String primaryCarePhysicianToJson(PrimaryCarePhysician data) =>
    json.encode(data.toJson());

class PrimaryCarePhysician {
  PrimaryCarePhysician({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) {
    _name = name;
    _address = address;
    _phoneNumber = phoneNumber;
    _street = street;
    _stateName = stateName;
    _state = state;
    _cityName = cityName;
    _city = city;
    _zip = zip;
  }

  PrimaryCarePhysician.fromJson(dynamic json) {
    _name = json['name'];
    _address = json['address'];
    _phoneNumber = json['phone_number'];
    _street = json['street'];
    _stateName = json['state_name'];
    _state = json['state'];
    _cityName = json['city_name'];
    _city = json['city'];
    _zip = json['zip'];
  }
  dynamic _name;
  dynamic _address;
  dynamic _phoneNumber;
  dynamic _street;
  dynamic _stateName;
  dynamic _state;
  dynamic _cityName;
  dynamic _city;
  dynamic _zip;
  PrimaryCarePhysician copyWith({
    dynamic name,
    dynamic address,
    dynamic phoneNumber,
    dynamic street,
    dynamic stateName,
    dynamic state,
    dynamic cityName,
    dynamic city,
    dynamic zip,
  }) =>
      PrimaryCarePhysician(
        name: name ?? _name,
        address: address ?? _address,
        phoneNumber: phoneNumber ?? _phoneNumber,
        street: street ?? _street,
        stateName: stateName ?? _stateName,
        state: state ?? _state,
        cityName: cityName ?? _cityName,
        city: city ?? _city,
        zip: zip ?? _zip,
      );
  dynamic get name => _name;
  dynamic get address => _address;
  dynamic get phoneNumber => _phoneNumber;
  dynamic get street => _street;
  dynamic get stateName => _stateName;
  dynamic get state => _state;
  dynamic get cityName => _cityName;
  dynamic get city => _city;
  dynamic get zip => _zip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['address'] = _address;
    map['phone_number'] = _phoneNumber;
    map['street'] = _street;
    map['state_name'] = _stateName;
    map['state'] = _state;
    map['city_name'] = _cityName;
    map['city'] = _city;
    map['zip'] = _zip;
    return map;
  }
}

SecondaryContact secondaryContactFromJson(String str) =>
    SecondaryContact.fromJson(json.decode(str));
String secondaryContactToJson(SecondaryContact data) =>
    json.encode(data.toJson());

class SecondaryContact {
  SecondaryContact({
    dynamic name,
    dynamic relationship,
    dynamic phoneNumber,
    dynamic relationshipDescription,
  }) {
    _name = name;
    _relationship = relationship;
    _phoneNumber = phoneNumber;
    _relationshipDescription = relationshipDescription;
  }

  SecondaryContact.fromJson(dynamic json) {
    _name = json['name'];
    _relationship = json['relationship'];
    _phoneNumber = json['phone_number'];
    _relationshipDescription = json['relationship_description'];
  }
  dynamic _name;
  dynamic _relationship;
  dynamic _phoneNumber;
  dynamic _relationshipDescription;
  SecondaryContact copyWith({
    dynamic name,
    dynamic relationship,
    dynamic phoneNumber,
    dynamic relationshipDescription,
  }) =>
      SecondaryContact(
        name: name ?? _name,
        relationship: relationship ?? _relationship,
        phoneNumber: phoneNumber ?? _phoneNumber,
        relationshipDescription:
            relationshipDescription ?? _relationshipDescription,
      );
  dynamic get name => _name;
  dynamic get relationship => _relationship;
  dynamic get phoneNumber => _phoneNumber;
  dynamic get relationshipDescription => _relationshipDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['relationship'] = _relationship;
    map['phone_number'] = _phoneNumber;
    map['relationship_description'] = _relationshipDescription;
    return map;
  }
}

PrimaryContact primaryContactFromJson(String str) =>
    PrimaryContact.fromJson(json.decode(str));
String primaryContactToJson(PrimaryContact data) => json.encode(data.toJson());

class PrimaryContact {
  PrimaryContact({
    String? name,
    String? relationship,
    String? phoneNumber,
    dynamic relationshipDescription,
  }) {
    _name = name;
    _relationship = relationship;
    _phoneNumber = phoneNumber;
    _relationshipDescription = relationshipDescription;
  }

  PrimaryContact.fromJson(dynamic json) {
    _name = json['name'];
    _relationship = json['relationship'];
    _phoneNumber = json['phone_number'];
    _relationshipDescription = json['relationship_description'];
  }
  String? _name;
  String? _relationship;
  String? _phoneNumber;
  dynamic _relationshipDescription;
  PrimaryContact copyWith({
    String? name,
    String? relationship,
    String? phoneNumber,
    dynamic relationshipDescription,
  }) =>
      PrimaryContact(
        name: name ?? _name,
        relationship: relationship ?? _relationship,
        phoneNumber: phoneNumber ?? _phoneNumber,
        relationshipDescription:
            relationshipDescription ?? _relationshipDescription,
      );
  String? get name => _name;
  String? get relationship => _relationship;
  String? get phoneNumber => _phoneNumber;
  dynamic get relationshipDescription => _relationshipDescription;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['relationship'] = _relationship;
    map['phone_number'] = _phoneNumber;
    map['relationship_description'] = _relationshipDescription;
    return map;
  }
}

Pets petsFromJson(String str) => Pets.fromJson(json.decode(str));
String petsToJson(Pets data) => json.encode(data.toJson());

class Pets {
  Pets({
    bool? havePets,
    List<Pet>? pet,
  }) {
    _havePets = havePets;
    _pet = pet;
  }

  Pets.fromJson(dynamic json) {
    _havePets = json['have_pets'];
    if (json['pet'] != null) {
      _pet = [];
      json['pet'].forEach((v) {
        _pet?.add(Pet.fromJson(v));
      });
    }
  }
  bool? _havePets;
  List<Pet>? _pet;
  Pets copyWith({
    bool? havePets,
    List<Pet>? pet,
  }) =>
      Pets(
        havePets: havePets ?? _havePets,
        pet: pet ?? _pet,
      );
  bool? get havePets => _havePets;
  List<Pet>? get pet => _pet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['have_pets'] = _havePets;
    if (_pet != null) {
      map['pet'] = _pet?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Pet petFromJson(String str) => Pet.fromJson(json.decode(str));
String petToJson(Pet data) => json.encode(data.toJson());

class Pet {
  Pet({
    int? area,
    String? name,
  }) {
    _area = area;
    _name = name;
  }

  Pet.fromJson(dynamic json) {
    _area = json['area'];
    _name = json['name'];
  }
  int? _area;
  String? _name;
  Pet copyWith({
    int? area,
    String? name,
  }) =>
      Pet(
        area: area ?? _area,
        name: name ?? _name,
      );
  int? get area => _area;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['area'] = _area;
    map['name'] = _name;
    return map;
  }
}

PersonalDetails2 personalDetails2FromJson(String str) =>
    PersonalDetails2.fromJson(json.decode(str));
String personalDetails2ToJson(PersonalDetails2 data) =>
    json.encode(data.toJson());

class PersonalDetails2 {
  PersonalDetails2({
    String? isSmokerInHousehold,
    String? haveAnAdvanceDirective,
    String? haveDnr,
  }) {
    _isSmokerInHousehold = isSmokerInHousehold;
    _haveAnAdvanceDirective = haveAnAdvanceDirective;
    _haveDnr = haveDnr;
  }

  PersonalDetails2.fromJson(dynamic json) {
    _isSmokerInHousehold = json['is_smoker_in_household'];
    _haveAnAdvanceDirective = json['have_an_advance_directive'];
    _haveDnr = json['have_dnr'];
  }
  String? _isSmokerInHousehold;
  String? _haveAnAdvanceDirective;
  String? _haveDnr;
  PersonalDetails2 copyWith({
    String? isSmokerInHousehold,
    String? haveAnAdvanceDirective,
    String? haveDnr,
  }) =>
      PersonalDetails2(
        isSmokerInHousehold: isSmokerInHousehold ?? _isSmokerInHousehold,
        haveAnAdvanceDirective:
            haveAnAdvanceDirective ?? _haveAnAdvanceDirective,
        haveDnr: haveDnr ?? _haveDnr,
      );
  String? get isSmokerInHousehold => _isSmokerInHousehold;
  String? get haveAnAdvanceDirective => _haveAnAdvanceDirective;
  String? get haveDnr => _haveDnr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_smoker_in_household'] = _isSmokerInHousehold;
    map['have_an_advance_directive'] = _haveAnAdvanceDirective;
    map['have_dnr'] = _haveDnr;
    return map;
  }
}

DocumentDetails2 documentDetails2FromJson(String str) =>
    DocumentDetails2.fromJson(json.decode(str));
String documentDetails2ToJson(DocumentDetails2 data) =>
    json.encode(data.toJson());

class DocumentDetails2 {
  DocumentDetails2({
    String? documentUploaded,
    String? doumentNumber,
    String? expiryDate,
  }) {
    _documentUploaded = documentUploaded;
    _doumentNumber = doumentNumber;
    _expiryDate = expiryDate;
  }

  DocumentDetails2.fromJson(dynamic json) {
    _documentUploaded = json['document_uploaded'];
    _doumentNumber = json['doument_number'];
    _expiryDate = json['expiry_date'];
  }
  String? _documentUploaded;
  String? _doumentNumber;
  String? _expiryDate;
  DocumentDetails2 copyWith({
    String? documentUploaded,
    String? doumentNumber,
    String? expiryDate,
  }) =>
      DocumentDetails2(
        documentUploaded: documentUploaded ?? _documentUploaded,
        doumentNumber: doumentNumber ?? _doumentNumber,
        expiryDate: expiryDate ?? _expiryDate,
      );
  String? get documentUploaded => _documentUploaded;
  String? get doumentNumber => _doumentNumber;
  String? get expiryDate => _expiryDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document_uploaded'] = _documentUploaded;
    map['doument_number'] = _doumentNumber;
    map['expiry_date'] = _expiryDate;
    return map;
  }
}

PersonalDetails1 personalDetails1FromJson(String str) =>
    PersonalDetails1.fromJson(json.decode(str));
String personalDetails1ToJson(PersonalDetails1 data) =>
    json.encode(data.toJson());

class PersonalDetails1 {
  PersonalDetails1({
    String? dob,
    String? addressline1,
    String? street,
    String? city,
    String? state,
    String? zip,
    String? height,
    String? weight,
    int? gender,
    String? mobile,
    String? alternativeNumber,
    String? email,
  }) {
    _dob = dob;
    _addressline1 = addressline1;
    _street = street;
    _city = city;
    _state = state;
    _zip = zip;
    _height = height;
    _weight = weight;
    _gender = gender;
    _mobile = mobile;
    _alternativeNumber = alternativeNumber;
    _email = email;
  }

  PersonalDetails1.fromJson(dynamic json) {
    _dob = json['dob'];
    _addressline1 = json['addressline1'];
    _street = json['street'];
    _city = json['city'];
    _state = json['state'];
    _zip = json['zip'];
    _height = json['height'];
    _weight = json['weight'];
    _gender = json['gender'];
    _mobile = json['mobile'];
    _alternativeNumber = json['alternative_number'];
    _email = json['email'];
  }
  String? _dob;
  String? _addressline1;
  String? _street;
  String? _city;
  String? _state;
  String? _zip;
  String? _height;
  String? _weight;
  int? _gender;
  String? _mobile;
  String? _alternativeNumber;
  String? _email;
  PersonalDetails1 copyWith({
    String? dob,
    String? addressline1,
    String? street,
    String? city,
    String? state,
    String? zip,
    String? height,
    String? weight,
    int? gender,
    String? mobile,
    String? alternativeNumber,
    String? email,
  }) =>
      PersonalDetails1(
        dob: dob ?? _dob,
        addressline1: addressline1 ?? _addressline1,
        street: street ?? _street,
        city: city ?? _city,
        state: state ?? _state,
        zip: zip ?? _zip,
        height: height ?? _height,
        weight: weight ?? _weight,
        gender: gender ?? _gender,
        mobile: mobile ?? _mobile,
        alternativeNumber: alternativeNumber ?? _alternativeNumber,
        email: email ?? _email,
      );
  String? get dob => _dob;
  String? get addressline1 => _addressline1;
  String? get street => _street;
  String? get city => _city;
  String? get state => _state;
  String? get zip => _zip;
  String? get height => _height;
  String? get weight => _weight;
  int? get gender => _gender;
  String? get mobile => _mobile;
  String? get alternativeNumber => _alternativeNumber;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dob'] = _dob;
    map['addressline1'] = _addressline1;
    map['street'] = _street;
    map['city'] = _city;
    map['state'] = _state;
    map['zip'] = _zip;
    map['height'] = _height;
    map['weight'] = _weight;
    map['gender'] = _gender;
    map['mobile'] = _mobile;
    map['alternative_number'] = _alternativeNumber;
    map['email'] = _email;
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
    _firstName = json['first_name'];
    _lastName = json['last_name'];
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
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
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
