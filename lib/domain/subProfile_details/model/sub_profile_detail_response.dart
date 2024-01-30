import 'dart:convert';

subProfileDetailResponseFromJson(String str) =>
    SubProfileDetailResponse.fromJson(json.decode(str));
String subProfileDetailResponseToJson(SubProfileDetailResponse data) =>
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
    int? profileCompletionPercentage,
    ProfileCompletion? profileCompletion,
    List<SubscriptionDetails>? subscriptionDetails,
    List<Address>? address,
    bool? isSubscriptionActive,
    dynamic agreement,
    int? serviceCompleted,
    int? cancelledRequests,
    double? averageReview,
    int? reviewCount,
    Name? name,
    Location? location,
    String? profilePicReferrence,
    String? profilePic,
    String? locationTag,
    PersonalDetails1? personalDetails,
    DocumentDetails2? documentDetails,
    PersonalDetails2? personalDetails2,
    List<String>? languages,
    Pets? pets,
    Contacts? contacts,
    HealthMedicalConditions? healthMedicalConditions,
    List<String>? healthProfile,
    List<String>? diet,
    Services? services,
    AdvanceDirective? advanceDirective,
  }) {
    _id = id;
    _profileCompletionPercentage = profileCompletionPercentage;
    _profileCompletion = profileCompletion;
    _agreement = agreement;
    _isSubscriptionActive = isSubscriptionActive;
    _subscriptionDetails = subscriptionDetails;
    _serviceCompleted = serviceCompleted;
    _cancelledRequests = cancelledRequests;
    _averageReview = averageReview;
    _reviewCount = reviewCount;
    _name = name;
    _address = address;
    _location = location;
    _profilePicReferrence = profilePicReferrence;
    _profilePic = profilePic;
    _locationTag = locationTag;
    _personalDetails = personalDetails;
    _documentDetails = documentDetails;
    _personalDetails2 = personalDetails2;
    _languages = languages;
    _pets = pets;
    _contacts = contacts;
    _healthMedicalConditions = healthMedicalConditions;
    _healthProfile = healthProfile;
    _diet = diet;
    _services = services;
    _advanceDirective = advanceDirective;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _profileCompletionPercentage = json['profile_completion_percentage'];
    _profileCompletion = json['profile_completion'] != null
        ? ProfileCompletion.fromJson(json['profile_completion'])
        : null;
    _isSubscriptionActive = json['is_subscription_active'];
    if (json['subscription_details'] != null) {
      _subscriptionDetails = [];
      json['subscription_details'].forEach((v) {
        _subscriptionDetails?.add(SubscriptionDetails.fromJson(v));
      });
    }
    _agreement = json['agreement'];
    _serviceCompleted = json['service_completed'];
    _cancelledRequests = json['cancelled_requests'];
    _averageReview = json['average_review'];
    _reviewCount = json['review_count'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    _profilePicReferrence = json['profile_pic_referrence'];
    _profilePic = json['profile_pic'];
    _locationTag = json['location_tag'];
    _personalDetails = json['personal_details'] != null
        ? PersonalDetails1.fromJson(json['personal_details'])
        : null;
    _documentDetails = json['document_details'] != null
        ? DocumentDetails2.fromJson(json['document_details'])
        : null;
    _personalDetails2 = json['personal_details2'] != null
        ? PersonalDetails2.fromJson(json['personal_details2'])
        : null;
    _languages =
        json['languages'] != null ? json['languages'].cast<String>() : [];
    _pets = json['pets'] != null ? Pets.fromJson(json['pets']) : null;
    _contacts =
        json['contacts'] != null ? Contacts.fromJson(json['contacts']) : null;
    _healthMedicalConditions = json['health_medical_conditions'] != null
        ? HealthMedicalConditions.fromJson(json['health_medical_conditions'])
        : null;
    _healthProfile = json['health_profile'] != null
        ? json['health_profile'].cast<String>()
        : [];
    _diet = json['diet'] != null ? json['diet'].cast<String>() : [];
    _services =
        json['services'] != null ? Services.fromJson(json['services']) : null;
    _advanceDirective = json['advance_directive'] != null
        ? AdvanceDirective.fromJson(json['advance_directive'])
        : null;
    if (json['address'] != null) {
      _address = [];
      json['address'].forEach((v) {
        _address?.add(Address.fromJson(v));
      });
    }
  }
  String? _id;
  int? _profileCompletionPercentage;
  ProfileCompletion? _profileCompletion;
  dynamic _agreement;
  bool? _isSubscriptionActive;
  List<SubscriptionDetails>? _subscriptionDetails;
  int? _serviceCompleted;
  int? _cancelledRequests;
  double? _averageReview;
  int? _reviewCount;
  Name? _name;
  List<Address>? _address;

  Location? _location;
  String? _profilePicReferrence;
  String? _profilePic;
  String? _locationTag;
  PersonalDetails1? _personalDetails;
  DocumentDetails2? _documentDetails;
  PersonalDetails2? _personalDetails2;
  List<String>? _languages;
  Pets? _pets;
  Contacts? _contacts;
  HealthMedicalConditions? _healthMedicalConditions;
  List<String>? _healthProfile;
  List<String>? _diet;
  Services? _services;
  AdvanceDirective? _advanceDirective;

  Data copyWith({
    String? id,
    int? profileCompletionPercentage,
    bool? isSubscriptionActive,
    List<SubscriptionDetails>? subscriptionDetails,
    ProfileCompletion? profileCompletion,
    dynamic agreement,
    List<Address>? address,
    int? serviceCompleted,
    int? cancelledRequests,
    double? averageReview,
    int? reviewCount,
    Name? name,
    Location? location,
    String? profilePicReferrence,
    String? profilePic,
    String? locationTag,
    PersonalDetails1? personalDetails,
    DocumentDetails2? documentDetails,
    PersonalDetails2? personalDetails2,
    List<String>? languages,
    Pets? pets,
    Contacts? contacts,
    HealthMedicalConditions? healthMedicalConditions,
    List<String>? healthProfile,
    List<String>? diet,
    Services? services,
    AdvanceDirective? advanceDirective,
  }) =>
      Data(
        id: id ?? _id,
        profileCompletionPercentage:
            profileCompletionPercentage ?? _profileCompletionPercentage,
        isSubscriptionActive: isSubscriptionActive ?? _isSubscriptionActive,
        subscriptionDetails: subscriptionDetails ?? _subscriptionDetails,
        profileCompletion: profileCompletion ?? _profileCompletion,
        agreement: agreement ?? _agreement,
        serviceCompleted: serviceCompleted ?? _serviceCompleted,
        cancelledRequests: cancelledRequests ?? _cancelledRequests,
        averageReview: averageReview ?? _averageReview,
        reviewCount: reviewCount ?? _reviewCount,
        name: name ?? _name,
        location: location ?? _location,
        address: address ?? _address,
        profilePicReferrence: profilePicReferrence ?? _profilePicReferrence,
        profilePic: profilePic ?? _profilePic,
        locationTag: locationTag ?? _locationTag,
        personalDetails: personalDetails ?? _personalDetails,
        documentDetails: documentDetails ?? _documentDetails,
        personalDetails2: personalDetails2 ?? _personalDetails2,
        languages: languages ?? _languages,
        pets: pets ?? _pets,
        contacts: contacts ?? _contacts,
        healthMedicalConditions:
            healthMedicalConditions ?? _healthMedicalConditions,
        healthProfile: healthProfile ?? _healthProfile,
        diet: diet ?? _diet,
        services: services ?? _services,
        advanceDirective: advanceDirective ?? _advanceDirective,
      );
  String? get id => _id;
  int? get profileCompletionPercentage => _profileCompletionPercentage;
  ProfileCompletion? get profileCompletion => _profileCompletion;
  bool? get isSubscriptionActive => _isSubscriptionActive;
  List<SubscriptionDetails>? get subscriptionDetails => _subscriptionDetails;
  dynamic get agreement => _agreement;
  int? get serviceCompleted => _serviceCompleted;
  int? get cancelledRequests => _cancelledRequests;
  List<Address>? get address => _address;

  double? get averageReview => _averageReview;
  int? get reviewCount => _reviewCount;
  Name? get name => _name;
  Location? get location => _location;
  String? get profilePicReferrence => _profilePicReferrence;
  String? get profilePic => _profilePic;
  String? get locationTag => _locationTag;
  PersonalDetails1? get personalDetails => _personalDetails;
  DocumentDetails2? get documentDetails => _documentDetails;
  PersonalDetails2? get personalDetails2 => _personalDetails2;
  List<String>? get languages => _languages;
  Pets? get pets => _pets;
  Contacts? get contacts => _contacts;
  HealthMedicalConditions? get healthMedicalConditions =>
      _healthMedicalConditions;
  List<String>? get healthProfile => _healthProfile;
  List<String>? get diet => _diet;
  Services? get services => _services;
  AdvanceDirective? get advanceDirective => _advanceDirective;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['profile_completion_percentage'] = _profileCompletionPercentage;
    if (_profileCompletion != null) {
      map['profile_completion'] = _profileCompletion?.toJson();
    }
    map['is_subscription_active'] = _isSubscriptionActive;
    if (_subscriptionDetails != null) {
      map['subscription_details'] =
          _subscriptionDetails?.map((v) => v.toJson()).toList();
    }
    if (_address != null) {
      map['address'] = _address?.map((v) => v.toJson()).toList();
    }
    map['agreement'] = _agreement;
    map['service_completed'] = _serviceCompleted;
    map['cancelled_requests'] = _cancelledRequests;
    map['average_review'] = _averageReview;
    map['review_count'] = _reviewCount;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    if (_location != null) {
      map['location'] = _location?.toJson();
    }
    map['profile_pic_referrence'] = _profilePicReferrence;
    map['profile_pic'] = _profilePic;
    map['location_tag'] = _locationTag;
    if (_personalDetails != null) {
      map['personal_details'] = _personalDetails?.toJson();
    }
    if (_documentDetails != null) {
      map['document_details'] = _documentDetails?.toJson();
    }
    if (_personalDetails2 != null) {
      map['personal_details2'] = _personalDetails2?.toJson();
    }
    map['languages'] = _languages;
    if (_pets != null) {
      map['pets'] = _pets?.toJson();
    }
    if (_contacts != null) {
      map['contacts'] = _contacts?.toJson();
    }
    if (_healthMedicalConditions != null) {
      map['health_medical_conditions'] = _healthMedicalConditions?.toJson();
    }
    map['health_profile'] = _healthProfile;
    map['diet'] = _diet;
    if (_services != null) {
      map['services'] = _services?.toJson();
    }
    if (_advanceDirective != null) {
      map['advance_directive'] = _advanceDirective?.toJson();
    }
    return map;
  }
}

