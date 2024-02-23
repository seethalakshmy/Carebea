import 'dart:convert';

PendingServiceResponse pendingServiceResponseFromJson(String str) =>
    PendingServiceResponse.fromJson(json.decode(str));
String pendingServiceResponseToJson(PendingServiceResponse data) =>
    json.encode(data.toJson());

class PendingServiceResponse {
  PendingServiceResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  PendingServiceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  PendingServiceResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      PendingServiceResponse(
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
    num? totals,
    dynamic limit,
    List<ServicesList>? servicesList,
  }) {
    _totals = totals;
    _limit = limit;
    _servicesList = servicesList;
  }

  Data.fromJson(dynamic json) {
    _totals = json['totals'];
    _limit = json['limit'];
    if (json['services_list'] != null) {
      _servicesList = [];
      json['services_list'].forEach((v) {
        _servicesList?.add(ServicesList.fromJson(v));
      });
    }
  }
  num? _totals;
  dynamic _limit;
  List<ServicesList>? _servicesList;
  Data copyWith({
    num? totals,
    dynamic limit,
    List<ServicesList>? servicesList,
  }) =>
      Data(
        totals: totals ?? _totals,
        limit: limit ?? _limit,
        servicesList: servicesList ?? _servicesList,
      );
  num? get totals => _totals;
  dynamic get limit => _limit;
  List<ServicesList>? get servicesList => _servicesList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totals'] = _totals;
    map['limit'] = _limit;
    if (_servicesList != null) {
      map['services_list'] = _servicesList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

ServicesList servicesListFromJson(String str) =>
    ServicesList.fromJson(json.decode(str));
String servicesListToJson(ServicesList data) => json.encode(data.toJson());

class ServicesList {
  ServicesList({
    String? serviceId,
    String? clientName,
    String? clientProPic,
    bool? isSubscribed,
    String? subscriptionType,
    Subscription? subscription,
    String? clientId,
    String? clientMobile,
    String? clientAlternativeMobile,
    String? decisionMakerMobile,
    String? decisionMakerAlternativeMobile,
    String? bookingId,
    String? description,
    String? startDate,
    String? endDate,
    String? startTime,
    String? endTime,
    String? serviceFee,
    String? distance,
    String? careGiverName,
    String? caregiverMobile,
    String? caregiverMobileAlternativeMobile,
    String? careGiverProPic,
    String? rating,
    String? ratingByCg,
    String? reasonForCancellation,
    String? caregiverId,
    Address? address,
    bool? isMultiDayBooking,
    bool? isCareAmbassadorAssigned,
  }) {
    _serviceId = serviceId;
    _clientName = clientName;
    _clientProPic = clientProPic;
    _isSubscribed = isSubscribed;
    _subscriptionType = subscriptionType;
    _subscription = subscription;
    _clientId = clientId;
    _clientMobile = clientMobile;
    _clientAlternativeMobile = clientAlternativeMobile;
    _decisionMakerMobile = decisionMakerMobile;
    _decisionMakerAlternativeMobile = decisionMakerAlternativeMobile;
    _bookingId = bookingId;
    _description = description;
    _startDate = startDate;
    _endDate = endDate;
    _startTime = startTime;
    _endTime = endTime;
    _serviceFee = serviceFee;
    _distance = distance;
    _careGiverName = careGiverName;
    _caregiverMobile = caregiverMobile;
    _caregiverMobileAlternativeMobile = caregiverMobileAlternativeMobile;
    _careGiverProPic = careGiverProPic;
    _rating = rating;
    _ratingByCg = ratingByCg;
    _reasonForCancellation = reasonForCancellation;
    _caregiverId = caregiverId;
    _address = address;
    _isMultiDayBooking = isMultiDayBooking;
    _isCareAmbassadorAssigned = isCareAmbassadorAssigned;
  }

  ServicesList.fromJson(dynamic json) {
    _serviceId = json['service_id'];
    _clientName = json['client_name'];
    _clientProPic = json['client_pro_pic'];
    _isSubscribed = json['is_subscribed'];
    _subscriptionType = json['subscription_type'];
    _subscription = json['subscription'] != null
        ? Subscription.fromJson(json['subscription'])
        : null;
    _clientId = json['client_id'];
    _clientMobile = json['client_mobile'];
    _clientAlternativeMobile = json['client_alternative_mobile'];
    _decisionMakerMobile = json['decision_maker_mobile'];
    _decisionMakerAlternativeMobile = json['decision_maker_alternative_mobile'];
    _bookingId = json['booking_id'];
    _description = json['description'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _startTime = json['start_time'];
    _endTime = json['end_time'];
    _serviceFee = json['service_fee'];
    _distance = json['distance'];
    _careGiverName = json['care_giver_name'];
    _caregiverMobile = json['caregiver_mobile'];
    _caregiverMobileAlternativeMobile =
        json['caregiver_mobile_alternative_mobile'];
    _careGiverProPic = json['care_giver_pro_pic'];
    _rating = json['rating'];
    _ratingByCg = json['rating_by_cg'];
    _reasonForCancellation = json['reason_for_cancellation'];
    _caregiverId = json['caregiver_id'];
    _address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    _isMultiDayBooking = json['is_multi_day_booking'];
    _isCareAmbassadorAssigned = json['is_care_ambassador_assigned'];
  }
  String? _serviceId;
  String? _clientName;
  String? _clientProPic;
  bool? _isSubscribed;
  String? _subscriptionType;
  Subscription? _subscription;
  String? _clientId;
  String? _clientMobile;
  String? _clientAlternativeMobile;
  String? _decisionMakerMobile;
  String? _decisionMakerAlternativeMobile;
  String? _bookingId;
  String? _description;
  String? _startDate;
  String? _endDate;
  String? _startTime;
  String? _endTime;
  String? _serviceFee;
  String? _distance;
  String? _careGiverName;
  String? _caregiverMobile;
  String? _caregiverMobileAlternativeMobile;
  String? _careGiverProPic;
  String? _rating;
  String? _ratingByCg;
  String? _reasonForCancellation;
  String? _caregiverId;
  Address? _address;
  bool? _isMultiDayBooking;
  bool? _isCareAmbassadorAssigned;
  ServicesList copyWith({
    String? serviceId,
    String? clientName,
    String? clientProPic,
    bool? isSubscribed,
    String? subscriptionType,
    Subscription? subscription,
    String? clientId,
    String? clientMobile,
    String? clientAlternativeMobile,
    String? decisionMakerMobile,
    String? decisionMakerAlternativeMobile,
    String? bookingId,
    String? description,
    String? startDate,
    String? endDate,
    String? startTime,
    String? endTime,
    String? serviceFee,
    String? distance,
    String? careGiverName,
    String? caregiverMobile,
    String? caregiverMobileAlternativeMobile,
    String? careGiverProPic,
    String? rating,
    String? ratingByCg,
    String? reasonForCancellation,
    String? caregiverId,
    Address? address,
    bool? isMultiDayBooking,
    bool? isCareAmbassadorAssigned,
  }) =>
      ServicesList(
        serviceId: serviceId ?? _serviceId,
        clientName: clientName ?? _clientName,
        clientProPic: clientProPic ?? _clientProPic,
        isSubscribed: isSubscribed ?? _isSubscribed,
        subscriptionType: subscriptionType ?? _subscriptionType,
        subscription: subscription ?? _subscription,
        clientId: clientId ?? _clientId,
        clientMobile: clientMobile ?? _clientMobile,
        clientAlternativeMobile:
            clientAlternativeMobile ?? _clientAlternativeMobile,
        decisionMakerMobile: decisionMakerMobile ?? _decisionMakerMobile,
        decisionMakerAlternativeMobile:
            decisionMakerAlternativeMobile ?? _decisionMakerAlternativeMobile,
        bookingId: bookingId ?? _bookingId,
        description: description ?? _description,
        startDate: startDate ?? _startDate,
        endDate: endDate ?? _endDate,
        startTime: startTime ?? _startTime,
        endTime: endTime ?? _endTime,
        serviceFee: serviceFee ?? _serviceFee,
        distance: distance ?? _distance,
        careGiverName: careGiverName ?? _careGiverName,
        caregiverMobile: caregiverMobile ?? _caregiverMobile,
        caregiverMobileAlternativeMobile: caregiverMobileAlternativeMobile ??
            _caregiverMobileAlternativeMobile,
        careGiverProPic: careGiverProPic ?? _careGiverProPic,
        rating: rating ?? _rating,
        ratingByCg: ratingByCg ?? _ratingByCg,
        reasonForCancellation: reasonForCancellation ?? _reasonForCancellation,
        caregiverId: caregiverId ?? _caregiverId,
        address: address ?? _address,
        isMultiDayBooking: isMultiDayBooking ?? _isMultiDayBooking,
        isCareAmbassadorAssigned:
            isCareAmbassadorAssigned ?? _isCareAmbassadorAssigned,
      );
  String? get serviceId => _serviceId;
  String? get clientName => _clientName;
  String? get clientProPic => _clientProPic;
  bool? get isSubscribed => _isSubscribed;
  String? get subscriptionType => _subscriptionType;
  Subscription? get subscription => _subscription;
  String? get clientId => _clientId;
  String? get clientMobile => _clientMobile;
  String? get clientAlternativeMobile => _clientAlternativeMobile;
  String? get decisionMakerMobile => _decisionMakerMobile;
  String? get decisionMakerAlternativeMobile => _decisionMakerAlternativeMobile;
  String? get bookingId => _bookingId;
  String? get description => _description;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  String? get serviceFee => _serviceFee;
  String? get distance => _distance;
  String? get careGiverName => _careGiverName;
  String? get caregiverMobile => _caregiverMobile;
  String? get caregiverMobileAlternativeMobile =>
      _caregiverMobileAlternativeMobile;
  String? get careGiverProPic => _careGiverProPic;
  String? get rating => _rating;
  String? get ratingByCg => _ratingByCg;
  String? get reasonForCancellation => _reasonForCancellation;
  String? get caregiverId => _caregiverId;
  Address? get address => _address;
  bool? get isMultiDayBooking => _isMultiDayBooking;
  bool? get isCareAmbassadorAssigned => _isCareAmbassadorAssigned;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_id'] = _serviceId;
    map['client_name'] = _clientName;
    map['client_pro_pic'] = _clientProPic;
    map['is_subscribed'] = _isSubscribed;
    map['subscription_type'] = _subscriptionType;
    if (_subscription != null) {
      map['subscription'] = _subscription?.toJson();
    }
    map['client_id'] = _clientId;
    map['client_mobile'] = _clientMobile;
    map['client_alternative_mobile'] = _clientAlternativeMobile;
    map['decision_maker_mobile'] = _decisionMakerMobile;
    map['decision_maker_alternative_mobile'] = _decisionMakerAlternativeMobile;
    map['booking_id'] = _bookingId;
    map['description'] = _description;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['start_time'] = _startTime;
    map['end_time'] = _endTime;
    map['service_fee'] = _serviceFee;
    map['distance'] = _distance;
    map['care_giver_name'] = _careGiverName;
    map['caregiver_mobile'] = _caregiverMobile;
    map['caregiver_mobile_alternative_mobile'] =
        _caregiverMobileAlternativeMobile;
    map['care_giver_pro_pic'] = _careGiverProPic;
    map['rating'] = _rating;
    map['rating_by_cg'] = _ratingByCg;
    map['reason_for_cancellation'] = _reasonForCancellation;
    map['caregiver_id'] = _caregiverId;
    if (_address != null) {
      map['address'] = _address?.toJson();
    }
    map['is_multi_day_booking'] = _isMultiDayBooking;
    map['is_care_ambassador_assigned'] = _isCareAmbassadorAssigned;
    return map;
  }
}

Address addressFromJson(String str) => Address.fromJson(json.decode(str));
String addressToJson(Address data) => json.encode(data.toJson());

class Address {
  Address({
    String? location,
    String? streetName,
    String? lattitude,
    String? longitude,
    String? cityName,
    String? stateName,
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
    _cityName = cityName;
    _stateName = stateName;
    _city = city;
    _state = state;
    _address = address;
    _zipCode = zipCode;
    _isDelete = isDelete;
    _isDefault = isDefault;
    _id = id;
  }

  Address.fromJson(dynamic json) {
    _location = json['location'];
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _cityName = json['city_name'];
    _stateName = json['state_name'];
    _city = json['city'];
    _state = json['state'];
    _address = json['address'];
    _zipCode = json['zipCode'];
    _isDelete = json['is_delete'];
    _isDefault = json['is_default'];
    _id = json['_id'];
  }
  String? _location;
  String? _streetName;
  String? _lattitude;
  String? _longitude;
  String? _cityName;
  String? _stateName;
  String? _city;
  String? _state;
  String? _address;
  String? _zipCode;
  bool? _isDelete;
  bool? _isDefault;
  String? _id;
  Address copyWith({
    String? location,
    String? streetName,
    String? lattitude,
    String? longitude,
    String? cityName,
    String? stateName,
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
        cityName: cityName ?? _cityName,
        stateName: stateName ?? _stateName,
        city: city ?? _city,
        state: state ?? _state,
        address: address ?? _address,
        zipCode: zipCode ?? _zipCode,
        isDelete: isDelete ?? _isDelete,
        isDefault: isDefault ?? _isDefault,
        id: id ?? _id,
      );
  String? get location => _location;
  String? get streetName => _streetName;
  String? get lattitude => _lattitude;
  String? get longitude => _longitude;
  String? get cityName => _cityName;
  String? get stateName => _stateName;
  String? get city => _city;
  String? get state => _state;
  String? get address => _address;
  String? get zipCode => _zipCode;
  bool? get isDelete => _isDelete;
  bool? get isDefault => _isDefault;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['location'] = _location;
    map['streetName'] = _streetName;
    map['lattitude'] = _lattitude;
    map['longitude'] = _longitude;
    map['city_name'] = _cityName;
    map['state_name'] = _stateName;
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

Subscription subscriptionFromJson(String str) =>
    Subscription.fromJson(json.decode(str));
String subscriptionToJson(Subscription data) => json.encode(data.toJson());

class Subscription {
  Subscription({
    String? expiry,
    String? startedAt,
    bool? isActive,
    String? color,
  }) {
    _expiry = expiry;
    _startedAt = startedAt;
    _isActive = isActive;
    _color = color;
  }

  Subscription.fromJson(dynamic json) {
    _expiry = json['expiry'];
    _startedAt = json['started_at'];
    _isActive = json['isActive'];
    _color = json['color'];
  }
  String? _expiry;
  String? _startedAt;
  bool? _isActive;
  String? _color;
  Subscription copyWith({
    String? expiry,
    String? startedAt,
    bool? isActive,
    String? color,
  }) =>
      Subscription(
        expiry: expiry ?? _expiry,
        startedAt: startedAt ?? _startedAt,
        isActive: isActive ?? _isActive,
        color: color ?? _color,
      );
  String? get expiry => _expiry;
  String? get startedAt => _startedAt;
  bool? get isActive => _isActive;
  String? get color => _color;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['expiry'] = _expiry;
    map['started_at'] = _startedAt;
    map['isActive'] = _isActive;
    map['color'] = _color;
    return map;
  }
}
