import 'dart:convert';
ServiceRequestResponse serviceRequestResponseFromJson(String str) => ServiceRequestResponse.fromJson(json.decode(str));
String serviceRequestResponseToJson(ServiceRequestResponse data) => json.encode(data.toJson());
class ServiceRequestResponse {
  ServiceRequestResponse({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ServiceRequestResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
ServiceRequestResponse copyWith({  bool? status,
  String? message,
  Data? data,
}) => ServiceRequestResponse(  status: status ?? _status,
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
      List<Services>? services, 
      num? totalCount, 
      num? offset, 
      num? actualLimit,}){
    _services = services;
    _totalCount = totalCount;
    _offset = offset;
    _actualLimit = actualLimit;
}

  Data.fromJson(dynamic json) {
    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(Services.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    _offset = json['offset'];
    _actualLimit = json['actualLimit'];
  }
  List<Services>? _services;
  num? _totalCount;
  num? _offset;
  num? _actualLimit;
Data copyWith({  List<Services>? services,
  num? totalCount,
  num? offset,
  num? actualLimit,
}) => Data(  services: services ?? _services,
  totalCount: totalCount ?? _totalCount,
  offset: offset ?? _offset,
  actualLimit: actualLimit ?? _actualLimit,
);
  List<Services>? get services => _services;
  num? get totalCount => _totalCount;
  num? get offset => _offset;
  num? get actualLimit => _actualLimit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    map['offset'] = _offset;
    map['actualLimit'] = _actualLimit;
    return map;
  }

}

Services servicesFromJson(String str) => Services.fromJson(json.decode(str));
String servicesToJson(Services data) => json.encode(data.toJson());
class Services {
  Services({
      String? id, 
      String? serviceId, 
      String? service, 
      String? startDateTime, 
      String? endDateTime, 
      String? rating, 
      String? cancelledBy, 
      String? refundStatus, 
      bool? isRated, 
      String? cancelReason, 
      String? feedback, 
      List<String>? suspectedThingsDuringShift, 
      String? suspectedOtherIssues, 
      List<String>? caregiverReportedIssues, 
      String? caregiverReportedOtherIssues, 
      List<String>? serviceNeeded, 
      String? noOfMatching, 
      String? upcomingDays, 
      List<Location>? location, 
      List<String>? serviceCompleted, 
      List<String>? serviceNotCompleted, 
      String? extraFee, 
      String? tip, 
      String? refund, 
      String? serviceFee, 
      DecisionMaker? decisionMaker, 
      Client? client,
    bool? isOngoing,
  }){
    _id = id;
    _serviceId = serviceId;
    _service = service;
    _startDateTime = startDateTime;
    _endDateTime = endDateTime;
    _rating = rating;
    _cancelledBy = cancelledBy;
    _refundStatus = refundStatus;
    _isRated = isRated;
    _cancelReason = cancelReason;
    _feedback = feedback;
    _suspectedThingsDuringShift = suspectedThingsDuringShift;
    _suspectedOtherIssues = suspectedOtherIssues;
    _caregiverReportedIssues = caregiverReportedIssues;
    _caregiverReportedOtherIssues = caregiverReportedOtherIssues;
    _serviceNeeded = serviceNeeded;
    _noOfMatching = noOfMatching;
    _upcomingDays = upcomingDays;
    _location = location;
    _serviceCompleted = serviceCompleted;
    _serviceNotCompleted = serviceNotCompleted;
    _extraFee = extraFee;
    _tip = tip;
    _refund = refund;
    _serviceFee = serviceFee;
    _decisionMaker = decisionMaker;
    _client = client;
    _isOngoing = isOngoing;
}

