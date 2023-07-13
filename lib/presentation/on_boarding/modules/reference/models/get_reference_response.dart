import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"references":[{"name":"reference name one","phone":"","relationship":"6440e584a8a1d6a29d7ff746","address":"address 1","street":"street 1","city":"5a0ae710737d5eb24932fc6c","state":"643d82526cba31e037a0dc4b","city_name":"Barkhamsted","state_name":"Connecticut","relation_name":"Nephew","zip":"68095-2394"},{"name":"two","phone":"643-565-6262","relationship":"6440e584a8a1d6a29d7ff73f","address":"shs","street":"ueue","city":"5a0ae710737d5eb2493300b7","state":"643d82526cba31e037a0dc3f","city_name":"Arapahoe","state_name":"Colorado","relation_name":"Sister","zip":"23232-4646"}]}

GetReferenceResponse getReferenceResponseFromJson(String str) =>
    GetReferenceResponse.fromJson(json.decode(str));
String getReferenceResponseToJson(GetReferenceResponse data) =>
    json.encode(data.toJson());

class GetReferenceResponse {
  GetReferenceResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetReferenceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  GetReferenceResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      GetReferenceResponse(
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

/// references : [{"name":"reference name one","phone":"","relationship":"6440e584a8a1d6a29d7ff746","address":"address 1","street":"street 1","city":"5a0ae710737d5eb24932fc6c","state":"643d82526cba31e037a0dc4b","city_name":"Barkhamsted","state_name":"Connecticut","relation_name":"Nephew","zip":"68095-2394"},{"name":"two","phone":"643-565-6262","relationship":"6440e584a8a1d6a29d7ff73f","address":"shs","street":"ueue","city":"5a0ae710737d5eb2493300b7","state":"643d82526cba31e037a0dc3f","city_name":"Arapahoe","state_name":"Colorado","relation_name":"Sister","zip":"23232-4646"}]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    List<GetReferences>? references,
  }) {
    _references = references;
  }

  Data.fromJson(dynamic json) {
    if (json['references'] != null) {
      _references = [];
      json['references'].forEach((v) {
        _references?.add(GetReferences.fromJson(v));
      });
    }
  }
  List<GetReferences>? _references;
  Data copyWith({
    List<GetReferences>? references,
  }) =>
      Data(
        references: references ?? _references,
      );
  List<GetReferences>? get references => _references;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_references != null) {
      map['references'] = _references?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// name : "reference name one"
/// phone : ""
/// relationship : "6440e584a8a1d6a29d7ff746"
/// address : "address 1"
/// street : "street 1"
/// city : "5a0ae710737d5eb24932fc6c"
/// state : "643d82526cba31e037a0dc4b"
/// city_name : "Barkhamsted"
/// state_name : "Connecticut"
/// relation_name : "Nephew"
/// zip : "68095-2394"

GetReferences referencesFromJson(String str) =>
    GetReferences.fromJson(json.decode(str));
String referencesToJson(GetReferences data) => json.encode(data.toJson());

class GetReferences {
  GetReferences({
    String? name,
    String? phone,
    String? relationship,
    String? address,
    String? street,
    String? city,
    String? state,
    String? cityName,
    String? stateName,
    String? relationName,
    String? zip,
  }) {
    _name = name;
    _phone = phone;
    _relationship = relationship;
    _address = address;
    _street = street;
    _city = city;
    _state = state;
    _cityName = cityName;
    _stateName = stateName;
    _relationName = relationName;
    _zip = zip;
  }

  GetReferences.fromJson(dynamic json) {
    _name = json['name'];
    _phone = json['phone_number'];
    _relationship = json['relationship'];
    _address = json['address'];
    _street = json['street'];
    _city = json['city_id'];
    _state = json['state_id'];
    _cityName = json['city_name'];
    _stateName = json['state_name'];
    _zip = json['zip'];
  }
  String? _name;
  String? _phone;
  String? _relationship;
  String? _address;
  String? _street;
  String? _city;
  String? _state;
  String? _cityName;
  String? _stateName;
  String? _relationName;
  String? _zip;
  GetReferences copyWith({
    String? name,
    String? phone,
    String? relationship,
    String? address,
    String? street,
    String? city,
    String? state,
    String? cityName,
    String? stateName,
    String? relationName,
    String? zip,
  }) =>
      GetReferences(
        name: name ?? _name,
        phone: phone ?? _phone,
        relationship: relationship ?? _relationship,
        address: address ?? _address,
        street: street ?? _street,
        city: city ?? _city,
        state: state ?? _state,
        cityName: cityName ?? _cityName,
        stateName: stateName ?? _stateName,
        relationName: relationName ?? _relationName,
        zip: zip ?? _zip,
      );
  String? get name => _name;
  String? get phone => _phone;
  String? get relationship => _relationship;
  String? get address => _address;
  String? get street => _street;
  String? get city => _city;
  String? get state => _state;
  String? get cityName => _cityName;
  String? get stateName => _stateName;
  String? get relationName => _relationName;
  String? get zip => _zip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['phone'] = _phone;
    map['relationship'] = _relationship;
    map['address'] = _address;
    map['street'] = _street;
    map['city'] = _city;
    map['state'] = _state;
    map['city_name'] = _cityName;
    map['state_name'] = _stateName;
    map['relation_name'] = _relationName;
    map['zip'] = _zip;
    return map;
  }
}