AdvanceDirective advanceDirectiveFromJson(String str) =>
    AdvanceDirective.fromJson(json.decode(str));
String advanceDirectiveToJson(AdvanceDirective data) =>
    json.encode(data.toJson());

class AdvanceDirective {
  AdvanceDirective({
    bool? status,
    String? advanceDirectiveLocation,
  }) {
    _status = status;
    _advanceDirectiveLocation = advanceDirectiveLocation;
  }

  AdvanceDirective.fromJson(dynamic json) {
    _status = json['status'];
    _advanceDirectiveLocation = json['advanceDirectiveLocation'];
  }
  bool? _status;
  String? _advanceDirectiveLocation;
  AdvanceDirective copyWith({
    bool? status,
    String? advanceDirectiveLocation,
  }) =>
      AdvanceDirective(
        status: status ?? _status,
        advanceDirectiveLocation:
            advanceDirectiveLocation ?? _advanceDirectiveLocation,
      );
  bool? get status => _status;
  String? get advanceDirectiveLocation => _advanceDirectiveLocation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['advanceDirectiveLocation'] = _advanceDirectiveLocation;
    return map;
  }
}

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address(
      {Location? location,
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
      String? region,
      String? stateName,
      String? cityName}) {
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
    _region = region;
    _stateName = stateName;
    _cityName = cityName;
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
    _region = json['region'];
    _stateName = json['stateName'];
    _cityName = json['cityName'];
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
  String? _region;
  String? _stateName;
  String? _cityName;
  Address copyWith(
          {Location? location,
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
          String? region,
          String? stateName,
          String? cityName}) =>
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
          region: region ?? _region,
          stateName: stateName ?? _stateName,
          cityName: cityName ?? _cityName);
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
  String? get region => _region;
  String? get stateName => _stateName;
  String? get cityName => _cityName;

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
    map['region'] = _region;
    map['stateName'] = _stateName;
    map['cityName'] = _cityName;
    return map;
  }
}

