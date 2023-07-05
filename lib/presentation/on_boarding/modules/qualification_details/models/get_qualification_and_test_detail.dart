import 'dart:convert';

/// status : true
/// message : "Success"
/// data : {"hha":{"have_hha_registration":true,"hha_details":{"hha_number":"84-2136","expiry_date":"2023-08-25T00:00:00.000Z","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}},"bls":{"bls_or_first_aid_certificate":true,"bls_or_first_aid_certificate_details":{"certification_number":"vssc3u","expiry_date":"2023-06-30T00:00:00.000Z","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712229298.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=98EFFxpiCStzG1SchhdNOcz%2B13M%3D"],"document_referrence":["1685712229298.pdf"]}},"tb":{"tb_or_ppd_test":true,"tb_or_ppd_test_details":{"date":"2023-06-01T00:00:00.000Z","result":"result","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}},"covid":{"covid_vaccination":false,"covid_vaccination_details":{"date":"","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}}}

GetQualificationAndTestDetail getQualificationAndTestDetailFromJson(
        String str) =>
    GetQualificationAndTestDetail.fromJson(json.decode(str));

String getQualificationAndTestDetailToJson(
        GetQualificationAndTestDetail data) =>
    json.encode(data.toJson());

class GetQualificationAndTestDetail {
  GetQualificationAndTestDetail({
    bool? status,
    String? message,
    QualificationData? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  GetQualificationAndTestDetail.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data =
        json['data'] != null ? QualificationData.fromJson(json['data']) : null;
  }

  bool? _status;
  String? _message;
  QualificationData? _data;

  GetQualificationAndTestDetail copyWith({
    bool? status,
    String? message,
    QualificationData? data,
  }) =>
      GetQualificationAndTestDetail(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );

  bool? get status => _status;

  String? get message => _message;

  QualificationData? get data => _data;

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

/// hha : {"have_hha_registration":true,"hha_details":{"hha_number":"84-2136","expiry_date":"2023-08-25T00:00:00.000Z","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}}
/// bls : {"bls_or_first_aid_certificate":true,"bls_or_first_aid_certificate_details":{"certification_number":"vssc3u","expiry_date":"2023-06-30T00:00:00.000Z","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712229298.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=98EFFxpiCStzG1SchhdNOcz%2B13M%3D"],"document_referrence":["1685712229298.pdf"]}}
/// tb : {"tb_or_ppd_test":true,"tb_or_ppd_test_details":{"date":"2023-06-01T00:00:00.000Z","result":"result","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}}
/// covid : {"covid_vaccination":false,"covid_vaccination_details":{"date":"","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}}

QualificationData dataFromJson(String str) =>
    QualificationData.fromJson(json.decode(str));

String dataToJson(QualificationData data) => json.encode(data.toJson());

class QualificationData {
  QualificationData({
    Hha? hha,
    Bls? bls,
    Tb? tb,
    Covid? covid,
  }) {
    _hha = hha;
    _bls = bls;
    _tb = tb;
    _covid = covid;
  }

  QualificationData.fromJson(dynamic json) {
    _hha = json['hha'] != null ? Hha.fromJson(json['hha']) : null;
    _bls = json['bls'] != null ? Bls.fromJson(json['bls']) : null;
    _tb = json['tb'] != null ? Tb.fromJson(json['tb']) : null;
    _covid = json['covid'] != null ? Covid.fromJson(json['covid']) : null;
  }

  Hha? _hha;
  Bls? _bls;
  Tb? _tb;
  Covid? _covid;

  QualificationData copyWith({
    Hha? hha,
    Bls? bls,
    Tb? tb,
    Covid? covid,
  }) =>
      QualificationData(
        hha: hha ?? _hha,
        bls: bls ?? _bls,
        tb: tb ?? _tb,
        covid: covid ?? _covid,
      );

  Hha? get hha => _hha;

  Bls? get bls => _bls;

  Tb? get tb => _tb;

  Covid? get covid => _covid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_hha != null) {
      map['hha'] = _hha?.toJson();
    }
    if (_bls != null) {
      map['bls'] = _bls?.toJson();
    }
    if (_tb != null) {
      map['tb'] = _tb?.toJson();
    }
    if (_covid != null) {
      map['covid'] = _covid?.toJson();
    }
    return map;
  }
}

