import 'dart:convert';
CityListResponse cityListResponseFromJson(String str) => CityListResponse.fromJson(json.decode(str));
String cityListResponseToJson(CityListResponse data) => json.encode(data.toJson());
class CityListResponse {
  CityListResponse({
      bool? status, 
      String? message, 
      List<City>? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  CityListResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(City.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _message;
  List<City>? _data;
CityListResponse copyWith({  bool? status,
  String? message,
  List<City>? data,
}) => CityListResponse(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get status => _status;
  String? get message => _message;
  List<City>? get data => _data;

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

City dataFromJson(String str) => City.fromJson(json.decode(str));
String dataToJson(City data) => json.encode(data.toJson());
class City {
  City({
      String? id, 
      String? cityName,}){
    _id = id;
    _cityName = cityName;
}

  City.fromJson(dynamic json) {
    _id = json['_id'];
    _cityName = json['city_name'];
  }
  String? _id;
  String? _cityName;
City copyWith({  String? id,
  String? cityName,
}) => City(  id: id ?? _id,
  cityName: cityName ?? _cityName,
);
  String? get id => _id;
  String? get cityName => _cityName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['city_name'] = _cityName;
    return map;
  }

}