SubscriptionDetails subscriptionDetailsFromJson(String str) =>
    SubscriptionDetails.fromJson(json.decode(str));
String subscriptionDetailsToJson(SubscriptionDetails data) =>
    json.encode(data.toJson());

class SubscriptionDetails {
  SubscriptionDetails({
    dynamic monthlyExpiry,
    dynamic monthlyRenewalLeft,
    dynamic monthlyFee,
    bool? isPaidMontly,
    dynamic subscriptionCancelChargePerMonth,
    String? subscriptionId,
    String? expiry,
    String? type,
    String? color,
    String? startedAt,
    bool? isRecurring,
    bool? isActive,
    String? lastAlertDate,
    bool? isAlertMailSend,
    bool? isAlertSmsSend,
    String? subscriptionPlanFee,
    String? id,
  }) {
    _monthlyExpiry = monthlyExpiry;
    _monthlyRenewalLeft = monthlyRenewalLeft;
    _monthlyFee = monthlyFee;
    _isPaidMontly = isPaidMontly;
    _subscriptionCancelChargePerMonth = subscriptionCancelChargePerMonth;
    _subscriptionId = subscriptionId;
    _expiry = expiry;
    _type = type;
    _color = color;
    _startedAt = startedAt;
    _isRecurring = isRecurring;
    _isActive = isActive;
    _lastAlertDate = lastAlertDate;
    _isAlertMailSend = isAlertMailSend;
    _isAlertSmsSend = isAlertSmsSend;
    _subscriptionPlanFee = subscriptionPlanFee;
    _id = id;
  }

