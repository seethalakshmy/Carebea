import 'dart:convert';

VideoManagementResponse videoManagementResponseFromJson(String str) =>
    VideoManagementResponse.fromJson(json.decode(str));
String videoManagementResponseToJson(VideoManagementResponse data) =>
    json.encode(data.toJson());

class VideoManagementResponse {
  VideoManagementResponse({
    bool? status,
    String? message,
    List<Data>? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  VideoManagementResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<Data>? _data;
  VideoManagementResponse copyWith({
    bool? status,
    String? message,
    List<Data>? data,
  }) =>
      VideoManagementResponse(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );
  bool? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data(
      {String? id,
      num? v,
      String? attachment,
      String? createdAt,
      String? description,
      bool? isDelete,
      bool? status,
      String? title,
      String? updatedAt,
      num? userType,
      String? videoUrl}) {
    _id = id;
    _v = v;
    _attachment = attachment;
    _createdAt = createdAt;
    _description = description;
    _isDelete = isDelete;
    _status = status;
    _title = title;
    _updatedAt = updatedAt;
    _userType = userType;
    _videoUrl = videoUrl;
  }

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _v = json['__v'];
    _attachment = json['attachment'];
    _createdAt = json['createdAt'];
    _description = json['description'];
    _isDelete = json['isDelete'];
    _status = json['status'];
    _title = json['title'];
    _updatedAt = json['updatedAt'];
    _userType = json['userType'];
    _videoUrl = json['video_url'];
  }
  String? _id;
  num? _v;
  String? _attachment;
  String? _createdAt;
  String? _description;
  bool? _isDelete;
  bool? _status;
  String? _title;
  String? _updatedAt;
  num? _userType;
  String? _videoUrl;
  Data copyWith(
          {String? id,
          num? v,
          String? attachment,
          String? createdAt,
          String? description,
          bool? isDelete,
          bool? status,
          String? title,
          String? updatedAt,
          num? userType,
          String? videoUrl}) =>
      Data(
          id: id ?? _id,
          v: v ?? _v,
          attachment: attachment ?? _attachment,
          createdAt: createdAt ?? _createdAt,
          description: description ?? _description,
          isDelete: isDelete ?? _isDelete,
          status: status ?? _status,
          title: title ?? _title,
          updatedAt: updatedAt ?? _updatedAt,
          userType: userType ?? _userType,
          videoUrl: videoUrl ?? _videoUrl);
  String? get id => _id;
  num? get v => _v;
  String? get attachment => _attachment;
  String? get createdAt => _createdAt;
  String? get description => _description;
  bool? get isDelete => _isDelete;
  bool? get status => _status;
  String? get title => _title;
  String? get updatedAt => _updatedAt;
  num? get userType => _userType;
  String? get videoUrl => _videoUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['__v'] = _v;
    map['attachment'] = _attachment;
    map['createdAt'] = _createdAt;
    map['description'] = _description;
    map['isDelete'] = _isDelete;
    map['status'] = _status;
    map['title'] = _title;
    map['updatedAt'] = _updatedAt;
    map['userType'] = _userType;
    map['video_url'] = _videoUrl;
    return map;
  }
}
