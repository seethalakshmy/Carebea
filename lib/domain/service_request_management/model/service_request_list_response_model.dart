import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"services":[{"_id":"65152ecb37a14b845388cd34","service_id":"AMG-SERQ-1445-2023","start_date":"2023-09-30T09:00:00.000Z","end_date":"2023-09-30T10:00:00.000Z","decision_maker_name":"Amy Mariam Agusty","client_name":"Amy Mariam Agusty","caregiver_name":"Benny P","service_status":"Canceled","refund_status":1,"cancelled_by":"By User","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"65152d0936f8282d35db534a","service_id":"AMG-SERQ-1444-2023","start_date":"2023-09-29T06:00:00.000Z","end_date":"2023-09-29T07:00:00.000Z","decision_maker_name":"Amy Mariam Agusty","client_name":"Amy Mariam Agusty","caregiver_name":"Benny P","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"6513c1257696078320f39ca5","service_id":"AMG-SERQ-1443-2023","start_date":"2023-09-28T10:00:00.000Z","end_date":"2023-09-28T16:00:00.000Z","decision_maker_name":"Taylor Swift","client_name":"Bebe Rexha","caregiver_name":"Haritha Care","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":351,"service_tip":0},{"_id":"6512a841317872017dad22e3","service_id":"AMG-SERQ-1442-2023","start_date":"2023-09-27T10:00:00.000Z","end_date":"2023-09-27T16:00:00.000Z","decision_maker_name":"Taylor Swift","client_name":"Bebe Rexha","caregiver_name":"Haritha Care","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":351,"service_tip":0},{"_id":"6512a22eb87ff982edcbf17e","service_id":"AMG-SERQ-1441-2023","start_date":"2023-09-27T10:00:00.000Z","end_date":"2023-09-27T16:00:00.000Z","decision_maker_name":"Taylor Swift","client_name":"Bebe Rexha","caregiver_name":"Haritha Care","service_status":"Canceled","refund_status":1,"cancelled_by":"By Caregiver","service":"Tier-1","service_fee":351,"service_tip":0},{"_id":"65125088da5e2dce6736e8b1","service_id":"AMG-SERQ-1440-2023","start_date":"2023-10-06T08:00:00.000Z","end_date":"2023-10-06T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Canceled","refund_status":1,"cancelled_by":"By Caregiver","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"6512504dda5e2dce6736e6ee","service_id":"AMG-SERQ-1439-2023","start_date":"2023-10-05T08:00:00.000Z","end_date":"2023-10-05T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"651250291611ea882af96a88","service_id":"AMG-SERQ-1438-2023","start_date":"2023-10-04T08:00:00.000Z","end_date":"2023-10-04T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"65125002abf1649e790a8d90","service_id":"AMG-SERQ-1437-2023","start_date":"2023-09-29T08:00:00.000Z","end_date":"2023-09-29T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"65124fda1611ea882af96050","service_id":"AMG-SERQ-1436-2023","start_date":"2023-09-28T08:00:00.000Z","end_date":"2023-09-28T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0}],"totalCount":488,"offset":0,"actualLimit":10,"current_page":1}

ServiceRequestListResponseModel serviceListResponseModelFromJson(String str) =>
    ServiceRequestListResponseModel.fromJson(json.decode(str));
String serviceListResponseModelToJson(ServiceRequestListResponseModel data) =>
    json.encode(data.toJson());

class ServiceRequestListResponseModel {
  ServiceRequestListResponseModel({
    bool? status,
    String? message,
    ServiceRequestData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ServiceRequestListResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data =
        json['data'] != null ? ServiceRequestData.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  ServiceRequestData? _data;
  ServiceRequestListResponseModel copyWith({
    bool? status,
    String? message,
    ServiceRequestData? data,
  }) =>
      ServiceRequestListResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  ServiceRequestData? get data => _data;

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

/// services : [{"_id":"65152ecb37a14b845388cd34","service_id":"AMG-SERQ-1445-2023","start_date":"2023-09-30T09:00:00.000Z","end_date":"2023-09-30T10:00:00.000Z","decision_maker_name":"Amy Mariam Agusty","client_name":"Amy Mariam Agusty","caregiver_name":"Benny P","service_status":"Canceled","refund_status":1,"cancelled_by":"By User","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"65152d0936f8282d35db534a","service_id":"AMG-SERQ-1444-2023","start_date":"2023-09-29T06:00:00.000Z","end_date":"2023-09-29T07:00:00.000Z","decision_maker_name":"Amy Mariam Agusty","client_name":"Amy Mariam Agusty","caregiver_name":"Benny P","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"6513c1257696078320f39ca5","service_id":"AMG-SERQ-1443-2023","start_date":"2023-09-28T10:00:00.000Z","end_date":"2023-09-28T16:00:00.000Z","decision_maker_name":"Taylor Swift","client_name":"Bebe Rexha","caregiver_name":"Haritha Care","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":351,"service_tip":0},{"_id":"6512a841317872017dad22e3","service_id":"AMG-SERQ-1442-2023","start_date":"2023-09-27T10:00:00.000Z","end_date":"2023-09-27T16:00:00.000Z","decision_maker_name":"Taylor Swift","client_name":"Bebe Rexha","caregiver_name":"Haritha Care","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":351,"service_tip":0},{"_id":"6512a22eb87ff982edcbf17e","service_id":"AMG-SERQ-1441-2023","start_date":"2023-09-27T10:00:00.000Z","end_date":"2023-09-27T16:00:00.000Z","decision_maker_name":"Taylor Swift","client_name":"Bebe Rexha","caregiver_name":"Haritha Care","service_status":"Canceled","refund_status":1,"cancelled_by":"By Caregiver","service":"Tier-1","service_fee":351,"service_tip":0},{"_id":"65125088da5e2dce6736e8b1","service_id":"AMG-SERQ-1440-2023","start_date":"2023-10-06T08:00:00.000Z","end_date":"2023-10-06T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Canceled","refund_status":1,"cancelled_by":"By Caregiver","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"6512504dda5e2dce6736e6ee","service_id":"AMG-SERQ-1439-2023","start_date":"2023-10-05T08:00:00.000Z","end_date":"2023-10-05T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"651250291611ea882af96a88","service_id":"AMG-SERQ-1438-2023","start_date":"2023-10-04T08:00:00.000Z","end_date":"2023-10-04T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"65125002abf1649e790a8d90","service_id":"AMG-SERQ-1437-2023","start_date":"2023-09-29T08:00:00.000Z","end_date":"2023-09-29T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0},{"_id":"65124fda1611ea882af96050","service_id":"AMG-SERQ-1436-2023","start_date":"2023-09-28T08:00:00.000Z","end_date":"2023-09-28T09:00:00.000Z","decision_maker_name":"Arun abdul Kareem","client_name":"Clement Clement user","caregiver_name":"Tinu Namazikage","service_status":"Upcoming","refund_status":1,"cancelled_by":"","service":"Tier-1","service_fee":58.5,"service_tip":0}]
/// totalCount : 488
/// offset : 0
/// actualLimit : 10
/// current_page : 1

ServiceRequestData dataFromJson(String str) =>
    ServiceRequestData.fromJson(json.decode(str));
String dataToJson(ServiceRequestData data) => json.encode(data.toJson());

class ServiceRequestData {
  ServiceRequestData({
    List<ServiceRequests>? services,
    num? totalCount,
    num? offset,
    num? actualLimit,
    num? currentPage,
  }) {
    _services = services;
    _totalCount = totalCount;
    _offset = offset;
    _actualLimit = actualLimit;
    _currentPage = currentPage;
  }

  ServiceRequestData.fromJson(dynamic json) {
    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(ServiceRequests.fromJson(v));
      });
    }
    _totalCount = json['totalCount'];
    _offset = json['offset'];
    _actualLimit = json['actualLimit'];
    _currentPage = json['current_page'];
  }
  List<ServiceRequests>? _services;
  num? _totalCount;
  num? _offset;
  num? _actualLimit;
  num? _currentPage;
  ServiceRequestData copyWith({
    List<ServiceRequests>? services,
    num? totalCount,
    num? offset,
    num? actualLimit,
    num? currentPage,
  }) =>
      ServiceRequestData(
        services: services ?? _services,
        totalCount: totalCount ?? _totalCount,
        offset: offset ?? _offset,
        actualLimit: actualLimit ?? _actualLimit,
        currentPage: currentPage ?? _currentPage,
      );
  List<ServiceRequests>? get services => _services;
  num? get totalCount => _totalCount;
  num? get offset => _offset;
  num? get actualLimit => _actualLimit;
  num? get currentPage => _currentPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
    map['totalCount'] = _totalCount;
    map['offset'] = _offset;
    map['actualLimit'] = _actualLimit;
    map['current_page'] = _currentPage;
    return map;
  }
}

/// _id : "65152ecb37a14b845388cd34"
/// service_id : "AMG-SERQ-1445-2023"
/// start_date : "2023-09-30T09:00:00.000Z"
/// end_date : "2023-09-30T10:00:00.000Z"
/// decision_maker_name : "Amy Mariam Agusty"
/// client_name : "Amy Mariam Agusty"
/// caregiver_name : "Benny P"
/// service_status : "Canceled"
/// refund_status : 1
/// cancelled_by : "By User"
/// service : "Tier-1"
/// service_fee : 58.5
/// service_tip : 0

ServiceRequests servicesFromJson(String str) =>
    ServiceRequests.fromJson(json.decode(str));
String servicesToJson(ServiceRequests data) => json.encode(data.toJson());

class ServiceRequests {
  ServiceRequests({
    String? id,
    String? serviceId,
    String? startDate,
    String? endDate,
    String? decisionMakerName,
    String? clientName,
    String? caregiverName,
    String? serviceStatus,
    num? refundStatus,
    String? cancelledBy,
    String? service,
    num? serviceFee,
    num? serviceTip,
  }) {
    _id = id;
    _serviceId = serviceId;
    _startDate = startDate;
    _endDate = endDate;
    _decisionMakerName = decisionMakerName;
    _clientName = clientName;
    _caregiverName = caregiverName;
    _serviceStatus = serviceStatus;
    _refundStatus = refundStatus;
    _cancelledBy = cancelledBy;
    _service = service;
    _serviceFee = serviceFee;
    _serviceTip = serviceTip;
  }

  ServiceRequests.fromJson(dynamic json) {
    _id = json['_id'];
    _serviceId = json['service_id'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _decisionMakerName = json['decision_maker_name'];
    _clientName = json['client_name'];
    _caregiverName = json['caregiver_name'];
    _serviceStatus = json['service_status'];
    _refundStatus = json['refund_status'];
    _cancelledBy = json['cancelled_by'];
    _service = json['service'];
    _serviceFee = json['service_fee'];
    _serviceTip = json['service_tip'];
  }
  String? _id;
  String? _serviceId;
  String? _startDate;
  String? _endDate;
  String? _decisionMakerName;
  String? _clientName;
  String? _caregiverName;
  String? _serviceStatus;
  num? _refundStatus;
  String? _cancelledBy;
  String? _service;
  num? _serviceFee;
  num? _serviceTip;
  ServiceRequests copyWith({
    String? id,
    String? serviceId,
    String? startDate,
    String? endDate,
    String? decisionMakerName,
    String? clientName,
    String? caregiverName,
    String? serviceStatus,
    num? refundStatus,
    String? cancelledBy,
    String? service,
    num? serviceFee,
    num? serviceTip,
  }) =>
      ServiceRequests(
        id: id ?? _id,
        serviceId: serviceId ?? _serviceId,
        startDate: startDate ?? _startDate,
        endDate: endDate ?? _endDate,
        decisionMakerName: decisionMakerName ?? _decisionMakerName,
        clientName: clientName ?? _clientName,
        caregiverName: caregiverName ?? _caregiverName,
        serviceStatus: serviceStatus ?? _serviceStatus,
        refundStatus: refundStatus ?? _refundStatus,
        cancelledBy: cancelledBy ?? _cancelledBy,
        service: service ?? _service,
        serviceFee: serviceFee ?? _serviceFee,
        serviceTip: serviceTip ?? _serviceTip,
      );
  String? get id => _id;
  String? get serviceId => _serviceId;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  String? get decisionMakerName => _decisionMakerName;
  String? get clientName => _clientName;
  String? get caregiverName => _caregiverName;
  String? get serviceStatus => _serviceStatus;
  num? get refundStatus => _refundStatus;
  String? get cancelledBy => _cancelledBy;
  String? get service => _service;
  num? get serviceFee => _serviceFee;
  num? get serviceTip => _serviceTip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['service_id'] = _serviceId;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['decision_maker_name'] = _decisionMakerName;
    map['client_name'] = _clientName;
    map['caregiver_name'] = _caregiverName;
    map['service_status'] = _serviceStatus;
    map['refund_status'] = _refundStatus;
    map['cancelled_by'] = _cancelledBy;
    map['service'] = _service;
    map['service_fee'] = _serviceFee;
    map['service_tip'] = _serviceTip;
    return map;
  }
}
