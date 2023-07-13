import 'dart:convert';

/// user_id : "6437c5b5f1957dd5fa2fce13"
/// have_hha_registration : 1
/// hha_details : {"hha_number":"ABC123","expiry_date":"2024-10-05","document":"BlAH"}
/// bls_or_first_aid_certificate : 1
/// bls_or_first_aid_certificate_details : {"certification_number":"ABC12345678","expiry_date":"2024-10-05","document":"BlAHBLAH"}
/// tb_or_ppd_test : 1
/// tb_or_ppd_test_details : {"result":"negative","date":"2024-12-05","document":"BlAH"}
/// covid_vaccination : 1
/// covid_vaccination_details : {"date":"2024-11-05","document":"BlAH"}

QualificationAndTestResultRequestModel
    qualificationAndTestResultRequestModelFromJson(String str) =>
        QualificationAndTestResultRequestModel.fromJson(json.decode(str));

String qualificationAndTestResultRequestModelToJson(
        QualificationAndTestResultRequestModel data) =>
    json.encode(data.toJson());

class QualificationAndTestResultRequestModel {
  QualificationAndTestResultRequestModel({
    String? userId,
    bool? haveHhaRegistration,
    HhaDetails? hhaDetails,
    bool? blsOrFirstAidCertificate,
    BlsOrFirstAidCertificateDetails? blsOrFirstAidCertificateDetails,
    bool? tbOrPpdTest,
    TbOrPpdTestDetails? tbOrPpdTestDetails,
    bool? covidVaccination,
    CovidVaccinationDetails? covidVaccinationDetails,
  }) {
    _userId = userId;
    _haveHhaRegistration = haveHhaRegistration;
    _hhaDetails = hhaDetails;
    _blsOrFirstAidCertificate = blsOrFirstAidCertificate;
    _blsOrFirstAidCertificateDetails = blsOrFirstAidCertificateDetails;
    _tbOrPpdTest = tbOrPpdTest;
    _tbOrPpdTestDetails = tbOrPpdTestDetails;
    _covidVaccination = covidVaccination;
    _covidVaccinationDetails = covidVaccinationDetails;
  }

  QualificationAndTestResultRequestModel.fromJson(dynamic json) {
    _userId = json['user_id'];
    _haveHhaRegistration = json['have_hha_registration'];
    _hhaDetails = json['hha_details'] != null
        ? HhaDetails.fromJson(json['hha_details'])
        : null;
    _blsOrFirstAidCertificate = json['bls_or_first_aid_certificate'];
    _blsOrFirstAidCertificateDetails =
        json['bls_or_first_aid_certificate_details'] != null
            ? BlsOrFirstAidCertificateDetails.fromJson(
                json['bls_or_first_aid_certificate_details'])
            : null;
    _tbOrPpdTest = json['tb_or_ppd_test'];
    _tbOrPpdTestDetails = json['tb_or_ppd_test_details'] != null
        ? TbOrPpdTestDetails.fromJson(json['tb_or_ppd_test_details'])
        : null;
    _covidVaccination = json['covid_vaccination'];
    _covidVaccinationDetails = json['covid_vaccination_details'] != null
        ? CovidVaccinationDetails.fromJson(json['covid_vaccination_details'])
        : null;
  }

  String? _userId;
  bool? _haveHhaRegistration;
  HhaDetails? _hhaDetails;
  bool? _blsOrFirstAidCertificate;
  BlsOrFirstAidCertificateDetails? _blsOrFirstAidCertificateDetails;
  bool? _tbOrPpdTest;
  TbOrPpdTestDetails? _tbOrPpdTestDetails;
  bool? _covidVaccination;
  CovidVaccinationDetails? _covidVaccinationDetails;

