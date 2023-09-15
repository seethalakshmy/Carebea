import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"user_picture":"https://amagicareambassabor185017-dev.s3.amazonaws.com/public/ProfilePictures/64d36080d289c833ca9bb1d6/1691574395210.jpg?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1694861343&Signature=EPb%2Fm8JxV7vZ8C61zVlSb7a3c8U%3D","user_name":"Freddy Ghomas","email":"freddy@mailinator.com","phone_number":"521-452-1452","category":"Service Related","created_date":"Tue Aug 22 2023 03:51:57 GMT+0000 (Coordinated Universal Time)","title":"tesr description"}

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
    _data = json['data'] != null ? ComplaintDetailsData.fromJson(json['data']) : null;
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

/// user_picture : "https://amagicareambassabor185017-dev.s3.amazonaws.com/public/ProfilePictures/64d36080d289c833ca9bb1d6/1691574395210.jpg?AWSAccessKeyId=AKIAU2IGCHB5T3BOEZQ5&Expires=1694861343&Signature=EPb%2Fm8JxV7vZ8C61zVlSb7a3c8U%3D"
/// user_name : "Freddy Ghomas"
/// email : "freddy@mailinator.com"
/// phone_number : "521-452-1452"
/// category : "Service Related"
/// created_date : "Tue Aug 22 2023 03:51:57 GMT+0000 (Coordinated Universal Time)"
/// title : "tesr description"

ComplaintDetailsData dataFromJson(String str) => ComplaintDetailsData.fromJson(json.decode(str));
String dataToJson(ComplaintDetailsData data) => json.encode(data.toJson());

class ComplaintDetailsData {
  ComplaintDetailsData({
    String? userPicture,
    String? userName,
    String? email,
    String? phoneNumber,
    String? category,
    String? createdDate,
    String? title,
  }) {
    _userPicture = userPicture;
    _userName = userName;
    _email = email;
    _phoneNumber = phoneNumber;
    _category = category;
    _createdDate = createdDate;
    _title = title;
  }

  ComplaintDetailsData.fromJson(dynamic json) {
    _userPicture = json['user_picture'];
    _userName = json['user_name'];
    _email = json['email'];
    _phoneNumber = json['phone_number'];
    _category = json['category'];
    _createdDate = json['created_date'];
    _title = json['title'];
  }
  String? _userPicture;
  String? _userName;
  String? _email;
  String? _phoneNumber;
  String? _category;
  String? _createdDate;
  String? _title;
  ComplaintDetailsData copyWith({
    String? userPicture,
    String? userName,
    String? email,
    String? phoneNumber,
    String? category,
    String? createdDate,
    String? title,
  }) =>
      ComplaintDetailsData(
        userPicture: userPicture ?? _userPicture,
        userName: userName ?? _userName,
        email: email ?? _email,
        phoneNumber: phoneNumber ?? _phoneNumber,
        category: category ?? _category,
        createdDate: createdDate ?? _createdDate,
        title: title ?? _title,
      );
  String? get userPicture => _userPicture;
  String? get userName => _userName;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get category => _category;
  String? get createdDate => _createdDate;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_picture'] = _userPicture;
    map['user_name'] = _userName;
    map['email'] = _email;
    map['phone_number'] = _phoneNumber;
    map['category'] = _category;
    map['created_date'] = _createdDate;
    map['title'] = _title;
    return map;
  }
}
