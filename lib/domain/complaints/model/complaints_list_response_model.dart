import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"finalResult":[{"id":"64e430dd4ecb70a744c618bd","complaint_id":"AMG-HELP-UOET","user_id":"64d36080d289c833ca9bb1d6","client_name":{},"caregiver_name":{},"category":"Service Related","created_date":"2023-08-22T03:51:57.979Z","title":"tesr description","role":"Care Ambassador","status":"Registered"},{"id":"64e74a971c200e350b65e756","complaint_id":"AMG-HELP-UKDQ","user_id":"64e747acd6a4b1693204fa27","client_name":{},"caregiver_name":{},"category":"General","created_date":"2023-08-24T12:18:31.856Z","title":"how to add query","role":"Care Ambassador","status":"Registered"},{"id":"64e8e8feaf563102b191640c","complaint_id":"AMG-HELP-9KD1","user_id":"64e8db29eafbdb4c74bccf0e","client_name":{},"caregiver_name":{},"category":"General","created_date":"2023-08-25T17:46:38.204Z","title":"for testing purpose","role":"Care Ambassador","status":"Registered"},{"id":"64ef2ef90e4244ccdac19d4b","complaint_id":"AMG-HELP-HLRP","user_id":"64ef0c71c523683b4008f3b7","client_name":{},"caregiver_name":{},"category":"Service Related","created_date":"2023-08-30T11:58:49.977Z","title":"test","role":"Care Ambassador","status":"Registered"},{"id":"64f1d316a5805589840dd774","complaint_id":"AMG-HELP-8WYJ","user_id":"64c88ac8b8af5ca8105b160f","client_name":{"first_name":"Robert","last_name":"Downey"},"caregiver_name":{"first_name":"amarnath.","last_name":"kasi."},"category":"Service Related","created_date":"2023-09-01T12:03:34.858Z","title":"test","role":"Care Ambassador","status":"Registered"},{"id":"64f1d599f6a90139d973f83d","complaint_id":"AMG-HELP-DVQQ","user_id":"64c88ac8b8af5ca8105b160f","client_name":{},"caregiver_name":{"first_name":"amarnath.","last_name":"kasi."},"category":"General","created_date":"2023-09-01T12:14:17.552Z","title":"test","role":"Care Ambassador","status":"Registered"},{"id":"64f1dd41d936b68f5329b4e1","complaint_id":"AMG-HELP-6SJN","user_id":"64e8e1faaf563102b191606f","client_name":{"first_name":"Alex","last_name":"Tom"},"caregiver_name":{"first_name":"Clement","last_name":"Luke"},"category":"Service Related","created_date":"2023-09-01T12:46:57.210Z","title":"bdh","role":"Care Ambassador","status":"Registered"},{"id":"64f1dfe29bc9131d6697ff53","complaint_id":"AMG-HELP-J32H","user_id":"64d9c23282000dcff9888d4b","client_name":{"first_name":"Jeric","last_name":"Watson"},"caregiver_name":{"first_name":"Peter","last_name":"Morg"},"category":"Service Related","created_date":"2023-09-01T12:58:10.574Z","title":"ndjdjd","role":"Care Ambassador","status":"Registered"},{"id":"64f1e16dd4699d7520a87251","complaint_id":"AMG-HELP-LB26","user_id":"64d9c23282000dcff9888d4b","client_name":{"first_name":"Jeric","last_name":"Watson"},"caregiver_name":{"first_name":"Peter","last_name":"Morg"},"category":"Service Related","created_date":"2023-09-01T13:04:45.081Z","title":"success","role":"Care Ambassador","status":"Registered"},{"id":"64f1e1afd936b68f5329b503","complaint_id":"AMG-HELP-5SJL","user_id":"64d9c23282000dcff9888d4b","client_name":{"first_name":"Jeric","last_name":"Watson"},"caregiver_name":{"first_name":"Peter","last_name":"Morg"},"category":"Service Related","created_date":"2023-09-01T13:05:51.566Z","title":"dy","role":"Care Ambassador","status":"Registered"}],"serviceRelatedIssue":15,"transactionRelatedIssue":0,"generalIssue":0,"totalCaIssue":6,"pagination":{"limit":10,"offset":0,"totals":13}}

ComplaintsListResponseModel complaintsResponseModelFromJson(String str) =>
    ComplaintsListResponseModel.fromJson(json.decode(str));