  QualificationAndTestResultRequestModel copyWith({
    String? userId,
    bool? haveHhaRegistration,
    HhaDetails? hhaDetails,
    bool? blsOrFirstAidCertificate,
    BlsOrFirstAidCertificateDetails? blsOrFirstAidCertificateDetails,
    bool? tbOrPpdTest,
    TbOrPpdTestDetails? tbOrPpdTestDetails,
    bool? covidVaccination,
    CovidVaccinationDetails? covidVaccinationDetails,
  }) =>
      QualificationAndTestResultRequestModel(
        userId: userId ?? _userId,
        haveHhaRegistration: haveHhaRegistration ?? _haveHhaRegistration,
        hhaDetails: hhaDetails ?? _hhaDetails,
        blsOrFirstAidCertificate:
            blsOrFirstAidCertificate ?? _blsOrFirstAidCertificate,
        blsOrFirstAidCertificateDetails:
            blsOrFirstAidCertificateDetails ?? _blsOrFirstAidCertificateDetails,
        tbOrPpdTest: tbOrPpdTest ?? _tbOrPpdTest,
        tbOrPpdTestDetails: tbOrPpdTestDetails ?? _tbOrPpdTestDetails,
        covidVaccination: covidVaccination ?? _covidVaccination,
        covidVaccinationDetails:
            covidVaccinationDetails ?? _covidVaccinationDetails,
      );

  String? get userId => _userId;

  bool? get haveHhaRegistration => _haveHhaRegistration;

  HhaDetails? get hhaDetails => _hhaDetails;

  bool? get blsOrFirstAidCertificate => _blsOrFirstAidCertificate;

  BlsOrFirstAidCertificateDetails? get blsOrFirstAidCertificateDetails =>
      _blsOrFirstAidCertificateDetails;

  bool? get tbOrPpdTest => _tbOrPpdTest;

  TbOrPpdTestDetails? get tbOrPpdTestDetails => _tbOrPpdTestDetails;

  bool? get covidVaccination => _covidVaccination;

  CovidVaccinationDetails? get covidVaccinationDetails =>
      _covidVaccinationDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    map['have_hha_registration'] = _haveHhaRegistration;
    if (_hhaDetails != null) {
      map['hha_details'] = _hhaDetails?.toJson();
    }
    map['bls_or_first_aid_certificate'] = _blsOrFirstAidCertificate;
    if (_blsOrFirstAidCertificateDetails != null) {
      map['bls_or_first_aid_certificate_details'] =
          _blsOrFirstAidCertificateDetails?.toJson();
    }
    map['tb_or_ppd_test'] = _tbOrPpdTest;
    if (_tbOrPpdTestDetails != null) {
      map['tb_or_ppd_test_details'] = _tbOrPpdTestDetails?.toJson();
    }
    map['covid_vaccination'] = _covidVaccination;
    if (_covidVaccinationDetails != null) {
      map['covid_vaccination_details'] = _covidVaccinationDetails?.toJson();
    }
    return map;
  }

  set haveHhaRegistration(bool? value) {
    _haveHhaRegistration = value;
  }

  set blsOrFirstAidCertificate(bool? value) {
    _blsOrFirstAidCertificate = value;
  }

  set tbOrPpdTest(bool? value) {
    _tbOrPpdTest = value;
  }

  set covidVaccination(bool? value) {
    _covidVaccination = value;
  }
}

/// date : "2024-11-05"
/// document : "BlAH"

CovidVaccinationDetails covidVaccinationDetailsFromJson(String str) =>
    CovidVaccinationDetails.fromJson(json.decode(str));

String covidVaccinationDetailsToJson(CovidVaccinationDetails data) =>
    json.encode(data.toJson());

class CovidVaccinationDetails {
  CovidVaccinationDetails({
    String? date,
    List<String>? document,
  }) {
    _date = date;
    _document = document;
  }

  CovidVaccinationDetails.fromJson(dynamic json) {
    _date = json['date'];
    _document = json['document'];
  }

  String? _date;
  List<String>? _document;

  CovidVaccinationDetails copyWith({
    String? date,
    List<String>? document,
  }) =>
      CovidVaccinationDetails(
        date: date ?? _date,
        document: document ?? _document,
      );

  String? get date => _date;

  List<String>? get document => _document;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['document'] = _document;
    return map;
  }

  set date(String? value) {
    _date = value;
  }
}

/// result : "negative"
/// date : "2024-12-05"
/// document : "BlAH"

TbOrPpdTestDetails tbOrPpdTestDetailsFromJson(String str) =>
    TbOrPpdTestDetails.fromJson(json.decode(str));

String tbOrPpdTestDetailsToJson(TbOrPpdTestDetails data) =>
    json.encode(data.toJson());

