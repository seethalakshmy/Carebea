import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"unique_complaint_id":"AMG-HELP-SPEH","status":2,"admin_comment":"","attachments":["https://amagiclientapp181307-dev.s3.amazonaws.com/public/Documents/650182683197086700d22170/none?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695123700&Signature=swPGKiu8ZGic94cEh2Vxb%2BjSTEg%3D"],"user_picture":"https://amagiclientapp181307-dev.s3.amazonaws.com/public/ProfilePictures/650182683197086700d22170/1694597735254.jpg?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695123700&Signature=Dtc1HLQ6RmgplUZSiV2iiAmXDNg%3D","user_name":"Jeril vjjcjcjccjcjckkvkvkvkvkv Luke LukeLukeLukeLukeLuke","ca_name":{},"client_name":{"firstName":"Jeril vjjcjcjccjcjckkvkvkvkvkv","lastName":"Luke LukeLukeLukeLukeLuke"},"email":"jeril@mailinator.com","phone_number":"111-111-1122","service_id":"","transaction_id":"","isPaymentRelated":false,"isServiceRelated":false,"isGeneral":true,"service_booking_id":"","unique_transaction_id":"","category":"General","created_date":"Mon Sep 18 2023 10:49:25 GMT+0000 (Coordinated Universal Time)","title":"STatus hostory tesst","status_history":[{"date":"2023-09-18T10:49:25.041Z","status":1,"comment":null,"_id":"65082b355ec9fc8f6d206e8d"},{"date":"2023-09-18T11:33:52.420Z","status":2,"comment":"We are taking this complaint seriously and we will fix it asap.","_id":"650835a079da235c77704d91"}]}

ComplaintDetailsResponseModel complaintDetailsResponseModelFromJson(
        String str) =>
    ComplaintDetailsResponseModel.fromJson(json.decode(str));

String complaintDetailsResponseModelToJson(
        ComplaintDetailsResponseModel data) =>
    json.encode(data.toJson());