/// covid_vaccination : false
/// covid_vaccination_details : {"date":"","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}

Covid covidFromJson(String str) => Covid.fromJson(json.decode(str));

String covidToJson(Covid data) => json.encode(data.toJson());

class Covid {
  Covid({
    bool? covidVaccination,
    GetCovidVaccinationDetails? covidVaccinationDetails,
  }) {
    _covidVaccination = covidVaccination;
    _covidVaccinationDetails = covidVaccinationDetails;
  }

  Covid.fromJson(dynamic json) {
    _covidVaccination = json['covid_vaccination'];
    _covidVaccinationDetails = json['covid_vaccination_details'] != null
        ? GetCovidVaccinationDetails.fromJson(json['covid_vaccination_details'])
        : null;
  }

  bool? _covidVaccination;
  GetCovidVaccinationDetails? _covidVaccinationDetails;

  Covid copyWith({
    bool? covidVaccination,
    GetCovidVaccinationDetails? covidVaccinationDetails,
  }) =>
      Covid(
        covidVaccination: covidVaccination ?? _covidVaccination,
        covidVaccinationDetails:
            covidVaccinationDetails ?? _covidVaccinationDetails,
      );

  bool? get covidVaccination => _covidVaccination;

  GetCovidVaccinationDetails? get covidVaccinationDetails =>
      _covidVaccinationDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['covid_vaccination'] = _covidVaccination;
    if (_covidVaccinationDetails != null) {
      map['covid_vaccination_details'] = _covidVaccinationDetails?.toJson();
    }
    return map;
  }
}

/// date : ""
/// document : ["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"]
/// document_referrence : ["1685712221586.jpg","1685712224867.pdf"]

GetCovidVaccinationDetails covidVaccinationDetailsFromJson(String str) =>
    GetCovidVaccinationDetails.fromJson(json.decode(str));

String covidVaccinationDetailsToJson(GetCovidVaccinationDetails data) =>
    json.encode(data.toJson());

class GetCovidVaccinationDetails {
  GetCovidVaccinationDetails({
    String? date,
    List<String>? document,
    List<String>? documentReferrence,
  }) {
    _date = date;
    _document = document;
    _documentReferrence = documentReferrence;
  }

  GetCovidVaccinationDetails.fromJson(dynamic json) {
    _date = json['date'];
    _document = json['document'] != null ? json['document'].cast<String>() : [];
    _documentReferrence = json['document_referrence'] != null
        ? json['document_referrence'].cast<String>()
        : [];
  }

  String? _date;
  List<String>? _document;
  List<String>? _documentReferrence;

  GetCovidVaccinationDetails copyWith({
    String? date,
    List<String>? document,
    List<String>? documentReferrence,
  }) =>
      GetCovidVaccinationDetails(
        date: date ?? _date,
        document: document ?? _document,
        documentReferrence: documentReferrence ?? _documentReferrence,
      );

  String? get date => _date;

  List<String>? get document => _document;

  List<String>? get documentReferrence => _documentReferrence;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['document'] = _document;
    map['document_referrence'] = _documentReferrence;
    return map;
  }
}

/// tb_or_ppd_test : true
/// tb_or_ppd_test_details : {"date":"2023-06-01T00:00:00.000Z","result":"result","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}

Tb tbFromJson(String str) => Tb.fromJson(json.decode(str));

String tbToJson(Tb data) => json.encode(data.toJson());

class Tb {
  Tb({
    bool? tbOrPpdTest,
    GetTbOrPpdTestDetails? tbOrPpdTestDetails,
  }) {
    _tbOrPpdTest = tbOrPpdTest;
    _tbOrPpdTestDetails = tbOrPpdTestDetails;
  }