  SubscriptionDetails.fromJson(dynamic json) {
    _monthlyExpiry = json['monthlyExpiry'];
    _monthlyRenewalLeft = json['monthlyRenewalLeft'];
    _monthlyFee = json['monthlyFee'];
    _isPaidMontly = json['isPaidMontly'];
    _subscriptionCancelChargePerMonth =
        json['subscriptionCancelChargePerMonth'];
    _subscriptionId = json['subscriptionId'];
    _expiry = json['expiry'];
    _type = json['type'];
    _color = json['color'];
    _startedAt = json['startedAt'];
    _isRecurring = json['isRecurring'];
    _isActive = json['isActive'];
    _lastAlertDate = json['lastAlertDate'];
    _isAlertMailSend = json['isAlertMailSend'];
    _isAlertSmsSend = json['isAlertSmsSend'];
    _subscriptionPlanFee = json['SubscriptionPlanFee'];
    _id = json['_id'];
  }
  dynamic _monthlyExpiry;
  dynamic _monthlyRenewalLeft;
  dynamic _monthlyFee;
  bool? _isPaidMontly;
  dynamic _subscriptionCancelChargePerMonth;
  String? _subscriptionId;
  String? _expiry;
  String? _type;
  String? _color;
  String? _startedAt;
  bool? _isRecurring;
  bool? _isActive;
  String? _lastAlertDate;
  bool? _isAlertMailSend;
  bool? _isAlertSmsSend;
  String? _subscriptionPlanFee;
  String? _id;
  SubscriptionDetails copyWith({
    dynamic monthlyExpiry,
    dynamic monthlyRenewalLeft,
    dynamic monthlyFee,
    bool? isPaidMontly,
    dynamic subscriptionCancelChargePerMonth,
    String? subscriptionId,
    String? expiry,
    String? type,
    String? color,
    String? startedAt,
    bool? isRecurring,
    bool? isActive,
    String? lastAlertDate,
    bool? isAlertMailSend,
    bool? isAlertSmsSend,
    String? subscriptionPlanFee,
    String? id,
  }) =>
      SubscriptionDetails(
        monthlyExpiry: monthlyExpiry ?? _monthlyExpiry,
        monthlyRenewalLeft: monthlyRenewalLeft ?? _monthlyRenewalLeft,
        monthlyFee: monthlyFee ?? _monthlyFee,
        isPaidMontly: isPaidMontly ?? _isPaidMontly,
        subscriptionCancelChargePerMonth: subscriptionCancelChargePerMonth ??
            _subscriptionCancelChargePerMonth,
        subscriptionId: subscriptionId ?? _subscriptionId,
        expiry: expiry ?? _expiry,
        type: type ?? _type,
        color: color ?? _color,
        startedAt: startedAt ?? _startedAt,
        isRecurring: isRecurring ?? _isRecurring,
        isActive: isActive ?? _isActive,
        lastAlertDate: lastAlertDate ?? _lastAlertDate,
        isAlertMailSend: isAlertMailSend ?? _isAlertMailSend,
        isAlertSmsSend: isAlertSmsSend ?? _isAlertSmsSend,
        subscriptionPlanFee: subscriptionPlanFee ?? _subscriptionPlanFee,
        id: id ?? _id,
      );
  dynamic get monthlyExpiry => _monthlyExpiry;
  dynamic get monthlyRenewalLeft => _monthlyRenewalLeft;
  dynamic get monthlyFee => _monthlyFee;
  bool? get isPaidMontly => _isPaidMontly;
  dynamic get subscriptionCancelChargePerMonth =>
      _subscriptionCancelChargePerMonth;
  String? get subscriptionId => _subscriptionId;
  String? get expiry => _expiry;
  String? get type => _type;
  String? get color => _color;
  String? get startedAt => _startedAt;
  bool? get isRecurring => _isRecurring;
  bool? get isActive => _isActive;
  String? get lastAlertDate => _lastAlertDate;
  bool? get isAlertMailSend => _isAlertMailSend;
  bool? get isAlertSmsSend => _isAlertSmsSend;
  String? get subscriptionPlanFee => _subscriptionPlanFee;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['monthlyExpiry'] = _monthlyExpiry;
    map['monthlyRenewalLeft'] = _monthlyRenewalLeft;
    map['monthlyFee'] = _monthlyFee;
    map['isPaidMontly'] = _isPaidMontly;
    map['subscriptionCancelChargePerMonth'] = _subscriptionCancelChargePerMonth;
    map['subscriptionId'] = _subscriptionId;
    map['expiry'] = _expiry;
    map['type'] = _type;
    map['color'] = _color;
    map['startedAt'] = _startedAt;
    map['isRecurring'] = _isRecurring;
    map['isActive'] = _isActive;
    map['lastAlertDate'] = _lastAlertDate;
    map['isAlertMailSend'] = _isAlertMailSend;
    map['isAlertSmsSend'] = _isAlertSmsSend;
    map['SubscriptionPlanFee'] = _subscriptionPlanFee;
    map['_id'] = _id;
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

HealthMedicalConditions healthMedicalConditionsFromJson(String str) =>
    HealthMedicalConditions.fromJson(json.decode(str));
String healthMedicalConditionsToJson(HealthMedicalConditions data) =>
    json.encode(data.toJson());

class HealthMedicalConditions {
  HealthMedicalConditions({
    List<String>? diagnosis,
    dynamic diagnoseDescription,
    List<String>? diet,
    String? dietDescription,
    HealthCondition? healthCondition,
    List<Medication>? medication,
    List<String>? drugs,
    String? userId,
  }) {
    _diagnosis = diagnosis;
    _diagnoseDescription = diagnoseDescription;
    _diet = diet;
    _dietDescription = dietDescription;
    _healthCondition = healthCondition;
    _medication = medication;
    _drugs = drugs;
    _userId = userId;
  }