class TbOrPpdTestDetails {
  TbOrPpdTestDetails({
    String? result,
    String? date,
    List<String>? document,
  }) {
    _result = result;
    _date = date;
    _document = document;
  }

  TbOrPpdTestDetails.fromJson(dynamic json) {
    _result = json['result'];
    _date = json['date'];
    _document = json['document'];
  }

  String? _result;
  String? _date;
  List<String>? _document;

  TbOrPpdTestDetails copyWith({
    String? result,
    String? date,
    List<String>? document,
  }) =>
      TbOrPpdTestDetails(
        result: result ?? _result,
        date: date ?? _date,
        document: document ?? _document,
      );

  String? get result => _result;

  String? get date => _date;

  List<String>? get document => _document;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = _result;
    map['date'] = _date;
    map['document'] = _document;
    return map;
  }

  set result(String? value) {
    _result = value;
  }

  set date(String? value) {
    _date = value;
  }
}

/// certification_number : "ABC12345678"
/// expiry_date : "2024-10-05"
/// document : "BlAHBLAH"

BlsOrFirstAidCertificateDetails blsOrFirstAidCertificateDetailsFromJson(
        String str) =>
    BlsOrFirstAidCertificateDetails.fromJson(json.decode(str));

String blsOrFirstAidCertificateDetailsToJson(
        BlsOrFirstAidCertificateDetails data) =>
    json.encode(data.toJson());

class BlsOrFirstAidCertificateDetails {
  BlsOrFirstAidCertificateDetails({
    String? certificationNumber,
    String? expiryDate,
    List<String>? document,
  }) {
    _certificationNumber = certificationNumber;
    _expiryDate = expiryDate;
    _document = document;
  }

  BlsOrFirstAidCertificateDetails.fromJson(dynamic json) {
    _certificationNumber = json['certification_number'];
    _expiryDate = json['expiry_date'];
    _document = json['document'];
  }

  String? _certificationNumber;
  String? _expiryDate;
  List<String>? _document;

  BlsOrFirstAidCertificateDetails copyWith({
    String? certificationNumber,
    String? expiryDate,
    List<String>? document,
  }) =>
      BlsOrFirstAidCertificateDetails(
        certificationNumber: certificationNumber ?? _certificationNumber,
        expiryDate: expiryDate ?? _expiryDate,
        document: document ?? _document,
      );

  String? get certificationNumber => _certificationNumber;

  String? get expiryDate => _expiryDate;

  List<String>? get document => _document;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['certification_number'] = _certificationNumber;
    map['expiry_date'] = _expiryDate;
    map['document'] = _document;
    return map;
  }

  set certificationNumber(String? value) {
    _certificationNumber = value;
  }

  set expiryDate(String? value) {
    _expiryDate = value;
  }
}

/// hha_number : "ABC123"
/// expiry_date : "2024-10-05"
/// document : "BlAH"

HhaDetails hhaDetailsFromJson(String str) =>
    HhaDetails.fromJson(json.decode(str));

String hhaDetailsToJson(HhaDetails data) => json.encode(data.toJson());

class HhaDetails {
  HhaDetails({
    String? hhaNumber,
    String? expiryDate,
    List<String>? document,
  }) {
    _hhaNumber = hhaNumber;
    _expiryDate = expiryDate;
    _document = document;
  }

  HhaDetails.fromJson(dynamic json) {
    _hhaNumber = json['hha_number'];
    _expiryDate = json['expiry_date'];
    _document = json['document'];
    print("hha details in fromJson: $_hhaNumber, $_expiryDate, $_document");
  }

  String? _hhaNumber;
  String? _expiryDate;
  List<String>? _document;

  HhaDetails copyWith({
    String? hhaNumber,
    String? expiryDate,
    List<String>? document,
  }) =>
      HhaDetails(
        hhaNumber: hhaNumber ?? _hhaNumber,
        expiryDate: expiryDate ?? _expiryDate,
        document: document ?? _document,
      );

  String? get hhaNumber => _hhaNumber;

  String? get expiryDate => _expiryDate;

  List<String>? get document => _document;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hha_number'] = _hhaNumber;
    map['expiry_date'] = _expiryDate;
    map['document'] = _document;
    return map;
  }

  set hhaNumber(String? value) {
    _hhaNumber = value;
  }

  set expiryDate(String? value) {
    _expiryDate = value;
  }
}