String complaintsResponseModelToJson(ComplaintsListResponseModel data) =>
    json.encode(data.toJson());

class ComplaintsListResponseModel {
  ComplaintsListResponseModel({
    bool? status,
    String? message,
    ComplaintsListData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ComplaintsListResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data =
        json['data'] != null ? ComplaintsListData.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  ComplaintsListData? _data;

  ComplaintsListResponseModel copyWith({
    bool? status,
    String? message,
    ComplaintsListData? data,
  }) =>
      ComplaintsListResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );

  bool? get status => _status;

  String? get message => _message;

  ComplaintsListData? get data => _data;

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

/// finalResult : [{"id":"64e430dd4ecb70a744c618bd","complaint_id":"AMG-HELP-UOET","user_id":"64d36080d289c833ca9bb1d6","client_name":{},"caregiver_name":{},"category":"Service Related","created_date":"2023-08-22T03:51:57.979Z","title":"tesr description","role":"Care Ambassador","status":"Registered"},{"id":"64e74a971c200e350b65e756","complaint_id":"AMG-HELP-UKDQ","user_id":"64e747acd6a4b1693204fa27","client_name":{},"caregiver_name":{},"category":"General","created_date":"2023-08-24T12:18:31.856Z","title":"how to add query","role":"Care Ambassador","status":"Registered"},{"id":"64e8e8feaf563102b191640c","complaint_id":"AMG-HELP-9KD1","user_id":"64e8db29eafbdb4c74bccf0e","client_name":{},"caregiver_name":{},"category":"General","created_date":"2023-08-25T17:46:38.204Z","title":"for testing purpose","role":"Care Ambassador","status":"Registered"},{"id":"64ef2ef90e4244ccdac19d4b","complaint_id":"AMG-HELP-HLRP","user_id":"64ef0c71c523683b4008f3b7","client_name":{},"caregiver_name":{},"category":"Service Related","created_date":"2023-08-30T11:58:49.977Z","title":"test","role":"Care Ambassador","status":"Registered"},{"id":"64f1d316a5805589840dd774","complaint_id":"AMG-HELP-8WYJ","user_id":"64c88ac8b8af5ca8105b160f","client_name":{"first_name":"Robert","last_name":"Downey"},"caregiver_name":{"first_name":"amarnath.","last_name":"kasi."},"category":"Service Related","created_date":"2023-09-01T12:03:34.858Z","title":"test","role":"Care Ambassador","status":"Registered"},{"id":"64f1d599f6a90139d973f83d","complaint_id":"AMG-HELP-DVQQ","user_id":"64c88ac8b8af5ca8105b160f","client_name":{},"caregiver_name":{"first_name":"amarnath.","last_name":"kasi."},"category":"General","created_date":"2023-09-01T12:14:17.552Z","title":"test","role":"Care Ambassador","status":"Registered"},{"id":"64f1dd41d936b68f5329b4e1","complaint_id":"AMG-HELP-6SJN","user_id":"64e8e1faaf563102b191606f","client_name":{"first_name":"Alex","last_name":"Tom"},"caregiver_name":{"first_name":"Clement","last_name":"Luke"},"category":"Service Related","created_date":"2023-09-01T12:46:57.210Z","title":"bdh","role":"Care Ambassador","status":"Registered"},{"id":"64f1dfe29bc9131d6697ff53","complaint_id":"AMG-HELP-J32H","user_id":"64d9c23282000dcff9888d4b","client_name":{"first_name":"Jeric","last_name":"Watson"},"caregiver_name":{"first_name":"Peter","last_name":"Morg"},"category":"Service Related","created_date":"2023-09-01T12:58:10.574Z","title":"ndjdjd","role":"Care Ambassador","status":"Registered"},{"id":"64f1e16dd4699d7520a87251","complaint_id":"AMG-HELP-LB26","user_id":"64d9c23282000dcff9888d4b","client_name":{"first_name":"Jeric","last_name":"Watson"},"caregiver_name":{"first_name":"Peter","last_name":"Morg"},"category":"Service Related","created_date":"2023-09-01T13:04:45.081Z","title":"success","role":"Care Ambassador","status":"Registered"},{"id":"64f1e1afd936b68f5329b503","complaint_id":"AMG-HELP-5SJL","user_id":"64d9c23282000dcff9888d4b","client_name":{"first_name":"Jeric","last_name":"Watson"},"caregiver_name":{"first_name":"Peter","last_name":"Morg"},"category":"Service Related","created_date":"2023-09-01T13:05:51.566Z","title":"dy","role":"Care Ambassador","status":"Registered"}]
/// serviceRelatedIssue : 15
/// transactionRelatedIssue : 0
/// generalIssue : 0
/// totalCaIssue : 6
/// pagination : {"limit":10,"offset":0,"totals":13}

ComplaintsListData dataFromJson(String str) =>
    ComplaintsListData.fromJson(json.decode(str));

String dataToJson(ComplaintsListData data) => json.encode(data.toJson());

class ComplaintsListData {
  ComplaintsListData({
    List<FinalResult>? finalResult,
    num? serviceRelatedIssue,
    num? transactionRelatedIssue,
    num? generalIssue,
    num? totalCaIssue,
    Pagination? pagination,
  }) {
    _finalResult = finalResult;
    _serviceRelatedIssue = serviceRelatedIssue;
    _transactionRelatedIssue = transactionRelatedIssue;
    _generalIssue = generalIssue;
    _totalCaIssue = totalCaIssue;
    _pagination = pagination;
  }

  ComplaintsListData.fromJson(dynamic json) {
    if (json['finalResult'] != null) {
      _finalResult = [];
      json['finalResult'].forEach((v) {
        _finalResult?.add(FinalResult.fromJson(v));
      });
    }
    _serviceRelatedIssue = json['serviceRelatedIssue'];
    _transactionRelatedIssue = json['transactionRelatedIssue'];
    _generalIssue = json['generalIssue'];
    _totalCaIssue = json['totalCaIssue'];
    _pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
  }

  List<FinalResult>? _finalResult;
  num? _serviceRelatedIssue;
  num? _transactionRelatedIssue;
  num? _generalIssue;
  num? _totalCaIssue;
  Pagination? _pagination;

  ComplaintsListData copyWith({
    List<FinalResult>? finalResult,
    num? serviceRelatedIssue,
    num? transactionRelatedIssue,
    num? generalIssue,
    num? totalCaIssue,
    Pagination? pagination,
  }) =>
      ComplaintsListData(
        finalResult: finalResult ?? _finalResult,
        serviceRelatedIssue: serviceRelatedIssue ?? _serviceRelatedIssue,
        transactionRelatedIssue:
            transactionRelatedIssue ?? _transactionRelatedIssue,
        generalIssue: generalIssue ?? _generalIssue,
        totalCaIssue: totalCaIssue ?? _totalCaIssue,
        pagination: pagination ?? _pagination,
      );

  List<FinalResult>? get finalResult => _finalResult;

  num? get serviceRelatedIssue => _serviceRelatedIssue;

  num? get transactionRelatedIssue => _transactionRelatedIssue;

  num? get generalIssue => _generalIssue;

  num? get totalCaIssue => _totalCaIssue;

  Pagination? get pagination => _pagination;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_finalResult != null) {
      map['finalResult'] = _finalResult?.map((v) => v.toJson()).toList();
    }
    map['serviceRelatedIssue'] = _serviceRelatedIssue;
    map['transactionRelatedIssue'] = _transactionRelatedIssue;
    map['generalIssue'] = _generalIssue;
    map['totalCaIssue'] = _totalCaIssue;
    if (_pagination != null) {
      map['pagination'] = _pagination?.toJson();
    }
    return map;
  }
}

