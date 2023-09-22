import 'dart:convert';

ClientServiceResponse clientServiceResponseFromJson(String str) =>
    ClientServiceResponse.fromJson(json.decode(str));
String clientServiceResponseToJson(ClientServiceResponse data) =>
    json.encode(data.toJson());

class ClientServiceResponse {
  ClientServiceResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ClientServiceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  ClientServiceResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      ClientServiceResponse(
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
    List<ClientService>? clientService,
  }) {
    _clientService = clientService;
  }

  Data.fromJson(dynamic json) {
    if (json['ClientService'] != null) {
      _clientService = [];
      json['ClientService'].forEach((v) {
        _clientService?.add(ClientService.fromJson(v));
      });
    }
  }
  List<ClientService>? _clientService;
  Data copyWith({
    List<ClientService>? clientService,
  }) =>
      Data(
        clientService: clientService ?? _clientService,
      );
  List<ClientService>? get clientService => _clientService;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_clientService != null) {
      map['ClientService'] = _clientService?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

ClientService clientServiceFromJson(String str) =>
    ClientService.fromJson(json.decode(str));
String clientServiceToJson(ClientService data) => json.encode(data.toJson());

class ClientService {
  ClientService({
    String? id,
    String? uniqueId,
    String? userId,
    String? profileId,
    String? startDateTime,
    String? endDateTime,
    int? totalServiceFee,
    int? status,
    String? cancelReason,
    int? serviceRating,
    int? tip,
    Client? client,
    Caregiver? caregiver,
  }) {
    _id = id;
    _uniqueId = uniqueId;
    _userId = userId;
    _profileId = profileId;
    _startDateTime = startDateTime;
    _endDateTime = endDateTime;
    _totalServiceFee = totalServiceFee;
    _status = status;
    _cancelReason = cancelReason;
    _serviceRating = serviceRating;
    _tip = tip;
    _client = client;
    _caregiver = caregiver;
  }

  ClientService.fromJson(dynamic json) {
    _id = json['id'];
    _uniqueId = json['unique_id'];
    _userId = json['userId'];
    _profileId = json['profileId'];
    _startDateTime = json['start_date_time'];
    _endDateTime = json['end_date_time'];
    _totalServiceFee = json['total_service_fee'];
    _status = json['status'];
    _cancelReason = json['cancel_reason'];
    _serviceRating = json['service_rating'];
    _tip = json['tip'];
    _client = json['client'] != null ? Client.fromJson(json['client']) : null;
    _caregiver = json['caregiver'] != null
        ? Caregiver.fromJson(json['caregiver'])
        : null;
  }
  String? _id;
  String? _uniqueId;
  String? _userId;
  String? _profileId;
  String? _startDateTime;
  String? _endDateTime;
  int? _totalServiceFee;
  int? _status;
  String? _cancelReason;
  int? _serviceRating;
  int? _tip;
  Client? _client;
  Caregiver? _caregiver;
  ClientService copyWith({
    String? id,
    String? uniqueId,
    String? userId,
    String? profileId,
    String? startDateTime,
    String? endDateTime,
    int? totalServiceFee,
    int? status,
    String? cancelReason,
    int? serviceRating,
    int? tip,
    Client? client,
    Caregiver? caregiver,
  }) =>
      ClientService(
        id: id ?? _id,
        uniqueId: uniqueId ?? _uniqueId,
        userId: userId ?? _userId,
        profileId: profileId ?? _profileId,
        startDateTime: startDateTime ?? _startDateTime,
        endDateTime: endDateTime ?? _endDateTime,
        totalServiceFee: totalServiceFee ?? _totalServiceFee,
        status: status ?? _status,
        cancelReason: cancelReason ?? _cancelReason,
        serviceRating: serviceRating ?? _serviceRating,
        tip: tip ?? _tip,
        client: client ?? _client,
        caregiver: caregiver ?? _caregiver,
      );
  String? get id => _id;
  String? get uniqueId => _uniqueId;
  String? get userId => _userId;
  String? get profileId => _profileId;
  String? get startDateTime => _startDateTime;
  String? get endDateTime => _endDateTime;
  int? get totalServiceFee => _totalServiceFee;
  int? get status => _status;
  String? get cancelReason => _cancelReason;
  int? get serviceRating => _serviceRating;
  int? get tip => _tip;
  Client? get client => _client;
  Caregiver? get caregiver => _caregiver;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['unique_id'] = _uniqueId;
    map['userId'] = _userId;
    map['profileId'] = _profileId;
    map['start_date_time'] = _startDateTime;
    map['end_date_time'] = _endDateTime;
    map['total_service_fee'] = _totalServiceFee;
    map['status'] = _status;
    map['cancel_reason'] = _cancelReason;
    map['service_rating'] = _serviceRating;
    map['tip'] = _tip;
    if (_client != null) {
      map['client'] = _client?.toJson();
    }
    if (_caregiver != null) {
      map['caregiver'] = _caregiver?.toJson();
    }
    return map;
  }
}