  Services.fromJson(dynamic json) {
    _id = json['id'];
    _serviceId = json['serviceId'];
    _service = json['service'];
    _startDateTime = json['start_date_time'];
    _endDateTime = json['end_date_time'];
    _rating = json['rating'];
    _cancelledBy = json['cancelled_by'];
    _refundStatus = json['refund_status'];
    _isRated = json['is_rated'];
    _cancelReason = json['cancel_reason'];
    _feedback = json['feedback'];
    _suspectedThingsDuringShift = json['suspected_things_during_shift'] != null ? json['suspected_things_during_shift'].cast<String>() : [];
    _suspectedOtherIssues = json['suspected_other_issues'];
    _caregiverReportedIssues = json['caregiver_reported_issues'] != null ? json['caregiver_reported_issues'].cast<String>() : [];
    _caregiverReportedOtherIssues = json['caregiver_reported_other_issues'];
    _serviceNeeded = json['service_needed'] != null ? json['service_needed'].cast<String>() : [];
    _noOfMatching = json['no_of_matching'];
    _upcomingDays = json['upcoming_days'];
    if (json['location'] != null) {
      _location = [];
      json['location'].forEach((v) {
        _location?.add(Location.fromJson(v));
      });
    }
    _serviceCompleted = json['service_completed'] != null ? json['service_completed'].cast<String>() : [];
    _serviceNotCompleted = json['service_not_completed'] != null ? json['service_not_completed'].cast<String>() : [];
    _extraFee = json['extra_fee'];
    _tip = json['tip'];
    _refund = json['refund'];
    _serviceFee = json['service_fee'];
    _decisionMaker = json['decision_maker'] != null ? DecisionMaker.fromJson(json['decision_maker']) : null;
    _client = json['client'] != null ? Client.fromJson(json['client']) : null;
    _isOngoing = json['is_ongoing'];
  }
  String? _id;
  String? _serviceId;
  String? _service;
  String? _startDateTime;
  String? _endDateTime;
  String? _rating;
  String? _cancelledBy;
  String? _refundStatus;
  bool? _isRated;
  String? _cancelReason;
  String? _feedback;
  List<String>? _suspectedThingsDuringShift;
  String? _suspectedOtherIssues;
  List<String>? _caregiverReportedIssues;
  String? _caregiverReportedOtherIssues;
  List<String>? _serviceNeeded;
  String? _noOfMatching;
  String? _upcomingDays;
  List<Location>? _location;
  List<String>? _serviceCompleted;
  List<String>? _serviceNotCompleted;
  String? _extraFee;
  String? _tip;
  String? _refund;
  String? _serviceFee;
  DecisionMaker? _decisionMaker;
  Client? _client;
  bool? _isOngoing;
Services copyWith({  String? id,
  String? serviceId,
  String? service,
  String? startDateTime,
  String? endDateTime,
  String? rating,
  String? cancelledBy,
  String? refundStatus,
  bool? isRated,
  String? cancelReason,
  String? feedback,
  List<String>? suspectedThingsDuringShift,
  String? suspectedOtherIssues,
  List<String>? caregiverReportedIssues,
  String? caregiverReportedOtherIssues,
  List<String>? serviceNeeded,
  String? noOfMatching,
  String? upcomingDays,
  List<Location>? location,
  List<String>? serviceCompleted,
  List<String>? serviceNotCompleted,
  String? extraFee,
  String? tip,
  String? refund,
  String? serviceFee,
  DecisionMaker? decisionMaker,
  Client? client,
  bool? isOngoing,
}) => Services(  id: id ?? _id,
  serviceId: serviceId ?? _serviceId,
  service: service ?? _service,
  startDateTime: startDateTime ?? _startDateTime,
  endDateTime: endDateTime ?? _endDateTime,
  rating: rating ?? _rating,
  cancelledBy: cancelledBy ?? _cancelledBy,
  refundStatus: refundStatus ?? _refundStatus,
  isRated: isRated ?? _isRated,
  cancelReason: cancelReason ?? _cancelReason,
  feedback: feedback ?? _feedback,
  suspectedThingsDuringShift: suspectedThingsDuringShift ?? _suspectedThingsDuringShift,
  suspectedOtherIssues: suspectedOtherIssues ?? _suspectedOtherIssues,
  caregiverReportedIssues: caregiverReportedIssues ?? _caregiverReportedIssues,
  caregiverReportedOtherIssues: caregiverReportedOtherIssues ?? _caregiverReportedOtherIssues,
  serviceNeeded: serviceNeeded ?? _serviceNeeded,
  noOfMatching: noOfMatching ?? _noOfMatching,
  upcomingDays: upcomingDays ?? _upcomingDays,
  location: location ?? _location,
  serviceCompleted: serviceCompleted ?? _serviceCompleted,
  serviceNotCompleted: serviceNotCompleted ?? _serviceNotCompleted,
  extraFee: extraFee ?? _extraFee,
  tip: tip ?? _tip,
  refund: refund ?? _refund,
  serviceFee: serviceFee ?? _serviceFee,
  decisionMaker: decisionMaker ?? _decisionMaker,
  client: client ?? _client,
  isOngoing: isOngoing ?? _isOngoing,
);
  String? get id => _id;
  String? get serviceId => _serviceId;
  String? get service => _service;
  String? get startDateTime => _startDateTime;
  String? get endDateTime => _endDateTime;
  String? get rating => _rating;
  String? get cancelledBy => _cancelledBy;
  String? get refundStatus => _refundStatus;
  bool? get isRated => _isRated;
  String? get cancelReason => _cancelReason;
  String? get feedback => _feedback;
  List<String>? get suspectedThingsDuringShift => _suspectedThingsDuringShift;
  String? get suspectedOtherIssues => _suspectedOtherIssues;
  List<String>? get caregiverReportedIssues => _caregiverReportedIssues;
  String? get caregiverReportedOtherIssues => _caregiverReportedOtherIssues;
  List<String>? get serviceNeeded => _serviceNeeded;
  String? get noOfMatching => _noOfMatching;
  String? get upcomingDays => _upcomingDays;
  List<Location>? get location => _location;
  List<String>? get serviceCompleted => _serviceCompleted;
  List<String>? get serviceNotCompleted => _serviceNotCompleted;
  String? get extraFee => _extraFee;
  String? get tip => _tip;
  String? get refund => _refund;
  String? get serviceFee => _serviceFee;
  DecisionMaker? get decisionMaker => _decisionMaker;
  Client? get client => _client;
  bool? get isOngoing => _isOngoing;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['serviceId'] = _serviceId;
    map['service'] = _service;
    map['start_date_time'] = _startDateTime;
    map['end_date_time'] = _endDateTime;
    map['rating'] = _rating;
    map['cancelled_by'] = _cancelledBy;
    map['refund_status'] = _refundStatus;
    map['is_rated'] = _isRated;
    map['cancel_reason'] = _cancelReason;
    map['feedback'] = _feedback;
    map['suspected_things_during_shift'] = _suspectedThingsDuringShift;
    map['suspected_other_issues'] = _suspectedOtherIssues;
    map['caregiver_reported_issues'] = _caregiverReportedIssues;
    map['caregiver_reported_other_issues'] = _caregiverReportedOtherIssues;
    map['service_needed'] = _serviceNeeded;
    map['no_of_matching'] = _noOfMatching;
    map['upcoming_days'] = _upcomingDays;
    if (_location != null) {
      map['location'] = _location?.map((v) => v.toJson()).toList();
    }
    map['service_completed'] = _serviceCompleted;
    map['service_not_completed'] = _serviceNotCompleted;
    map['extra_fee'] = _extraFee;
    map['tip'] = _tip;
    map['refund'] = _refund;
    map['service_fee'] = _serviceFee;
    if (_decisionMaker != null) {
      map['decision_maker'] = _decisionMaker?.toJson();
    }
    if (_client != null) {
      map['client'] = _client?.toJson();
    }
    map['is_ongoing'] = _isOngoing;
    return map;
  }

}

