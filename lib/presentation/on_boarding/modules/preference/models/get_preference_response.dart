import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"user_id":"646b02b4d95998594262807a","experience":"643e659563e7736ada368137","serve_with_a_smoker":true,"provide_transportation":true,"serve_with_pets":true,"pets_list":[{"pet":"643d87486cba31e037a0dc68","inOutStatus":2,"_id":"646b0322d9599859426280c5"},{"pet":"643d87486cba31e037a0dc67","inOutStatus":1,"_id":"646b0322d9599859426280c6"}],"languages":["643ceb686cba31e037a0db16","643ceb686cba31e037a0db53"],"pet_list_name":[{"id":"643d87486cba31e037a0dc68","inOutStatus":2,"name":"Bat"},{"id":"643d87486cba31e037a0dc67","inOutStatus":1,"name":"Cat"}],"languages_name":[{"id":"643ceb686cba31e037a0db16","name":"English"},{"id":"643ceb686cba31e037a0db53","name":"Malayalam"}]}

GetPreferenceResponse getPreferenceResponseFromJson(String str) =>
    GetPreferenceResponse.fromJson(json.decode(str));
String getPreferenceResponseToJson(GetPreferenceResponse data) =>
    json.encode(data.toJson());

class GetPreferenceResponse {
  GetPreferenceResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetPreferenceResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  GetPreferenceResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      GetPreferenceResponse(
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

/// user_id : "646b02b4d95998594262807a"
/// experience : "643e659563e7736ada368137"
/// serve_with_a_smoker : true
/// provide_transportation : true
/// serve_with_pets : true
/// pets_list : [{"pet":"643d87486cba31e037a0dc68","inOutStatus":2,"_id":"646b0322d9599859426280c5"},{"pet":"643d87486cba31e037a0dc67","inOutStatus":1,"_id":"646b0322d9599859426280c6"}]
/// languages : ["643ceb686cba31e037a0db16","643ceb686cba31e037a0db53"]
/// pet_list_name : [{"id":"643d87486cba31e037a0dc68","inOutStatus":2,"name":"Bat"},{"id":"643d87486cba31e037a0dc67","inOutStatus":1,"name":"Cat"}]
/// languages_name : [{"id":"643ceb686cba31e037a0db16","name":"English"},{"id":"643ceb686cba31e037a0db53","name":"Malayalam"}]

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
    List<String>? languages,
    List<PetListName>? petListName,
    List<LanguagesName>? languagesName,
  }) {
    _userId = userId;
    _experience = experience;
    _serveWithASmoker = serveWithASmoker;
    _provideTransportation = provideTransportation;
    _serveWithPets = serveWithPets;
    _petsList = petsList;
    _languages = languages;
    _petListName = petListName;
    _languagesName = languagesName;
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
    _languages =
        json['languages'] != null ? json['languages'].cast<String>() : [];
    if (json['pet_list_name'] != null) {
      _petListName = [];
      json['pet_list_name'].forEach((v) {
        _petListName?.add(PetListName.fromJson(v));
      });
    }
    if (json['languages_name'] != null) {
      _languagesName = [];
      json['languages_name'].forEach((v) {
        _languagesName?.add(LanguagesName.fromJson(v));
      });
    }
  }
  String? _userId;
  String? _experience;
  bool? _serveWithASmoker;
  bool? _provideTransportation;
  bool? _serveWithPets;
  List<PetsList>? _petsList;
  List<String>? _languages;
  List<PetListName>? _petListName;
  List<LanguagesName>? _languagesName;
  Data copyWith({
    String? userId,
    String? experience,
    bool? serveWithASmoker,
    bool? provideTransportation,
    bool? serveWithPets,
    List<PetsList>? petsList,
    List<String>? languages,
    List<PetListName>? petListName,
    List<LanguagesName>? languagesName,
  }) =>
      Data(
        userId: userId ?? _userId,
        experience: experience ?? _experience,
        serveWithASmoker: serveWithASmoker ?? _serveWithASmoker,
        provideTransportation: provideTransportation ?? _provideTransportation,
        serveWithPets: serveWithPets ?? _serveWithPets,
        petsList: petsList ?? _petsList,
        languages: languages ?? _languages,
        petListName: petListName ?? _petListName,
        languagesName: languagesName ?? _languagesName,
      );
  String? get userId => _userId;
  String? get experience => _experience;
  bool? get serveWithASmoker => _serveWithASmoker;
  bool? get provideTransportation => _provideTransportation;
  bool? get serveWithPets => _serveWithPets;
  List<PetsList>? get petsList => _petsList;
  List<String>? get languages => _languages;
  List<PetListName>? get petListName => _petListName;
  List<LanguagesName>? get languagesName => _languagesName;

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
    if (_petListName != null) {
      map['pet_list_name'] = _petListName?.map((v) => v.toJson()).toList();
    }
    if (_languagesName != null) {
      map['languages_name'] = _languagesName?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "643ceb686cba31e037a0db16"
/// name : "English"

LanguagesName languagesNameFromJson(String str) =>
    LanguagesName.fromJson(json.decode(str));
String languagesNameToJson(LanguagesName data) => json.encode(data.toJson());

class LanguagesName {
  LanguagesName({
    String? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  LanguagesName.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  String? _id;
  String? _name;
  LanguagesName copyWith({
    String? id,
    String? name,
  }) =>
      LanguagesName(
        id: id ?? _id,
        name: name ?? _name,
      );
  String? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

/// id : "643d87486cba31e037a0dc68"
/// inOutStatus : 2
/// name : "Bat"

PetListName petListNameFromJson(String str) =>
    PetListName.fromJson(json.decode(str));
String petListNameToJson(PetListName data) => json.encode(data.toJson());

class PetListName {
  PetListName({
    String? id,
    num? inOutStatus,
    String? name,
  }) {
    _id = id;
    _inOutStatus = inOutStatus;
    _name = name;
  }

  PetListName.fromJson(dynamic json) {
    _id = json['id'];
    _inOutStatus = json['inOutStatus'];
    _name = json['name'];
  }
  String? _id;
  num? _inOutStatus;
  String? _name;
  PetListName copyWith({
    String? id,
    num? inOutStatus,
    String? name,
  }) =>
      PetListName(
        id: id ?? _id,
        inOutStatus: inOutStatus ?? _inOutStatus,
        name: name ?? _name,
      );
  String? get id => _id;
  num? get inOutStatus => _inOutStatus;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['inOutStatus'] = _inOutStatus;
    map['name'] = _name;
    return map;
  }
}

/// pet : "643d87486cba31e037a0dc68"
/// inOutStatus : 2
/// _id : "646b0322d9599859426280c5"

PetsList petsListFromJson(String str) => PetsList.fromJson(json.decode(str));
String petsListToJson(PetsList data) => json.encode(data.toJson());

class PetsList {
  PetsList({
    String? pet,
    num? inOutStatus,
    String? id,
  }) {
    _pet = pet;
    _inOutStatus = inOutStatus;
    _id = id;
    print("PetList items : $_pet, $_inOutStatus, $_id");
  }

  PetsList.fromJson(dynamic json) {
    _pet = json['pet'];
    _inOutStatus = json['inOutStatus'];
    _id = json['_id'];
  }
  String? _pet;
  num? _inOutStatus;
  String? _id;
  PetsList copyWith({
    String? pet,
    num? inOutStatus,
    String? id,
  }) =>
      PetsList(
        pet: pet ?? _pet,
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