  HealthMedicalConditions.fromJson(dynamic json) {
    _diagnosis =
        json['diagnosis'] != null ? json['diagnosis'].cast<String>() : [];
    _diagnoseDescription = json['diagnose_description'];
    _diet = json['diet'] != null ? json['diet'].cast<String>() : [];
    _drugs = json['drugs'] != null ? json['drugs'].cast<String>() : [];
    _dietDescription = json['diet_description'];
    _healthCondition = json['health_condition'] != null
        ? HealthCondition.fromJson(json['health_condition'])
        : null;
    if (json['medication'] != null) {
      _medication = [];
      json['medication'].forEach((v) {
        _medication?.add(Medication.fromJson(v));
      });
    }

    _userId = json['user_id'];
  }
  List<String>? _diagnosis;
  dynamic _diagnoseDescription;
  List<String>? _diet;
  String? _dietDescription;
  HealthCondition? _healthCondition;
  List<Medication>? _medication;
  List<String>? _drugs;
  String? _userId;
  HealthMedicalConditions copyWith({
    List<String>? diagnosis,
    dynamic diagnoseDescription,
    List<String>? diet,
    String? dietDescription,
    HealthCondition? healthCondition,
    List<Medication>? medication,
    List<String>? drugs,
    String? userId,
  }) =>
      HealthMedicalConditions(
        diagnosis: diagnosis ?? _diagnosis,
        diagnoseDescription: diagnoseDescription ?? _diagnoseDescription,
        diet: diet ?? _diet,
        dietDescription: dietDescription ?? _dietDescription,
        healthCondition: healthCondition ?? _healthCondition,
        medication: medication ?? _medication,
        drugs: drugs ?? _drugs,
        userId: userId ?? _userId,
      );
  List<String>? get diagnosis => _diagnosis;
  dynamic get diagnoseDescription => _diagnoseDescription;
  List<String>? get diet => _diet;
  String? get dietDescription => _dietDescription;
  HealthCondition? get healthCondition => _healthCondition;
  List<Medication>? get medication => _medication;
  List<String>? get drugs => _drugs;
  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['diagnosis'] = _diagnosis;
    map['diagnose_description'] = _diagnoseDescription;
    map['diet'] = _diet;
    map['drugs'] = _drugs;
    map['diet_description'] = _dietDescription;
    if (_healthCondition != null) {
      map['health_condition'] = _healthCondition?.toJson();
    }
    if (_medication != null) {
      map['medication'] = _medication?.map((v) => v.toJson()).toList();
    }