  Tb.fromJson(dynamic json) {
    _tbOrPpdTest = json['tb_or_ppd_test'];
    _tbOrPpdTestDetails = json['tb_or_ppd_test_details'] != null
        ? GetTbOrPpdTestDetails.fromJson(json['tb_or_ppd_test_details'])
        : null;
  }

  bool? _tbOrPpdTest;
  GetTbOrPpdTestDetails? _tbOrPpdTestDetails;

  Tb copyWith({
    bool? tbOrPpdTest,
    GetTbOrPpdTestDetails? tbOrPpdTestDetails,
  }) =>
      Tb(
        tbOrPpdTest: tbOrPpdTest ?? _tbOrPpdTest,
        tbOrPpdTestDetails: tbOrPpdTestDetails ?? _tbOrPpdTestDetails,
      );

  bool? get tbOrPpdTest => _tbOrPpdTest;

  GetTbOrPpdTestDetails? get tbOrPpdTestDetails => _tbOrPpdTestDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tb_or_ppd_test'] = _tbOrPpdTest;
    if (_tbOrPpdTestDetails != null) {
      map['tb_or_ppd_test_details'] = _tbOrPpdTestDetails?.toJson();
    }
    return map;
  }
}

/// date : "2023-06-01T00:00:00.000Z"
/// result : "result"
/// document : ["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"]
/// document_referrence : ["1685712221586.jpg","1685712224867.pdf"]

GetTbOrPpdTestDetails tbOrPpdTestDetailsFromJson(String str) =>
    GetTbOrPpdTestDetails.fromJson(json.decode(str));

String tbOrPpdTestDetailsToJson(GetTbOrPpdTestDetails data) =>
    json.encode(data.toJson());

class GetTbOrPpdTestDetails {
  GetTbOrPpdTestDetails({
    String? date,
    String? result,
    List<String>? document,
    List<String>? documentReferrence,
  }) {
    _date = date;
    _result = result;
    _document = document;
    _documentReferrence = documentReferrence;
  }

  GetTbOrPpdTestDetails.fromJson(dynamic json) {
    _date = json['date'];
    _result = json['result'];
    _document = json['document'] != null ? json['document'].cast<String>() : [];
    _documentReferrence = json['document_referrence'] != null
        ? json['document_referrence'].cast<String>()
        : [];
  }

  String? _date;
  String? _result;
  List<String>? _document;
  List<String>? _documentReferrence;

  GetTbOrPpdTestDetails copyWith({
    String? date,
    String? result,
    List<String>? document,
    List<String>? documentReferrence,
  }) =>
      GetTbOrPpdTestDetails(
        date: date ?? _date,
        result: result ?? _result,
        document: document ?? _document,
        documentReferrence: documentReferrence ?? _documentReferrence,
      );

  String? get date => _date;

  String? get result => _result;

  List<String>? get document => _document;

  List<String>? get documentReferrence => _documentReferrence;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['result'] = _result;
    map['document'] = _document;
    map['document_referrence'] = _documentReferrence;
    return map;
  }
}

/// bls_or_first_aid_certificate : true
/// bls_or_first_aid_certificate_details : {"certification_number":"vssc3u","expiry_date":"2023-06-30T00:00:00.000Z","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712229298.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=98EFFxpiCStzG1SchhdNOcz%2B13M%3D"],"document_referrence":["1685712229298.pdf"]}

Bls blsFromJson(String str) => Bls.fromJson(json.decode(str));

String blsToJson(Bls data) => json.encode(data.toJson());

class Bls {
  Bls({
    bool? blsOrFirstAidCertificate,
    GetBlsOrFirstAidCertificateDetails? blsOrFirstAidCertificateDetails,
  }) {
    _blsOrFirstAidCertificate = blsOrFirstAidCertificate;
    _blsOrFirstAidCertificateDetails = blsOrFirstAidCertificateDetails;
  }