/// limit : 10
/// offset : 0
/// totals : 13

Pagination paginationFromJson(String str) =>
    Pagination.fromJson(json.decode(str));

String paginationToJson(Pagination data) => json.encode(data.toJson());

class Pagination {
  Pagination({
    num? limit,
    num? offset,
    num? totals,
  }) {
    _limit = limit;
    _offset = offset;
    _totals = totals;
  }

  Pagination.fromJson(dynamic json) {
    _limit = json['limit'];
    _offset = json['offset'];
    _totals = json['totals'];
  }

  num? _limit;
  num? _offset;
  num? _totals;

  Pagination copyWith({
    num? limit,
    num? offset,
    num? totals,
  }) =>
      Pagination(
        limit: limit ?? _limit,
        offset: offset ?? _offset,
        totals: totals ?? _totals,
      );

  num? get limit => _limit;

  num? get offset => _offset;

  num? get totals => _totals;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['limit'] = _limit;
    map['offset'] = _offset;
    map['totals'] = _totals;
    return map;
  }
}

/// id : "64e430dd4ecb70a744c618bd"
/// complaint_id : "AMG-HELP-UOET"
/// user_id : "64d36080d289c833ca9bb1d6"
/// client_name : {}
/// caregiver_name : {}
/// category : "Service Related"
/// created_date : "2023-08-22T03:51:57.979Z"
/// title : "tesr description"
/// role : "Care Ambassador"
/// status : "Registered"