    map['user_id'] = _userId;
    return map;
  }
}

Medication medicationFromJson(String str) =>
    Medication.fromJson(json.decode(str));
String medicationToJson(Medication data) => json.encode(data.toJson());

class Medication {
  Medication({
    String? drugName,
    String? freequency,
    String? dosage,
    String? prescribingDoctor,
    String? expirationDate,
    bool? status,
  }) {
    _drugName = drugName;
    _freequency = freequency;
    _dosage = dosage;
    _prescribingDoctor = prescribingDoctor;
    _expirationDate = expirationDate;
    _status = status;
  }

  Medication.fromJson(dynamic json) {
    _drugName = json['drug_name'];
    _freequency = json['freequency'];
    _dosage = json['dosage'];
    _prescribingDoctor = json['prescribing_doctor'];
    _expirationDate = json['expiration_date'];
    _status = json['status'];
  }
  String? _drugName;
  String? _freequency;
  String? _dosage;
  String? _prescribingDoctor;
  String? _expirationDate;
  bool? _status;
  Medication copyWith({
    String? drugName,
    String? freequency,
    String? dosage,
    String? prescribingDoctor,
    String? expirationDate,
    bool? status,
  }) =>
      Medication(
        drugName: drugName ?? _drugName,
        freequency: freequency ?? _freequency,
        dosage: dosage ?? _dosage,
        prescribingDoctor: prescribingDoctor ?? _prescribingDoctor,
        expirationDate: expirationDate ?? _expirationDate,
        status: status ?? _status,
      );
  String? get drugName => _drugName;
  String? get freequency => _freequency;
  String? get dosage => _dosage;
  String? get prescribingDoctor => _prescribingDoctor;
  String? get expirationDate => _expirationDate;
  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['drug_name'] = _drugName;
    map['freequency'] = _freequency;
    map['dosage'] = _dosage;
    map['prescribing_doctor'] = _prescribingDoctor;
    map['expiration_date'] = _expirationDate;
    map['status'] = _status;
    return map;
  }
}