Client clientFromJson(String str) => Client.fromJson(json.decode(str));
String clientToJson(Client data) => json.encode(data.toJson());
class Client {
  Client({
      String? id, 
      String? firstName, 
      String? lastName, 
      String? profile,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _profile = profile;
}

  Client.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _profile = json['profile'];
  }
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _profile;
Client copyWith({  String? id,
  String? firstName,
  String? lastName,
  String? profile,
}) => Client(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  profile: profile ?? _profile,
);
  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['profile'] = _profile;
    return map;
  }

}

DecisionMaker decisionMakerFromJson(String str) => DecisionMaker.fromJson(json.decode(str));
String decisionMakerToJson(DecisionMaker data) => json.encode(data.toJson());
class DecisionMaker {
  DecisionMaker({
      String? id, 
      String? firstName, 
      String? lastName, 
      String? profile,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _profile = profile;
}

  DecisionMaker.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _profile = json['profile'];
  }
  String? _id;
  String? _firstName;
  String? _lastName;
  String? _profile;
DecisionMaker copyWith({  String? id,
  String? firstName,
  String? lastName,
  String? profile,
}) => DecisionMaker(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  profile: profile ?? _profile,
);
  String? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['profile'] = _profile;
    return map;
  }

}

Location locationFromJson(String str) => Location.fromJson(json.decode(str));
String locationToJson(Location data) => json.encode(data.toJson());
class Location {
  Location({
      String? streetName, 
      String? lattitude, 
      String? longitude, 
      String? city, 
      String? state, 
      String? cityName, 
      String? stateName, 
      String? address, 
      String? zipCode, 
      String? id,}){
    _streetName = streetName;
    _lattitude = lattitude;
    _longitude = longitude;
    _city = city;
    _state = state;
    _cityName = cityName;
    _stateName = stateName;
    _address = address;
    _zipCode = zipCode;
    _id = id;
}

  Location.fromJson(dynamic json) {
    _streetName = json['streetName'];
    _lattitude = json['lattitude'];
    _longitude = json['longitude'];
    _city = json['city'];
    _state = json['state'];
    _cityName = json['cityName'];
    _stateName = json['stateName'];
    _address = json['address'];
    _zipCode = json['zipCode'];
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
  String? _id;
Location copyWith({  String? streetName,
  String? lattitude,
  String? longitude,
  String? city,
  String? state,
  String? cityName,
  String? stateName,
  String? address,
  String? zipCode,
  String? id,
}) => Location(  streetName: streetName ?? _streetName,
  lattitude: lattitude ?? _lattitude,
  longitude: longitude ?? _longitude,
  city: city ?? _city,
  state: state ?? _state,
  cityName: cityName ?? _cityName,
  stateName: stateName ?? _stateName,
  address: address ?? _address,
  zipCode: zipCode ?? _zipCode,
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
    map['_id'] = _id;
    return map;
  }

}