Caregiver caregiverFromJson(String str) => Caregiver.fromJson(json.decode(str));
String caregiverToJson(Caregiver data) => json.encode(data.toJson());

class Caregiver {
  Caregiver({
    String? firstName,
    String? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
    CompletedServices? completedServices,
    NotcompletedServices? notcompletedServices,
    List<UserComplaints>? userComplaints,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePicReferrence = profilePicReferrence;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
    _completedServices = completedServices;
    _notcompletedServices = notcompletedServices;
    _userComplaints = userComplaints;
  }

  Caregiver.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _profilePicReferrence = json['profile_pic_referrence'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
    _completedServices = json['completedServices'] != null
        ? CompletedServices.fromJson(json['completedServices'])
        : null;
    _notcompletedServices = json['notcompletedServices'] != null
        ? NotcompletedServices.fromJson(json['notcompletedServices'])
        : null;
    if (json['user_complaints'] != null) {
      _userComplaints = [];
      json['user_complaints'].forEach((v) {
        _userComplaints?.add(UserComplaints.fromJson(v));
      });
    }
  }
  String? _firstName;
  String? _lastName;
  String? _profilePicReferrence;
  String? _profilePic;
  String? _profileThumbnail;
  CompletedServices? _completedServices;
  NotcompletedServices? _notcompletedServices;
  List<UserComplaints>? _userComplaints;
  Caregiver copyWith({
    String? firstName,
    String? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
    CompletedServices? completedServices,
    NotcompletedServices? notcompletedServices,
    List<UserComplaints>? userComplaints,
  }) =>
      Caregiver(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePicReferrence: profilePicReferrence ?? _profilePicReferrence,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        completedServices: completedServices ?? _completedServices,
        notcompletedServices: notcompletedServices ?? _notcompletedServices,
        userComplaints: userComplaints ?? _userComplaints,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profilePicReferrence => _profilePicReferrence;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;
  CompletedServices? get completedServices => _completedServices;
  NotcompletedServices? get notcompletedServices => _notcompletedServices;
  List<UserComplaints>? get userComplaints => _userComplaints;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['profile_pic_referrence'] = _profilePicReferrence;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    if (_completedServices != null) {
      map['completedServices'] = _completedServices?.toJson();
    }
    if (_notcompletedServices != null) {
      map['notcompletedServices'] = _notcompletedServices?.toJson();
    }
    if (_userComplaints != null) {
      map['user_complaints'] = _userComplaints?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

UserComplaints userComplaintsFromJson(String str) =>
    UserComplaints.fromJson(json.decode(str));
String userComplaintsToJson(UserComplaints data) => json.encode(data.toJson());

class UserComplaints {
  UserComplaints({
    String? description,
    List<String>? attachments,
    String? currentStatus,
    List<StatusHistory>? statusHistory,
  }) {
    _description = description;
    _attachments = attachments;
    _currentStatus = currentStatus;
    _statusHistory = statusHistory;
  }

  UserComplaints.fromJson(dynamic json) {
    _description = json['description'];
    _attachments =
        json['attachments'] != null ? json['attachments'].cast<String>() : [];
    _currentStatus = json['current_status'];
    if (json['status_history'] != null) {
      _statusHistory = [];
      json['status_history'].forEach((v) {
        _statusHistory?.add(StatusHistory.fromJson(v));
      });
    }
  }
  String? _description;
  List<String>? _attachments;
  String? _currentStatus;
  List<StatusHistory>? _statusHistory;
  UserComplaints copyWith({
    String? description,
    List<String>? attachments,
    String? currentStatus,
    List<StatusHistory>? statusHistory,
  }) =>
      UserComplaints(
        description: description ?? _description,
        attachments: attachments ?? _attachments,
        currentStatus: currentStatus ?? _currentStatus,
        statusHistory: statusHistory ?? _statusHistory,
      );
  String? get description => _description;
  List<String>? get attachments => _attachments;
  String? get currentStatus => _currentStatus;
  List<StatusHistory>? get statusHistory => _statusHistory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = _description;
    map['attachments'] = _attachments;
    map['current_status'] = _currentStatus;
    if (_statusHistory != null) {
      map['status_history'] = _statusHistory?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

StatusHistory statusHistoryFromJson(String str) =>
    StatusHistory.fromJson(json.decode(str));
String statusHistoryToJson(StatusHistory data) => json.encode(data.toJson());

class StatusHistory {
  StatusHistory({
    String? date,
    String? status,
    dynamic comment,
    String? id,
  }) {
    _date = date;
    _status = status;
    _comment = comment;
    _id = id;
  }

  StatusHistory.fromJson(dynamic json) {
    _date = json['date'];
    _status = json['status'];
    _comment = json['comment'];
    _id = json['_id'];
  }
  String? _date;
  String? _status;
  dynamic _comment;
  String? _id;
  StatusHistory copyWith({
    String? date,
    String? status,
    dynamic comment,
    String? id,
  }) =>
      StatusHistory(
        date: date ?? _date,
        status: status ?? _status,
        comment: comment ?? _comment,
        id: id ?? _id,
      );
  String? get date => _date;
  String? get status => _status;
  dynamic get comment => _comment;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['status'] = _status;
    map['comment'] = _comment;
    map['_id'] = _id;
    return map;
  }
}

NotcompletedServices notcompletedServicesFromJson(String str) =>
    NotcompletedServices.fromJson(json.decode(str));
String notcompletedServicesToJson(NotcompletedServices data) =>
    json.encode(data.toJson());

class NotcompletedServices {
  NotcompletedServices({
    List<TierOne>? tier1,
    List<TierTwo>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  NotcompletedServices.fromJson(dynamic json) {
    if (json['tier1'] != null) {
      _tier1 = [];
      json['tier1'].forEach((v) {
        _tier1?.add(TierOne.fromJson(v));
      });
    }
    if (json['tier2'] != null) {
      _tier2 = [];
      json['tier2'].forEach((v) {
        _tier2?.add(TierTwo.fromJson(v));
      });
    }
  }
  List<TierOne>? _tier1;
  List<TierTwo>? _tier2;
  NotcompletedServices copyWith({
    List<TierOne>? tier1,
    List<TierTwo>? tier2,
  }) =>
      NotcompletedServices(
        tier1: tier1 ?? _tier1,
        tier2: tier2 ?? _tier2,
      );
  List<TierOne>? get tier1 => _tier1;
  List<TierTwo>? get tier2 => _tier2;

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

TierTwo tierTwoFromJson(String str) => TierTwo.fromJson(json.decode(str));
String tierTwoToJson(TierTwo data) => json.encode(data.toJson());

class TierTwo {
  TierTwo({
    String? serviceName,
    bool? isExtra,
  }) {
    _serviceName = serviceName;
    _isExtra = isExtra;
  }

  TierTwo.fromJson(dynamic json) {
    _serviceName = json['serviceName'];
    _isExtra = json['is_extra'];
  }
  String? _serviceName;
  bool? _isExtra;
  TierTwo copyWith({
    String? serviceName,
    bool? isExtra,
  }) =>
      TierTwo(
        serviceName: serviceName ?? _serviceName,
        isExtra: isExtra ?? _isExtra,
      );
  String? get serviceName => _serviceName;
  bool? get isExtra => _isExtra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['serviceName'] = _serviceName;
    map['is_extra'] = _isExtra;
    return map;
  }
}

TierOne tierOneFromJson(String str) => TierOne.fromJson(json.decode(str));
String tierOneToJson(TierOne data) => json.encode(data.toJson());

class TierOne {
  TierOne({
    String? serviceName,
    bool? isExtra,
  }) {
    _serviceName = serviceName;
    _isExtra = isExtra;
  }

  TierOne.fromJson(dynamic json) {
    _serviceName = json['serviceName'];
    _isExtra = json['is_extra'];
  }
  String? _serviceName;
  bool? _isExtra;
  TierOne copyWith({
    String? serviceName,
    bool? isExtra,
  }) =>
      TierOne(
        serviceName: serviceName ?? _serviceName,
        isExtra: isExtra ?? _isExtra,
      );
  String? get serviceName => _serviceName;
  bool? get isExtra => _isExtra;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['serviceName'] = _serviceName;
    map['is_extra'] = _isExtra;
    return map;
  }
}

CompletedServices completedServicesFromJson(String str) =>
    CompletedServices.fromJson(json.decode(str));
String completedServicesToJson(CompletedServices data) =>
    json.encode(data.toJson());

class CompletedServices {
  CompletedServices({
    List<TierOne>? tier1,
    List<TierTwo>? tier2,
  }) {
    _tier1 = tier1;
    _tier2 = tier2;
  }

  CompletedServices.fromJson(dynamic json) {
    if (json['tier1'] != null) {
      _tier1 = [];
      json['tier1'].forEach((v) {
        _tier1?.add(TierOne.fromJson(v));
      });
    }
    if (json['tier2'] != null) {
      _tier2 = [];
      json['tier2'].forEach((v) {
        _tier2?.add(TierTwo.fromJson(v));
      });
    }
  }
  List<TierOne>? _tier1;
  List<TierTwo>? _tier2;
  CompletedServices copyWith({
    List<TierOne>? tier1,
    List<TierTwo>? tier2,
  }) =>
      CompletedServices(
        tier1: tier1 ?? _tier1,
        tier2: tier2 ?? _tier2,
      );
  List<TierOne>? get tier1 => _tier1;
  List<TierTwo>? get tier2 => _tier2;

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

Client clientFromJson(String str) => Client.fromJson(json.decode(str));
String clientToJson(Client data) => json.encode(data.toJson());

class Client {
  Client({
    String? firstName,
    String? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profilePicReferrence = profilePicReferrence;
    _profilePic = profilePic;
    _profileThumbnail = profileThumbnail;
  }

  Client.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _profilePicReferrence = json['profile_pic_referrence'];
    _profilePic = json['profile_pic'];
    _profileThumbnail = json['profile_thumbnail'];
  }
  String? _firstName;
  String? _lastName;
  String? _profilePicReferrence;
  String? _profilePic;
  String? _profileThumbnail;
  Client copyWith({
    String? firstName,
    String? lastName,
    String? profilePicReferrence,
    String? profilePic,
    String? profileThumbnail,
  }) =>
      Client(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profilePicReferrence: profilePicReferrence ?? _profilePicReferrence,
        profilePic: profilePic ?? _profilePic,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profilePicReferrence => _profilePicReferrence;
  String? get profilePic => _profilePic;
  String? get profileThumbnail => _profileThumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['profile_pic_referrence'] = _profilePicReferrence;
    map['profile_pic'] = _profilePic;
    map['profile_thumbnail'] = _profileThumbnail;
    return map;
  }
}