HealthCondition healthConditionFromJson(String str) =>
    HealthCondition.fromJson(json.decode(str));
String healthConditionToJson(HealthCondition data) =>
    json.encode(data.toJson());

class HealthCondition {
  HealthCondition({
    bool? haveFoodAllergies,
    String? foodAllergiDesc,
    bool? haveHearingDifficulty,
    bool? haveHearingAid,
    bool? haveDifficultyInvision,
    bool? haveGlasses,
    String? mentalHealthCondiditon,
    String? mentalHealthName,
    String? mobility,
    String? mobilityName,
    bool? haveAnyAllergyProblem,
    String? allergiProblemDesc,
  }) {
    _haveFoodAllergies = haveFoodAllergies;
    _foodAllergiDesc = foodAllergiDesc;
    _haveHearingDifficulty = haveHearingDifficulty;
    _haveHearingAid = haveHearingAid;
    _haveDifficultyInvision = haveDifficultyInvision;
    _haveGlasses = haveGlasses;
    _mentalHealthCondiditon = mentalHealthCondiditon;
    _mentalHealthName = mentalHealthName;
    _mobility = mobility;
    _mobilityName = mobilityName;
    _haveAnyAllergyProblem = haveAnyAllergyProblem;
    _allergiProblemDesc = allergiProblemDesc;
  }