class ComplaintDetailsResponseModel {
  ComplaintDetailsResponseModel({
    bool? status,
    String? message,
    ComplaintDetailsData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ComplaintDetailsResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null
        ? ComplaintDetailsData.fromJson(json['data'])
        : null;
  }

  bool? _status;
  String? _message;
  ComplaintDetailsData? _data;

  ComplaintDetailsResponseModel copyWith({
    bool? status,
    String? message,
    ComplaintDetailsData? data,
  }) =>
      ComplaintDetailsResponseModel(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );

  bool? get status => _status;

  String? get message => _message;

  ComplaintDetailsData? get data => _data;

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

/// unique_complaint_id : "AMG-HELP-SPEH"
/// status : 2
/// admin_comment : ""
/// attachments : ["https://amagiclientapp181307-dev.s3.amazonaws.com/public/Documents/650182683197086700d22170/none?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695123700&Signature=swPGKiu8ZGic94cEh2Vxb%2BjSTEg%3D"]
/// user_picture : "https://amagiclientapp181307-dev.s3.amazonaws.com/public/ProfilePictures/650182683197086700d22170/1694597735254.jpg?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1695123700&Signature=Dtc1HLQ6RmgplUZSiV2iiAmXDNg%3D"
/// user_name : "Jeril vjjcjcjccjcjckkvkvkvkvkv Luke LukeLukeLukeLukeLuke"
/// ca_name : {}
/// client_name : {"firstName":"Jeril vjjcjcjccjcjckkvkvkvkvkv","lastName":"Luke LukeLukeLukeLukeLuke"}
/// email : "jeril@mailinator.com"
/// phone_number : "111-111-1122"
/// service_id : ""
/// transaction_id : ""
/// isPaymentRelated : false
/// isServiceRelated : false
/// isGeneral : true
/// service_booking_id : ""
/// unique_transaction_id : ""
/// category : "General"
/// created_date : "Mon Sep 18 2023 10:49:25 GMT+0000 (Coordinated Universal Time)"
/// title : "STatus hostory tesst"
/// status_history : [{"date":"2023-09-18T10:49:25.041Z","status":1,"comment":null,"_id":"65082b355ec9fc8f6d206e8d"},{"date":"2023-09-18T11:33:52.420Z","status":2,"comment":"We are taking this complaint seriously and we will fix it asap.","_id":"650835a079da235c77704d91"}]

ComplaintDetailsData dataFromJson(String str) =>
    ComplaintDetailsData.fromJson(json.decode(str));

String dataToJson(ComplaintDetailsData data) => json.encode(data.toJson());

class ComplaintDetailsData {
  ComplaintDetailsData({
    String? uniqueComplaintId,
    num? status,
    String? adminComment,
    List<String>? attachments,
    String? userPicture,
    String? userName,
    CaName? caName,
    ClientName? clientName,
    String? caId,
    String? clientId,
    String? email,
    String? phoneNumber,
    String? serviceId,
    String? transactionId,
    bool? isPaymentRelated,
    bool? isServiceRelated,
    bool? isGeneral,
    String? serviceBookingId,
    String? uniqueTransactionId,
    String? category,
    String? createdDate,
    String? title,
    List<StatusHistory>? statusHistory,
  }) {
    _uniqueComplaintId = uniqueComplaintId;
    _status = status;
    _adminComment = adminComment;
    _attachments = attachments;
    _userPicture = userPicture;
    _userName = userName;
    _caName = caName;
    _caId = caId;
    _clientId = clientId;
    _clientName = clientName;
    _email = email;
    _phoneNumber = phoneNumber;
    _serviceId = serviceId;
    _transactionId = transactionId;
    _isPaymentRelated = isPaymentRelated;
    _isServiceRelated = isServiceRelated;
    _isGeneral = isGeneral;
    _serviceBookingId = serviceBookingId;
    _uniqueTransactionId = uniqueTransactionId;
    _category = category;
    _createdDate = createdDate;
    _title = title;
    _statusHistory = statusHistory;
  }

  ComplaintDetailsData.fromJson(dynamic json) {
    _uniqueComplaintId = json['unique_complaint_id'];
    _status = json['status'];
    _adminComment = json['admin_comment'];
    _attachments =
        json['attachments'] != null ? json['attachments'].cast<String>() : [];
    _userPicture = json['user_picture'];
    _userName = json['user_name'];
    _caName = json['ca_name'] != null ? CaName.fromJson(json['ca_name']) : null;
    _clientName = json['client_name'] != null
        ? ClientName.fromJson(json['client_name'])
        : null;
    _caId = json['ca_id'];
    _clientId = json['client_id'];
    _email = json['email'];
    _phoneNumber = json['phone_number'];
    _serviceId = json['service_id'];
    _transactionId = json['transaction_id'];
    _isPaymentRelated = json['isPaymentRelated'];
    _isServiceRelated = json['isServiceRelated'];
    _isGeneral = json['isGeneral'];
    _serviceBookingId = json['service_booking_id'];
    _uniqueTransactionId = json['unique_transaction_id'];
    _category = json['category'];
    _createdDate = json['created_date'];
    _title = json['title'];
    if (json['status_history'] != null) {
      _statusHistory = [];
      json['status_history'].forEach((v) {
        _statusHistory?.add(StatusHistory.fromJson(v));
      });
    }
  }

  String? _uniqueComplaintId;
  num? _status;
  String? _adminComment;
  List<String>? _attachments;
  String? _userPicture;
  String? _userName;
  CaName? _caName;
  ClientName? _clientName;
  String? _caId;
  String? _clientId;
  String? _email;
  String? _phoneNumber;
  String? _serviceId;
  String? _transactionId;
  bool? _isPaymentRelated;
  bool? _isServiceRelated;
  bool? _isGeneral;
  String? _serviceBookingId;
  String? _uniqueTransactionId;
  String? _category;
  String? _createdDate;
  String? _title;
  List<StatusHistory>? _statusHistory;

  ComplaintDetailsData copyWith({
    String? uniqueComplaintId,
    num? status,
    String? adminComment,
    List<String>? attachments,
    String? userPicture,
    String? userName,
    CaName? caName,
    ClientName? clientName,
    String? caId,
    String? clientId,
    String? email,
    String? phoneNumber,
    String? serviceId,
    String? transactionId,
    bool? isPaymentRelated,
    bool? isServiceRelated,
    bool? isGeneral,
    String? serviceBookingId,
    String? uniqueTransactionId,
    String? category,
    String? createdDate,
    String? title,
    List<StatusHistory>? statusHistory,
  }) =>
      ComplaintDetailsData(
        uniqueComplaintId: uniqueComplaintId ?? _uniqueComplaintId,
        status: status ?? _status,
        adminComment: adminComment ?? _adminComment,
        attachments: attachments ?? _attachments,
        userPicture: userPicture ?? _userPicture,
        userName: userName ?? _userName,
        caName: caName ?? _caName,
        clientName: clientName ?? _clientName,
        caId: caId ?? _caId,
        clientId: clientId ?? _clientId,
        email: email ?? _email,
        phoneNumber: phoneNumber ?? _phoneNumber,
        serviceId: serviceId ?? _serviceId,
        transactionId: transactionId ?? _transactionId,
        isPaymentRelated: isPaymentRelated ?? _isPaymentRelated,
        isServiceRelated: isServiceRelated ?? _isServiceRelated,
        isGeneral: isGeneral ?? _isGeneral,
        serviceBookingId: serviceBookingId ?? _serviceBookingId,
        uniqueTransactionId: uniqueTransactionId ?? _uniqueTransactionId,
        category: category ?? _category,
        createdDate: createdDate ?? _createdDate,
        title: title ?? _title,
        statusHistory: statusHistory ?? _statusHistory,
      );

  String? get uniqueComplaintId => _uniqueComplaintId;

  num? get status => _status;

  String? get adminComment => _adminComment;

  List<String>? get attachments => _attachments;

  String? get userPicture => _userPicture;

  String? get userName => _userName;

  CaName? get caName => _caName;

  ClientName? get clientName => _clientName;

  String? get email => _email;

  String? get caId => _caId;

  String? get clientId => _clientId;

  String? get phoneNumber => _phoneNumber;

  String? get serviceId => _serviceId;

  String? get transactionId => _transactionId;

  bool? get isPaymentRelated => _isPaymentRelated;

  bool? get isServiceRelated => _isServiceRelated;

  bool? get isGeneral => _isGeneral;

  String? get serviceBookingId => _serviceBookingId;

  String? get uniqueTransactionId => _uniqueTransactionId;

  String? get category => _category;

  String? get createdDate => _createdDate;

  String? get title => _title;

  List<StatusHistory>? get statusHistory => _statusHistory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['unique_complaint_id'] = _uniqueComplaintId;
    map['status'] = _status;
    map['admin_comment'] = _adminComment;
    map['attachments'] = _attachments;
    map['user_picture'] = _userPicture;
    map['user_name'] = _userName;
    if(_caName!=null){
      map['ca_name'] = _caName?.toJson();
    }
    if (_clientName != null) {
      map['client_name'] = _clientName?.toJson();
    }
    map['ca_id'] = _caId;
    map['client_id'] = _clientId;
    map['email'] = _email;
    map['phone_number'] = _phoneNumber;
    map['service_id'] = _serviceId;
    map['transaction_id'] = _transactionId;
    map['isPaymentRelated'] = _isPaymentRelated;
    map['isServiceRelated'] = _isServiceRelated;
    map['isGeneral'] = _isGeneral;
    map['service_booking_id'] = _serviceBookingId;
    map['unique_transaction_id'] = _uniqueTransactionId;
    map['category'] = _category;
    map['created_date'] = _createdDate;
    map['title'] = _title;
    if (_statusHistory != null) {
      map['status_history'] = _statusHistory?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// date : "2023-09-18T10:49:25.041Z"
/// status : 1
/// comment : null
/// _id : "65082b355ec9fc8f6d206e8d"

StatusHistory statusHistoryFromJson(String str) =>
    StatusHistory.fromJson(json.decode(str));

String statusHistoryToJson(StatusHistory data) => json.encode(data.toJson());

class StatusHistory {
  StatusHistory({
    String? date,
    num? status,
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
  num? _status;
  dynamic _comment;
  String? _id;

  StatusHistory copyWith({
    String? date,
    num? status,
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

  num? get status => _status;

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

/// firstName : "Jeril vjjcjcjccjcjckkvkvkvkvkv"
/// lastName : "Luke LukeLukeLukeLukeLuke"

ClientName clientNameFromJson(String str) =>
    ClientName.fromJson(json.decode(str));

String clientNameToJson(ClientName data) => json.encode(data.toJson());

class ClientName {
  ClientName({
    String? firstName,
    String? lastName,
  }) {
    _firstName = firstName;
    _lastName = lastName;
  }

  ClientName.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
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
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    return map;
  }
}

CaName caNameFromJson(String str) => CaName.fromJson(json.decode(str));

String caNameToJson(CaName data) => json.encode(data.toJson());

class CaName {
  CaName({
    String? firstName,
    String? lastName,
  }) {
    _firstName = firstName;
    _lastName = lastName;
  }

  CaName.fromJson(dynamic json) {
    _firstName = json['firstName'];
    _lastName = json['lastName'];
  }

  String? _firstName;
  String? _lastName;

  CaName copyWith({
    String? firstName,
    String? lastName,
  }) =>
      CaName(
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