  Bls.fromJson(dynamic json) {
    _blsOrFirstAidCertificate = json['bls_or_first_aid_certificate'];
    _blsOrFirstAidCertificateDetails =
        json['bls_or_first_aid_certificate_details'] != null
            ? GetBlsOrFirstAidCertificateDetails.fromJson(
                json['bls_or_first_aid_certificate_details'])
            : null;
  }

  bool? _blsOrFirstAidCertificate;
  GetBlsOrFirstAidCertificateDetails? _blsOrFirstAidCertificateDetails;

  Bls copyWith({
    bool? blsOrFirstAidCertificate,
    GetBlsOrFirstAidCertificateDetails? blsOrFirstAidCertificateDetails,
  }) =>
      Bls(
        blsOrFirstAidCertificate:
            blsOrFirstAidCertificate ?? _blsOrFirstAidCertificate,
        blsOrFirstAidCertificateDetails:
            blsOrFirstAidCertificateDetails ?? _blsOrFirstAidCertificateDetails,
      );

  bool? get blsOrFirstAidCertificate => _blsOrFirstAidCertificate;

  GetBlsOrFirstAidCertificateDetails? get blsOrFirstAidCertificateDetails =>
      _blsOrFirstAidCertificateDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bls_or_first_aid_certificate'] = _blsOrFirstAidCertificate;
    if (_blsOrFirstAidCertificateDetails != null) {
      map['bls_or_first_aid_certificate_details'] =
          _blsOrFirstAidCertificateDetails?.toJson();
    }
    return map;
  }
}

/// certification_number : "vssc3u"
/// expiry_date : "2023-06-30T00:00:00.000Z"
/// document : ["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712229298.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=98EFFxpiCStzG1SchhdNOcz%2B13M%3D"]
/// document_referrence : ["1685712229298.pdf"]

GetBlsOrFirstAidCertificateDetails blsOrFirstAidCertificateDetailsFromJson(
        String str) =>
    GetBlsOrFirstAidCertificateDetails.fromJson(json.decode(str));

String blsOrFirstAidCertificateDetailsToJson(
        GetBlsOrFirstAidCertificateDetails data) =>
    json.encode(data.toJson());

class GetBlsOrFirstAidCertificateDetails {
  GetBlsOrFirstAidCertificateDetails({
    String? certificationNumber,
    String? expiryDate,
    List<String>? document,
    List<String>? documentReferrence,
  }) {
    _certificationNumber = certificationNumber;
    _expiryDate = expiryDate;
    _document = document;
    _documentReferrence = documentReferrence;
  }

  GetBlsOrFirstAidCertificateDetails.fromJson(dynamic json) {
    _certificationNumber = json['certification_number'];
    _expiryDate = json['expiry_date'];
    _document = json['document'] != null ? json['document'].cast<String>() : [];
    _documentReferrence = json['document_referrence'] != null
        ? json['document_referrence'].cast<String>()
        : [];
  }

  String? _certificationNumber;
  String? _expiryDate;
  List<String>? _document;
  List<String>? _documentReferrence;

  GetBlsOrFirstAidCertificateDetails copyWith({
    String? certificationNumber,
    String? expiryDate,
    List<String>? document,
    List<String>? documentReferrence,
  }) =>
      GetBlsOrFirstAidCertificateDetails(
        certificationNumber: certificationNumber ?? _certificationNumber,
        expiryDate: expiryDate ?? _expiryDate,
        document: document ?? _document,
        documentReferrence: documentReferrence ?? _documentReferrence,
      );

  String? get certificationNumber => _certificationNumber;

  String? get expiryDate => _expiryDate;

  List<String>? get document => _document;

  List<String>? get documentReferrence => _documentReferrence;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['certification_number'] = _certificationNumber;
    map['expiry_date'] = _expiryDate;
    map['document'] = _document;
    map['document_referrence'] = _documentReferrence;
    return map;
  }
}