  HealthCondition.fromJson(dynamic json) {
    _haveFoodAllergies = json['have_food_allergies'];
    _foodAllergiDesc = json['food_allergi_desc'];
    _haveHearingDifficulty = json['have_hearing_difficulty'];
    _haveHearingAid = json['have_hearing_aid'];
    _haveDifficultyInvision = json['have_difficulty_invision'];
    _haveGlasses = json['have_glasses'];
    _mentalHealthCondiditon = json['mental_health_condiditon'];
    _mentalHealthName = json['mental_health_name'];
    _mobility = json['mobility'];
    _mobilityName = json['mobility_name'];
    _haveAnyAllergyProblem = json['have_any_allergy_problem'];
    _allergiProblemDesc = json['allergi_problem_desc'];
  }
  bool? _haveFoodAllergies;
  String? _foodAllergiDesc;
  bool? _haveHearingDifficulty;
  bool? _haveHearingAid;
  bool? _haveDifficultyInvision;
  bool? _haveGlasses;
  String? _mentalHealthCondiditon;
  String? _mentalHealthName;
  String? _mobility;
  String? _mobilityName;
  bool? _haveAnyAllergyProblem;
  String? _allergiProblemDesc;
  HealthCondition copyWith({
    bool? haveFoodAllergies,
    String? foodAllergiDesc,
    bool? haveHearingDifficulty,
    bool? haveHearingAid,
    bool? haveDifficultyInvision,
    bool? haveGlasses,
    String? mentalHealthCondiditon,
    String? mentalHealthName,
    String? mobility,
    String? mobilityName,
    bool? haveAnyAllergyProblem,
    String? allergiProblemDesc,
  }) =>
      HealthCondition(
        haveFoodAllergies: haveFoodAllergies ?? _haveFoodAllergies,
        foodAllergiDesc: foodAllergiDesc ?? _foodAllergiDesc,
        haveHearingDifficulty: haveHearingDifficulty ?? _haveHearingDifficulty,
        haveHearingAid: haveHearingAid ?? _haveHearingAid,
        haveDifficultyInvision:
            haveDifficultyInvision ?? _haveDifficultyInvision,
        haveGlasses: haveGlasses ?? _haveGlasses,
        mentalHealthCondiditon:
            mentalHealthCondiditon ?? _mentalHealthCondiditon,
        mentalHealthName: mentalHealthName ?? _mentalHealthName,
        mobility: mobility ?? _mobility,
        mobilityName: mobilityName ?? _mobilityName,
        haveAnyAllergyProblem: haveAnyAllergyProblem ?? _haveAnyAllergyProblem,
        allergiProblemDesc: allergiProblemDesc ?? _allergiProblemDesc,
      );
  bool? get haveFoodAllergies => _haveFoodAllergies;
  String? get foodAllergiDesc => _foodAllergiDesc;
  bool? get haveHearingDifficulty => _haveHearingDifficulty;
  bool? get haveHearingAid => _haveHearingAid;
  bool? get haveDifficultyInvision => _haveDifficultyInvision;
  bool? get haveGlasses => _haveGlasses;
  String? get mentalHealthCondiditon => _mentalHealthCondiditon;
  String? get mentalHealthName => _mentalHealthName;
  String? get mobility => _mobility;
  String? get mobilityName => _mobilityName;
  bool? get haveAnyAllergyProblem => _haveAnyAllergyProblem;
  String? get allergiProblemDesc => _allergiProblemDesc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['have_food_allergies'] = _haveFoodAllergies;
    map['food_allergi_desc'] = _foodAllergiDesc;
    map['have_hearing_difficulty'] = _haveHearingDifficulty;
    map['have_hearing_aid'] = _haveHearingAid;
    map['have_difficulty_invision'] = _haveDifficultyInvision;
    map['have_glasses'] = _haveGlasses;
    map['mental_health_condiditon'] = _mentalHealthCondiditon;
    map['mental_health_name'] = _mentalHealthName;
    map['mobility'] = _mobility;
    map['mobility_name'] = _mobilityName;
    map['have_any_allergy_problem'] = _haveAnyAllergyProblem;
    map['allergi_problem_desc'] = _allergiProblemDesc;
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
    String? url,
    String? doumentNumber,
    String? expiryDate,
  }) {
    _documentUploaded = documentUploaded;
    _url = url;
    _doumentNumber = doumentNumber;
    _expiryDate = expiryDate;
  }

  DocumentDetails2.fromJson(dynamic json) {
    _documentUploaded = json['document_uploaded'];
    _url = json['url'];
    _doumentNumber = json['doument_number'];
    _expiryDate = json['expiry_date'];
  }
  String? _documentUploaded;
  String? _url;
  String? _doumentNumber;
  String? _expiryDate;
  DocumentDetails2 copyWith({
    String? documentUploaded,
    String? url,
    String? doumentNumber,
    String? expiryDate,
  }) =>
      DocumentDetails2(
        documentUploaded: documentUploaded ?? _documentUploaded,
        url: url ?? _url,
        doumentNumber: doumentNumber ?? _doumentNumber,
        expiryDate: expiryDate ?? _expiryDate,
      );
  String? get documentUploaded => _documentUploaded;
  String? get url => _url;
  String? get doumentNumber => _doumentNumber;
  String? get expiryDate => _expiryDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document_uploaded'] = _documentUploaded;
    map['url'] = _url;
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
    String? gender,
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
  String? _gender;
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
    String? gender,
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
  String? get gender => _gender;
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

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());

class Location {
  Location({
    List<double>? coordinates,
    String? type,
  }) {
    _coordinates = coordinates;
    _type = type;
  }

  Location.fromJson(dynamic json) {
    _coordinates =
        json['coordinates'] != null ? json['coordinates'].cast<double>() : [];
    _type = json['type'];
  }
  List<double>? _coordinates;
  String? _type;
  Location copyWith({
    List<double>? coordinates,
    String? type,
  }) =>
      Location(
        coordinates: coordinates ?? _coordinates,
        type: type ?? _type,
      );
  List<double>? get coordinates => _coordinates;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coordinates'] = _coordinates;
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
