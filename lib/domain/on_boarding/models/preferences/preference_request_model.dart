import 'dart:convert';

/// user_id : "6437c5b5f1957dd5fa2fce13"
/// years_of_experience : "643808a74933475a9b53aaa3"
/// serve_with_a_smoker : true
/// willing_to_provide_transportation : true
/// willing_to_serve_with_pets : true
/// pets_list : [{"id":"643808a74933475a9b53a1aa","in_out_status":1},{"id":"643808a74933475a9b53a1aa","in_out_status":2}]
/// known_languages : ["643808a74933475a9b53a1aa","643808a74933475a9b53a1ab"]

PreferenceRequestModel preferenceRequestModelFromJson(String str) =>
    PreferenceRequestModel.fromJson(json.decode(str));

String preferenceRequestModelToJson(PreferenceRequestModel data) =>
    json.encode(data.toJson());

class PreferenceRequestModel {
  PreferenceRequestModel({
    String? userId,
    String? yearsOfExperience,
    bool? serveWithASmoker,
    bool? willingToProvideTransportation,
    bool? willingToServeWithPets,
    List<PetsList>? petsList,
    List<String>? knownLanguages,
  }) {
    _userId = userId;
    _yearsOfExperience = yearsOfExperience;
    _serveWithASmoker = serveWithASmoker;
    _willingToProvideTransportation = willingToProvideTransportation;
    _willingToServeWithPets = willingToServeWithPets;
    _petsList = petsList;
    _knownLanguages = knownLanguages;
  }

  PreferenceRequestModel.fromJson(dynamic json) {
    _userId = json['user_id'];
    _yearsOfExperience = json['years_of_experience'];
    _serveWithASmoker = json['serve_with_a_smoker'];
    _willingToProvideTransportation = json['willing_to_provide_transportation'];
    _willingToServeWithPets = json['willing_to_serve_with_pets'];
    if (json['pets_list'] != null) {
      _petsList = [];
      json['pets_list'].forEach((v) {
        _petsList?.add(PetsList.fromJson(v));
      });
    }
    _knownLanguages = json['known_languages'] != null
        ? json['known_languages'].cast<String>()
        : [];
  }

  String? _userId;
  String? _yearsOfExperience;
  bool? _serveWithASmoker;
  bool? _willingToProvideTransportation;
  bool? _willingToServeWithPets;
  List<PetsList>? _petsList;
  List<String>? _knownLanguages;

  PreferenceRequestModel copyWith({
    String? userId,
    String? yearsOfExperience,
    bool? serveWithASmoker,
    bool? willingToProvideTransportation,
    bool? willingToServeWithPets,
    List<PetsList>? petsList,
    List<String>? knownLanguages,
  }) =>
      PreferenceRequestModel(
        userId: userId ?? _userId,
        yearsOfExperience: yearsOfExperience ?? _yearsOfExperience,
        serveWithASmoker: serveWithASmoker ?? _serveWithASmoker,
        willingToProvideTransportation:
            willingToProvideTransportation ?? _willingToProvideTransportation,
        willingToServeWithPets:
            willingToServeWithPets ?? _willingToServeWithPets,
        petsList: petsList ?? _petsList,
        knownLanguages: knownLanguages ?? _knownLanguages,
      );

  String? get userId => _userId;

  String? get yearsOfExperience => _yearsOfExperience;

  bool? get serveWithASmoker => _serveWithASmoker;

  bool? get willingToProvideTransportation => _willingToProvideTransportation;

  bool? get willingToServeWithPets => _willingToServeWithPets;

  List<PetsList>? get petsList => _petsList;

  List<String>? get knownLanguages => _knownLanguages;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['years_of_experience'] = _yearsOfExperience;
    map['serve_with_a_smoker'] = _serveWithASmoker;
    map['willing_to_provide_transportation'] = _willingToProvideTransportation;
    map['willing_to_serve_with_pets'] = _willingToServeWithPets;
    if (_petsList != null) {
      map['pets_list'] = _petsList?.map((v) => v.toJson()).toList();
    }
    map['known_languages'] = _knownLanguages;
    return map;
  }

  set yearsOfExperience(String? value) {
    _yearsOfExperience = value;
  }

  set serveWithASmoker(bool? value) {
    _serveWithASmoker = value;
  }

  set willingToProvideTransportation(bool? value) {
    _willingToProvideTransportation = value;
  }

  set willingToServeWithPets(bool? value) {
    _willingToServeWithPets = value;
  }
}

/// id : "643808a74933475a9b53a1aa"
/// in_out_status : 1

PetsList petsListFromJson(String str) => PetsList.fromJson(json.decode(str));

String petsListToJson(PetsList data) => json.encode(data.toJson());

class PetsList {
  PetsList({
    String? id,
    num? inOutStatus,
  }) {
    _id = id;
    _inOutStatus = inOutStatus;
  }

  PetsList.fromJson(dynamic json) {
    _id = json['id'];
    _inOutStatus = json['in_out_status'];
  }

  String? _id;
  num? _inOutStatus;

  PetsList copyWith({
    String? id,
    num? inOutStatus,
  }) =>
      PetsList(
        id: id ?? _id,
        inOutStatus: inOutStatus ?? _inOutStatus,
      );

  String? get id => _id;

  num? get inOutStatus => _inOutStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['in_out_status'] = _inOutStatus;
    return map;
  }

  set id(String? value) {
    _id = value;
  }

  set inOutStatus(num? value) {
    _inOutStatus = value;
  }
}
