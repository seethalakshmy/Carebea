import 'dart:convert';
/// status : true
/// message : "Success"
/// data : {"user_id":"643c4691c22ea8c4e02f43b5","experience":"643808a74933475a9b53aaa3","serve_with_a_smoker":true,"provide_transportation":true,"serve_with_pets":true,"pets_list":[{"pet":"643808a74933475a9b53a1aa","inOutStatus":1,"_id":"643ce23934947adfcc1daa64"},{"pet":"643808a74933475a9b53a1aa","inOutStatus":2,"_id":"643ce23934947adfcc1daa65"}],"languages":["643808a74933475a9b53a1aa","643808a74933475a9b53a1ab"]}

PreferenceResponseModel preferenceResponseModelFromJson(String str) => PreferenceResponseModel.fromJson(json.decode(str));
String preferenceResponseModelToJson(PreferenceResponseModel data) => json.encode(data.toJson());
class PreferenceResponseModel {
  PreferenceResponseModel({
      bool? status, 
      String? message, 
      Data? data,}){
    _status = status;
    _message = message;
    _data = data;
}

  PreferenceResponseModel.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
PreferenceResponseModel copyWith({  bool? status,
  String? message,
  Data? data,
}) => PreferenceResponseModel(  status: status ?? _status,
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

/// user_id : "643c4691c22ea8c4e02f43b5"
/// experience : "643808a74933475a9b53aaa3"
/// serve_with_a_smoker : true
/// provide_transportation : true
/// serve_with_pets : true
/// pets_list : [{"pet":"643808a74933475a9b53a1aa","inOutStatus":1,"_id":"643ce23934947adfcc1daa64"},{"pet":"643808a74933475a9b53a1aa","inOutStatus":2,"_id":"643ce23934947adfcc1daa65"}]
/// languages : ["643808a74933475a9b53a1aa","643808a74933475a9b53a1ab"]

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? userId, 
      String? experience, 
      bool? serveWithASmoker, 
      bool? provideTransportation, 
      bool? serveWithPets, 
      List<PetsList>? petsList, 
      List<String>? languages,}){
    _userId = userId;
    _experience = experience;
    _serveWithASmoker = serveWithASmoker;
    _provideTransportation = provideTransportation;
    _serveWithPets = serveWithPets;
    _petsList = petsList;
    _languages = languages;
}

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _experience = json['experience'];
    _serveWithASmoker = json['serve_with_a_smoker'];
    _provideTransportation = json['provide_transportation'];
    _serveWithPets = json['serve_with_pets'];
    if (json['pets_list'] != null) {
      _petsList = [];
      json['pets_list'].forEach((v) {
        _petsList?.add(PetsList.fromJson(v));
      });
    }
    _languages = json['languages'] != null ? json['languages'].cast<String>() : [];
  }
  String? _userId;
  String? _experience;
  bool? _serveWithASmoker;
  bool? _provideTransportation;
  bool? _serveWithPets;
  List<PetsList>? _petsList;
  List<String>? _languages;
Data copyWith({  String? userId,
  String? experience,
  bool? serveWithASmoker,
  bool? provideTransportation,
  bool? serveWithPets,
  List<PetsList>? petsList,
  List<String>? languages,
}) => Data(  userId: userId ?? _userId,
  experience: experience ?? _experience,
  serveWithASmoker: serveWithASmoker ?? _serveWithASmoker,
  provideTransportation: provideTransportation ?? _provideTransportation,
  serveWithPets: serveWithPets ?? _serveWithPets,
  petsList: petsList ?? _petsList,
  languages: languages ?? _languages,
);
  String? get userId => _userId;
  String? get experience => _experience;
  bool? get serveWithASmoker => _serveWithASmoker;
  bool? get provideTransportation => _provideTransportation;
  bool? get serveWithPets => _serveWithPets;
  List<PetsList>? get petsList => _petsList;
  List<String>? get languages => _languages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['experience'] = _experience;
    map['serve_with_a_smoker'] = _serveWithASmoker;
    map['provide_transportation'] = _provideTransportation;
    map['serve_with_pets'] = _serveWithPets;
    if (_petsList != null) {
      map['pets_list'] = _petsList?.map((v) => v.toJson()).toList();
    }
    map['languages'] = _languages;
    return map;
  }

}

/// pet : "643808a74933475a9b53a1aa"
/// inOutStatus : 1
/// _id : "643ce23934947adfcc1daa64"

PetsList petsListFromJson(String str) => PetsList.fromJson(json.decode(str));
String petsListToJson(PetsList data) => json.encode(data.toJson());
class PetsList {
  PetsList({
      String? pet, 
      num? inOutStatus, 
      String? id,}){
    _pet = pet;
    _inOutStatus = inOutStatus;
    _id = id;
}

  PetsList.fromJson(dynamic json) {
    _pet = json['pet'];
    _inOutStatus = json['inOutStatus'];
    _id = json['_id'];
  }
  String? _pet;
  num? _inOutStatus;
  String? _id;
PetsList copyWith({  String? pet,
  num? inOutStatus,
  String? id,
}) => PetsList(  pet: pet ?? _pet,
  inOutStatus: inOutStatus ?? _inOutStatus,
  id: id ?? _id,
);
  String? get pet => _pet;
  num? get inOutStatus => _inOutStatus;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pet'] = _pet;
    map['inOutStatus'] = _inOutStatus;
    map['_id'] = _id;
    return map;
  }

}