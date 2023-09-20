import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"id":"6503019dca858bbd68b60f40","user":{"first_name":"Jeril kvkvckkvkvkvkvkvkvkvkvkv","lastt_name":"Luke googkgogogogogogkgogkgkgk","profile":"https://amagiclientapp181307-dev.s3.amazonaws.com/public/ProfilePictures/650183053197086700d221d2/1694597889969.png?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695188272&Signature=rxzZyoQK1oDkVuoWGHZlcUbXazA%3D"},"caregiver":{"first_name":"","last_name":"","profile":""},"start_date_time":"06:00","end_date_time":"18:00","rating":0,"feedback":"","status":2,"service_id":"6503019dca858bbd68b60f40","service_fee":702,"transaction_id":"","cancelled_by":"","refund_status":"","upcoming_days":"","suspected_other_issues":"","service_needed":{"tier1":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"},{"service_id":"643cfbc421a11f9948e46bf5","name":"Bedtime Assistance"}],"tier2":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]},"services_completed":{"tier1":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}],"tier2":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]},"services_incompleted":{"tier1":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}],"tier2":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]}}

GetServiceResponseModel gerServiceResponseModelFromJson(String str) =>
    GetServiceResponseModel.fromJson(json.decode(str));
String gerServiceResponseModelToJson(GetServiceResponseModel data) =>
    json.encode(data.toJson());

class GetServiceResponseModel {
  GetServiceResponseModel({
    bool? status,
    String? message,
    GetServiceData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetServiceResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? GetServiceData.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  GetServiceData? _data;
  GetServiceResponseModel copyWith({
    bool? status,
    String? message,
    GetServiceData? data,
  }) =>
      GetServiceResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  GetServiceData? get data => _data;

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

/// id : "6503019dca858bbd68b60f40"
/// user : {"first_name":"Jeril kvkvckkvkvkvkvkvkvkvkvkv","lastt_name":"Luke googkgogogogogogkgogkgkgk","profile":"https://amagiclientapp181307-dev.s3.amazonaws.com/public/ProfilePictures/650183053197086700d221d2/1694597889969.png?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695188272&Signature=rxzZyoQK1oDkVuoWGHZlcUbXazA%3D"}
/// caregiver : {"first_name":"","last_name":"","profile":""}
/// start_date_time : "06:00"
/// end_date_time : "18:00"
/// rating : 0
/// feedback : ""
/// status : 2
/// service_id : "6503019dca858bbd68b60f40"
/// service_fee : 702
/// transaction_id : ""
/// cancelled_by : ""
/// refund_status : ""
/// upcoming_days : ""
/// suspected_other_issues : ""
/// service_needed : {"tier1":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"},{"service_id":"643cfbc421a11f9948e46bf5","name":"Bedtime Assistance"}],"tier2":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]}
/// services_completed : {"tier1":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}],"tier2":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]}
/// services_incompleted : {"tier1":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}],"tier2":[{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]}

GetServiceData dataFromJson(String str) =>
    GetServiceData.fromJson(json.decode(str));
String dataToJson(GetServiceData data) => json.encode(data.toJson());

class GetServiceData {
  GetServiceData({
    String? id,
    User? user,
    Caregiver? caregiver,
    String? startDateTime,
    String? endDateTime,
    num? rating,
    String? feedback,
    num? status,
    String? serviceId,
    num? serviceFee,
    String? transactionId,
    String? cancelledBy,
    String? refundStatus,
    String? upcomingDays,
    String? suspectedOtherIssues,
    ServiceNeeded? serviceNeeded,
    ServicesCompleted? servicesCompleted,
    ServicesIncompleted? servicesIncompleted,
  }) {
    _id = id;
    _user = user;
    _caregiver = caregiver;
    _startDateTime = startDateTime;
    _endDateTime = endDateTime;
    _rating = rating;
    _feedback = feedback;
    _status = status;
    _serviceId = serviceId;
    _serviceFee = serviceFee;
    _transactionId = transactionId;
    _cancelledBy = cancelledBy;
    _refundStatus = refundStatus;
    _upcomingDays = upcomingDays;
    _suspectedOtherIssues = suspectedOtherIssues;
    _serviceNeeded = serviceNeeded;
    _servicesCompleted = servicesCompleted;
    _servicesIncompleted = servicesIncompleted;
  }

  GetServiceData.fromJson(dynamic json) {
    _id = json['id'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _caregiver = json['caregiver'] != null
        ? Caregiver.fromJson(json['caregiver'])
        : null;
    _startDateTime = json['start_date_time'];
    _endDateTime = json['end_date_time'];
    _rating = json['rating'];
    _feedback = json['feedback'];
    _status = json['status'];
    _serviceId = json['service_id'];
    _serviceFee = json['service_fee'];
    _transactionId = json['transaction_id'];
    _cancelledBy = json['cancelled_by'];
    _refundStatus = json['refund_status'];
    _upcomingDays = json['upcoming_days'];
    _suspectedOtherIssues = json['suspected_other_issues'];
    _serviceNeeded = json['service_needed'] != null
        ? ServiceNeeded.fromJson(json['service_needed'])
        : null;
    _servicesCompleted = json['services_completed'] != null
        ? ServicesCompleted.fromJson(json['services_completed'])
        : null;
    _servicesIncompleted = json['services_incompleted'] != null
        ? ServicesIncompleted.fromJson(json['services_incompleted'])
        : null;
  }
  String? _id;
  User? _user;
  Caregiver? _caregiver;
  String? _startDateTime;
  String? _endDateTime;
  num? _rating;
  String? _feedback;
  num? _status;
  String? _serviceId;
  num? _serviceFee;
  String? _transactionId;
  String? _cancelledBy;
  String? _refundStatus;
  String? _upcomingDays;
  String? _suspectedOtherIssues;
  ServiceNeeded? _serviceNeeded;
  ServicesCompleted? _servicesCompleted;
  ServicesIncompleted? _servicesIncompleted;
  GetServiceData copyWith({
    String? id,
    User? user,
    Caregiver? caregiver,
    String? startDateTime,
    String? endDateTime,
    num? rating,
    String? feedback,
    num? status,
    String? serviceId,
    num? serviceFee,
    String? transactionId,
    String? cancelledBy,
    String? refundStatus,
    String? upcomingDays,
    String? suspectedOtherIssues,
    ServiceNeeded? serviceNeeded,
    ServicesCompleted? servicesCompleted,
    ServicesIncompleted? servicesIncompleted,
  }) =>
      GetServiceData(
        id: id ?? _id,
        user: user ?? _user,
        caregiver: caregiver ?? _caregiver,
        startDateTime: startDateTime ?? _startDateTime,
        endDateTime: endDateTime ?? _endDateTime,
        rating: rating ?? _rating,
        feedback: feedback ?? _feedback,
        status: status ?? _status,
        serviceId: serviceId ?? _serviceId,
        serviceFee: serviceFee ?? _serviceFee,
        transactionId: transactionId ?? _transactionId,
        cancelledBy: cancelledBy ?? _cancelledBy,
        refundStatus: refundStatus ?? _refundStatus,
        upcomingDays: upcomingDays ?? _upcomingDays,
        suspectedOtherIssues: suspectedOtherIssues ?? _suspectedOtherIssues,
        serviceNeeded: serviceNeeded ?? _serviceNeeded,
        servicesCompleted: servicesCompleted ?? _servicesCompleted,
        servicesIncompleted: servicesIncompleted ?? _servicesIncompleted,
      );
  String? get id => _id;
  User? get user => _user;
  Caregiver? get caregiver => _caregiver;
  String? get startDateTime => _startDateTime;
  String? get endDateTime => _endDateTime;
  num? get rating => _rating;
  String? get feedback => _feedback;
  num? get status => _status;
  String? get serviceId => _serviceId;
  num? get serviceFee => _serviceFee;
  String? get transactionId => _transactionId;
  String? get cancelledBy => _cancelledBy;
  String? get refundStatus => _refundStatus;
  String? get upcomingDays => _upcomingDays;
  String? get suspectedOtherIssues => _suspectedOtherIssues;
  ServiceNeeded? get serviceNeeded => _serviceNeeded;
  ServicesCompleted? get servicesCompleted => _servicesCompleted;
  ServicesIncompleted? get servicesIncompleted => _servicesIncompleted;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    if (_caregiver != null) {
      map['caregiver'] = _caregiver?.toJson();
    }
    map['start_date_time'] = _startDateTime;
    map['end_date_time'] = _endDateTime;
    map['rating'] = _rating.toString();
    map['feedback'] = _feedback;
    map['status'] = _status;
    map['service_id'] = _serviceId;
    map['service_fee'] = _serviceFee;
    map['transaction_id'] = _transactionId;
    map['cancelled_by'] = _cancelledBy;
    map['refund_status'] = _refundStatus;
    map['upcoming_days'] = _upcomingDays;
    map['suspected_other_issues'] = _suspectedOtherIssues;
    if (_serviceNeeded != null) {
      map['service_needed'] = _serviceNeeded?.toJson();
    }
    if (_servicesCompleted != null) {
      map['services_completed'] = _servicesCompleted?.toJson();
    }
    if (_servicesIncompleted != null) {
      map['services_incompleted'] = _servicesIncompleted?.toJson();
    }
    return map;
  }

  List<String> extractServicesNeededStrings() {
    final List<String> serviceStrings = [];

    if (_serviceNeeded != null) {
      if (_serviceNeeded!.tier1 != null) {
        for (final tier1 in _serviceNeeded!.tier1!) {
          serviceStrings.add(tier1.name ?? '');
        }
      }

      if (_serviceNeeded!.tier2 != null) {
        for (final tier2 in _serviceNeeded!.tier2!) {
          serviceStrings.add(tier2.name ?? '');
        }
      }
    }

    return serviceStrings;
  }
}

/// tier1 : [{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]
/// tier2 : [{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]

ServicesIncompleted servicesIncompletedFromJson(String str) =>
    ServicesIncompleted.fromJson(json.decode(str));
String servicesIncompletedToJson(ServicesIncompleted data) =>
    json.encode(data.toJson());

class ServicesIncompleted {
  ServicesIncompleted({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  ServicesIncompleted.fromJson(dynamic json) {
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
  ServicesIncompleted copyWith({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) =>
      ServicesIncompleted(
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

/// service_id : "643cfbc421a11f9948e46bf4"
/// name : "Wake-Up Assistance"

Tier2 tier2FromJson(String str) => Tier2.fromJson(json.decode(str));
String tier2ToJson(Tier2 data) => json.encode(data.toJson());

class Tier2 {
  Tier2({
    String? serviceId,
    String? name,
  }) {
    _serviceId = serviceId;
    _name = name;
  }

  Tier2.fromJson(dynamic json) {
    _serviceId = json['service_id'];
    _name = json['name'];
  }
  String? _serviceId;
  String? _name;
  Tier2 copyWith({
    String? serviceId,
    String? name,
  }) =>
      Tier2(
        serviceId: serviceId ?? _serviceId,
        name: name ?? _name,
      );
  String? get serviceId => _serviceId;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_id'] = _serviceId;
    map['name'] = _name;
    return map;
  }
}

/// service_id : "643cfbc421a11f9948e46bf4"
/// name : "Wake-Up Assistance"

Tier1 tier1FromJson(String str) => Tier1.fromJson(json.decode(str));
String tier1ToJson(Tier1 data) => json.encode(data.toJson());

class Tier1 {
  Tier1({
    String? serviceId,
    String? name,
  }) {
    _serviceId = serviceId;
    _name = name;
  }

  Tier1.fromJson(dynamic json) {
    _serviceId = json['service_id'];
    _name = json['name'];
  }
  String? _serviceId;
  String? _name;
  Tier1 copyWith({
    String? serviceId,
    String? name,
  }) =>
      Tier1(
        serviceId: serviceId ?? _serviceId,
        name: name ?? _name,
      );
  String? get serviceId => _serviceId;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['service_id'] = _serviceId;
    map['name'] = _name;
    return map;
  }
}

/// tier1 : [{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]
/// tier2 : [{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]

ServicesCompleted servicesCompletedFromJson(String str) =>
    ServicesCompleted.fromJson(json.decode(str));
String servicesCompletedToJson(ServicesCompleted data) =>
    json.encode(data.toJson());

class ServicesCompleted {
  ServicesCompleted({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  ServicesCompleted.fromJson(dynamic json) {
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
  ServicesCompleted copyWith({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) =>
      ServicesCompleted(
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

/// tier1 : [{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"},{"service_id":"643cfbc421a11f9948e46bf5","name":"Bedtime Assistance"}]
/// tier2 : [{"service_id":"643cfbc421a11f9948e46bf4","name":"Wake-Up Assistance"}]

ServiceNeeded serviceNeededFromJson(String str) =>
    ServiceNeeded.fromJson(json.decode(str));
String serviceNeededToJson(ServiceNeeded data) => json.encode(data.toJson());

class ServiceNeeded {
  ServiceNeeded({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  ServiceNeeded.fromJson(dynamic json) {
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
  ServiceNeeded copyWith({
    List<Tier1>? tier1,
    List<Tier2>? tier2,
  }) =>
      ServiceNeeded(
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

/// first_name : ""
/// last_name : ""
/// profile : ""

Caregiver caregiverFromJson(String str) => Caregiver.fromJson(json.decode(str));
String caregiverToJson(Caregiver data) => json.encode(data.toJson());

class Caregiver {
  Caregiver({
    String? firstName,
    String? lastName,
    String? profile,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profile = profile;
  }

  Caregiver.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _profile = json['profile'];
  }
  String? _firstName;
  String? _lastName;
  String? _profile;
  Caregiver copyWith({
    String? firstName,
    String? lastName,
    String? profile,
  }) =>
      Caregiver(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profile: profile ?? _profile,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['profile'] = _profile;
    return map;
  }
}

/// first_name : "Jeril kvkvckkvkvkvkvkvkvkvkvkv"
/// lastt_name : "Luke googkgogogogogogkgogkgkgk"
/// profile : "https://amagiclientapp181307-dev.s3.amazonaws.com/public/ProfilePictures/650183053197086700d221d2/1694597889969.png?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695188272&Signature=rxzZyoQK1oDkVuoWGHZlcUbXazA%3D"

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    String? firstName,
    String? lasttName,
    String? profile,
  }) {
    _firstName = firstName;
    _lasttName = lasttName;
    _profile = profile;
  }

  User.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lasttName = json['lastt_name'];
    _profile = json['profile'];
  }
  String? _firstName;
  String? _lasttName;
  String? _profile;
  User copyWith({
    String? firstName,
    String? lasttName,
    String? profile,
  }) =>
      User(
        firstName: firstName ?? _firstName,
        lasttName: lasttName ?? _lasttName,
        profile: profile ?? _profile,
      );
  String? get firstName => _firstName;
  String? get lasttName => _lasttName;
  String? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['lastt_name'] = _lasttName;
    map['profile'] = _profile;
    return map;
  }
}