FinalResult finalResultFromJson(String str) =>
    FinalResult.fromJson(json.decode(str));

String finalResultToJson(FinalResult data) => json.encode(data.toJson());

class FinalResult {
  FinalResult({
    String? id,
    String? complaintId,
    String? userId,
    ClientName? clientName,
    CaregiverName? caregiverName,
    String? category,
    String? createdDate,
    String? repliedOn,
    String? title,
    String? role,
    String? status,
  }) {
    _id = id;
    _complaintId = complaintId;
    _userId = userId;
    _clientName = clientName;
    _caregiverName = caregiverName;
    _category = category;
    _createdDate = createdDate;
    _repliedOn = repliedOn;
    _title = title;
    _role = role;
    _status = status;
  }

  FinalResult.fromJson(dynamic json) {
    _id = json['id'];
    _complaintId = json['complaint_id'];
    _userId = json['user_id'];
    _clientName = json['client_name'] != null
        ? ClientName.fromJson(json['client_name'])
        : null;
    _caregiverName = json['caregiver_name'] != null
        ? CaregiverName.fromJson(json['caregiver_name'])
        : null;
    _category = json['category'];
    _createdDate = json['created_date'];
    _repliedOn = json['replied_on'];
    _title = json['title'];
    _role = json['role'];
    _status = json['status'];
  }

  String? _id;
  String? _complaintId;
  String? _userId;
  ClientName? _clientName;
  CaregiverName? _caregiverName;
  String? _category;
  String? _createdDate;
  String? _repliedOn;
  String? _title;
  String? _role;
  String? _status;

  FinalResult copyWith({
    String? id,
    String? complaintId,
    String? userId,
    ClientName? clientName,
    CaregiverName? caregiverName,
    String? category,
    String? createdDate,
    String? repliedOn,
    String? title,
    String? role,
    String? status,
  }) =>
      FinalResult(
        id: id ?? _id,
        complaintId: complaintId ?? _complaintId,
        userId: userId ?? _userId,
        clientName: clientName ?? _clientName,
        caregiverName: caregiverName ?? _caregiverName,
        category: category ?? _category,
        createdDate: createdDate ?? _createdDate,
        repliedOn: repliedOn ?? _repliedOn,
        title: title ?? _title,
        role: role ?? _role,
        status: status ?? _status,
      );

  String? get id => _id;

  String? get complaintId => _complaintId;

  String? get userId => _userId;

  ClientName? get clientName => _clientName;

  CaregiverName? get caregiverName => _caregiverName;

  String? get category => _category;

  String? get createdDate => _createdDate;

  String? get repliedOn => _repliedOn;

  String? get title => _title;

  String? get role => _role;

  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['complaint_id'] = _complaintId;
    map['user_id'] = _userId;
    map['client_name'] = _clientName;
    map['caregiver_name'] = _caregiverName;
    map['category'] = _category;
    map['created_date'] = _createdDate;
    map['replied_on'] = _repliedOn;
    map['title'] = _title;
    map['role'] = _role;
    map['status'] = _status;
    return map;
  }
}

ClientName clientNameFromJson(String str) =>
    ClientName.fromJson(json.decode(str));

String clientNameToJson(ClientName data) => json.encode(data.toJson());

class ClientName {
  ClientName({String? firstName, String? lastName}) {
    _firstName = firstName;
    _lastName = lastName;
  }

  ClientName.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
  }

  String? _firstName;
  String? _lastName;

  ClientName copyWith({
    String? firstName,
    String? lastName,
  }) =>
      ClientName(
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

CaregiverName? caregiverNameFromJson(String str) =>
    CaregiverName?.fromJson(json.decode(str));

String caregiverNameToJson(CaregiverName data) => json.encode(data.toJson());

class CaregiverName {
  CaregiverName({String? firstName, String? lastName}) {
    _firstName = firstName;
    _lastName = lastName;
  }

  CaregiverName.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
  }

  String? _firstName;
  String? _lastName;

  CaregiverName copyWith({
    String? firstName,
    String? lastName,
  }) =>
      CaregiverName(
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