/// have_hha_registration : true
/// hha_details : {"hha_number":"84-2136","expiry_date":"2023-08-25T00:00:00.000Z","document":["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"],"document_referrence":["1685712221586.jpg","1685712224867.pdf"]}

Hha hhaFromJson(String str) => Hha.fromJson(json.decode(str));

String hhaToJson(Hha data) => json.encode(data.toJson());

class Hha {
  Hha({
    bool? haveHhaRegistration,
    GetHhaDetails? hhaDetails,
  }) {
    _haveHhaRegistration = haveHhaRegistration;
    _hhaDetails = hhaDetails;
  }

  Hha.fromJson(dynamic json) {
    _haveHhaRegistration = json['have_hha_registration'];
    _hhaDetails = json['hha_details'] != null
        ? GetHhaDetails.fromJson(json['hha_details'])
        : null;
  }

  bool? _haveHhaRegistration;
  GetHhaDetails? _hhaDetails;

  Hha copyWith({
    bool? haveHhaRegistration,
    GetHhaDetails? hhaDetails,
  }) =>
      Hha(
        haveHhaRegistration: haveHhaRegistration ?? _haveHhaRegistration,
        hhaDetails: hhaDetails ?? _hhaDetails,
      );

  bool? get haveHhaRegistration => _haveHhaRegistration;

  GetHhaDetails? get hhaDetails => _hhaDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['have_hha_registration'] = _haveHhaRegistration;
    if (_hhaDetails != null) {
      map['hha_details'] = _hhaDetails?.toJson();
    }
    return map;
  }
}

/// hha_number : "84-2136"
/// expiry_date : "2023-08-25T00:00:00.000Z"
/// document : ["https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712221586.jpg?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=mowADcfMWzFra%2FO4w%2BDBawvWmBw%3D","https://amagicareambassabor185017-dev.s3.amazonaws.com/public/Documents/6479ec415ea3194cb846fd35/1685712224867.pdf?AWSAccessKeyId=AKIAU2IGCHB5VV5VF2UG&Expires=1686299894&Signature=8bkHViZ6wx0bS%2FOriDLXvkqG%2Bl8%3D"]
/// document_referrence : ["1685712221586.jpg","1685712224867.pdf"]

GetHhaDetails hhaDetailsFromJson(String str) =>
    GetHhaDetails.fromJson(json.decode(str));

String hhaDetailsToJson(GetHhaDetails data) => json.encode(data.toJson());

class GetHhaDetails {
  GetHhaDetails({
    String? hhaNumber,
    String? expiryDate,
    List<String>? document,
    List<String>? documentReferrence,
  }) {
    _hhaNumber = hhaNumber;
    _expiryDate = expiryDate;
    _document = document;
    _documentReferrence = documentReferrence;
  }

  GetHhaDetails.fromJson(dynamic json) {
    _hhaNumber = json['hha_number'];
    _expiryDate = json['expiry_date'];
    _document = json['document'] != null ? json['document'].cast<String>() : [];
    _documentReferrence = json['document_referrence'] != null
        ? json['document_referrence'].cast<String>()
        : [];
  }

  String? _hhaNumber;
  String? _expiryDate;
  List<String>? _document;
  List<String>? _documentReferrence;

  GetHhaDetails copyWith({
    String? hhaNumber,
    String? expiryDate,
    List<String>? document,
    List<String>? documentReferrence,
  }) =>
      GetHhaDetails(
        hhaNumber: hhaNumber ?? _hhaNumber,
        expiryDate: expiryDate ?? _expiryDate,
        document: document ?? _document,
        documentReferrence: documentReferrence ?? _documentReferrence,
      );

  String? get hhaNumber => _hhaNumber;

  String? get expiryDate => _expiryDate;

  List<String>? get document => _document;

  List<String>? get documentReferrence => _documentReferrence;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['hha_number'] = _hhaNumber;
    map['expiry_date'] = _expiryDate;
    map['document'] = _document;
    map['document_referrence'] = _documentReferrence;
    return map;
  }
}
