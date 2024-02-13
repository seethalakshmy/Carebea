import 'dart:convert';

CaregiverProfileResponse responsecaregiverFromJson(String str) =>
    CaregiverProfileResponse.fromJson(json.decode(str));
String responsecaregiverToJson(CaregiverProfileResponse data) =>
    json.encode(data.toJson());

class CaregiverProfileResponse {
  CaregiverProfileResponse({
    bool? status,
    String? message,
    Data? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  CaregiverProfileResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  String? _message;
  Data? _data;
  CaregiverProfileResponse copyWith({
    bool? status,
    String? message,
    Data? data,
  }) =>
      CaregiverProfileResponse(
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

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    String? userId,
    Name? name,
    String? age,
    String? agreement,
    String? averageReview,
    String? reviewCount,
    PersonalDetails? personalDetails,
    DocumentDetails? documentDetails,
    QualificationAndTest? qualificationAndTest,
    Preference? preference,
    Services? services,
    List<Reference>? reference,
    Profile? profile,
    String? ssn,
    num? serviceCompleted,
    num? cancelledRequests,
    num? verificationStatus,
  }) {
    _userId = userId;
    _name = name;
    _age = age;
    _agreement = agreement;
    _averageReview = averageReview;
    _reviewCount = reviewCount;
    _personalDetails = personalDetails;
    _documentDetails = documentDetails;
    _qualificationAndTest = qualificationAndTest;
    _preference = preference;
    _services = services;
    _reference = reference;
    _profile = profile;
    _ssn = ssn;
    _serviceCompleted = serviceCompleted;
    _cancelledRequests = cancelledRequests;
    _verificationStatus = verificationStatus;
  }

  Data.fromJson(dynamic json) {
    _userId = json['user_id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _age = json['age'];
    _agreement = json['agreement'];
    _averageReview = json['average_review'];
    _reviewCount = json['review_count'];
    _personalDetails = json['personal_details'] != null
        ? PersonalDetails.fromJson(json['personal_details'])
        : null;
    _documentDetails = json['document_details'] != null
        ? DocumentDetails.fromJson(json['document_details'])
        : null;
    _qualificationAndTest = json['qualification_and_test'] != null
        ? QualificationAndTest.fromJson(json['qualification_and_test'])
        : null;
    _preference = json['preference'] != null
        ? Preference.fromJson(json['preference'])
        : null;
    _services =
        json['services'] != null ? Services.fromJson(json['services']) : null;
    if (json['reference'] != null) {
      _reference = [];
      json['reference'].forEach((v) {
        _reference?.add(Reference.fromJson(v));
      });
    }
    _profile =
        json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    _ssn = json['ssn'];
    _serviceCompleted = json['service_completed'];
    _cancelledRequests = json['cancelled_requests'];
    _verificationStatus = json['verification_status'];
  }
  String? _userId;
  Name? _name;
  String? _age;
  String? _agreement;
  String? _averageReview;
  String? _reviewCount;
  PersonalDetails? _personalDetails;
  DocumentDetails? _documentDetails;
  QualificationAndTest? _qualificationAndTest;
  Preference? _preference;
  Services? _services;
  List<Reference>? _reference;
  Profile? _profile;
  String? _ssn;
  num? _serviceCompleted;
  num? _cancelledRequests;
  num? _verificationStatus;
  Data copyWith({
    String? userId,
    Name? name,
    String? age,
    String? agreement,
    String? averageReview,
    String? reviewCount,
    PersonalDetails? personalDetails,
    DocumentDetails? documentDetails,
    QualificationAndTest? qualificationAndTest,
    Preference? preference,
    Services? services,
    List<Reference>? reference,
    Profile? profile,
    String? ssn,
    num? serviceCompleted,
    num? cancelledRequests,
    num? verificationStatus,
  }) =>
      Data(
        userId: userId ?? _userId,
        name: name ?? _name,
        age: age ?? _age,
        agreement: agreement ?? _agreement,
        averageReview: averageReview ?? _averageReview,
        reviewCount: reviewCount ?? _reviewCount,
        personalDetails: personalDetails ?? _personalDetails,
        documentDetails: documentDetails ?? _documentDetails,
        qualificationAndTest: qualificationAndTest ?? _qualificationAndTest,
        preference: preference ?? _preference,
        services: services ?? _services,
        reference: reference ?? _reference,
        profile: profile ?? _profile,
        ssn: ssn ?? _ssn,
        serviceCompleted: serviceCompleted ?? _serviceCompleted,
        cancelledRequests: cancelledRequests ?? _cancelledRequests,
        verificationStatus: verificationStatus ?? _verificationStatus,
      );
  String? get userId => _userId;
  Name? get name => _name;
  String? get age => _age;
  String? get agreement => _agreement;
  String? get averageReview => _averageReview;
  String? get reviewCount => _reviewCount;
  PersonalDetails? get personalDetails => _personalDetails;
  DocumentDetails? get documentDetails => _documentDetails;
  QualificationAndTest? get qualificationAndTest => _qualificationAndTest;
  Preference? get preference => _preference;
  Services? get services => _services;
  List<Reference>? get reference => _reference;
  Profile? get profile => _profile;
  String? get ssn => _ssn;
  num? get serviceCompleted => _serviceCompleted;
  num? get cancelledRequests => _cancelledRequests;
  num? get verificationStatus => _verificationStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = _userId;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['age'] = _age;
    map['agreement'] = _agreement;
    map['average_review'] = _averageReview;
    map['review_count'] = _reviewCount;
    if (_personalDetails != null) {
      map['personal_details'] = _personalDetails?.toJson();
    }
    if (_documentDetails != null) {
      map['document_details'] = _documentDetails?.toJson();
    }
    if (_qualificationAndTest != null) {
      map['qualification_and_test'] = _qualificationAndTest?.toJson();
    }
    if (_preference != null) {
      map['preference'] = _preference?.toJson();
    }
    if (_services != null) {
      map['services'] = _services?.toJson();
    }
    if (_reference != null) {
      map['reference'] = _reference?.map((v) => v.toJson()).toList();
    }
    if (_profile != null) {
      map['profile'] = _profile?.toJson();
    }
    map['ssn'] = _ssn;
    map['service_completed'] = _serviceCompleted;
    map['cancelled_requests'] = _cancelledRequests;
    map['verification_status'] = _verificationStatus;
    return map;
  }
}

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));
String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  Profile({
    String? about,
    String? hobbies,
    String? description,
  }) {
    _about = about;
    _hobbies = hobbies;
    _description = description;
  }

  Profile.fromJson(dynamic json) {
    _about = json['about'];
    _hobbies = json['hobbies'];
    _description = json['description'];
  }
  String? _about;
  String? _hobbies;
  String? _description;
  Profile copyWith({
    String? about,
    String? hobbies,
    String? description,
  }) =>
      Profile(
        about: about ?? _about,
        hobbies: hobbies ?? _hobbies,
        description: description ?? _description,
      );
  String? get about => _about;
  String? get hobbies => _hobbies;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['about'] = _about;
    map['hobbies'] = _hobbies;
    map['description'] = _description;
    return map;
  }
}

Reference referenceFromJson(String str) => Reference.fromJson(json.decode(str));
String referenceToJson(Reference data) => json.encode(data.toJson());

class Reference {
  Reference({
    String? name,
    String? relationship,
    String? relationshipDescription,
    String? address,
    String? street,
    String? zip,
    String? phone,
    String? state,
    String? city,
  }) {
    _name = name;
    _relationship = relationship;
    _relationshipDescription = relationshipDescription;
    _address = address;
    _street = street;
    _zip = zip;
    _phone = phone;
    _state = state;
    _city = city;
  }

  Reference.fromJson(dynamic json) {
    _name = json['name'];
    _relationship = json['relationship'];
    _relationshipDescription = json['relationshipDescription'];
    _address = json['address'];
    _street = json['street'];
    _zip = json['zip'];
    _phone = json['phone'];
    _state = json['state'];
    _city = json['city'];
  }
  String? _name;
  String? _relationship;
  String? _relationshipDescription;
  String? _address;
  String? _street;
  String? _zip;
  String? _phone;
  String? _state;
  String? _city;
  bool isExpanded = false;
  Reference copyWith({
    String? name,
    String? relationship,
    String? relationshipDescription,
    String? address,
    String? street,
    String? zip,
    String? phone,
    String? state,
    String? city,
  }) =>
      Reference(
        name: name ?? _name,
        relationship: relationship ?? _relationship,
        relationshipDescription:
            relationshipDescription ?? _relationshipDescription,
        address: address ?? _address,
        street: street ?? _street,
        zip: zip ?? _zip,
        phone: phone ?? _phone,
        state: state ?? _state,
        city: city ?? _city,
      );
  String? get name => _name;
  String? get relationship => _relationship;
  String? get relationshipDescription => _relationshipDescription;
  String? get address => _address;
  String? get street => _street;
  String? get zip => _zip;
  String? get phone => _phone;
  String? get state => _state;
  String? get city => _city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['relationship'] = _relationship;
    map['relationshipDescription'] = _relationshipDescription;
    map['address'] = _address;
    map['street'] = _street;
    map['zip'] = _zip;
    map['phone'] = _phone;
    map['state'] = _state;
    map['city'] = _city;
    return map;
  }
}

Services servicesFromJson(String str) => Services.fromJson(json.decode(str));
String servicesToJson(Services data) => json.encode(data.toJson());

class Services {
  Services({
    List<String>? basicServices,
    List<String>? specialServices,
  }) {
    _basicServices = basicServices;
    _specialServices = specialServices;
  }

  Services.fromJson(dynamic json) {
    _basicServices = json['basic_services'] != null
        ? json['basic_services'].cast<String>()
        : [];
    _specialServices = json['special_services'] != null
        ? json['special_services'].cast<String>()
        : [];
  }
  List<String>? _basicServices;
  List<String>? _specialServices;
  Services copyWith({
    List<String>? basicServices,
    List<String>? specialServices,
  }) =>
      Services(
        basicServices: basicServices ?? _basicServices,
        specialServices: specialServices ?? _specialServices,
      );
  List<String>? get basicServices => _basicServices;
  List<String>? get specialServices => _specialServices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['basic_services'] = _basicServices;
    map['special_services'] = _specialServices;
    return map;
  }
}

Preference preferenceFromJson(String str) =>
    Preference.fromJson(json.decode(str));
String preferenceToJson(Preference data) => json.encode(data.toJson());

class Preference {
  Preference({
    String? experience,
    String? serveWithPets,
    String? serveHomeWithSmoker,
    String? provideTranspotationOrRunErrands,
    List<String>? languages,
    List<Pets>? pets,
  }) {
    _experience = experience;
    _serveWithPets = serveWithPets;
    _serveHomeWithSmoker = serveHomeWithSmoker;
    _provideTranspotationOrRunErrands = provideTranspotationOrRunErrands;
    _languages = languages;
    _pets = pets;
  }

  Preference.fromJson(dynamic json) {
    _experience = json['experience'];
    _serveWithPets = json['serve_with_pets'];
    _serveHomeWithSmoker = json['serve_home_with_smoker'];
    _provideTranspotationOrRunErrands =
        json['provide_transpotation_or_run_errands'];
    _languages =
        json['languages'] != null ? json['languages'].cast<String>() : [];
    if (json['pets'] != null) {
      _pets = [];
      json['pets'].forEach((v) {
        _pets?.add(Pets.fromJson(v));
      });
    }
  }
  String? _experience;
  String? _serveWithPets;
  String? _serveHomeWithSmoker;
  String? _provideTranspotationOrRunErrands;
  List<String>? _languages;
  List<Pets>? _pets;
  Preference copyWith({
    String? experience,
    String? serveWithPets,
    String? serveHomeWithSmoker,
    String? provideTranspotationOrRunErrands,
    List<String>? languages,
    List<Pets>? pets,
  }) =>
      Preference(
        experience: experience ?? _experience,
        serveWithPets: serveWithPets ?? _serveWithPets,
        serveHomeWithSmoker: serveHomeWithSmoker ?? _serveHomeWithSmoker,
        provideTranspotationOrRunErrands: provideTranspotationOrRunErrands ??
            _provideTranspotationOrRunErrands,
        languages: languages ?? _languages,
        pets: pets ?? _pets,
      );
  String? get experience => _experience;
  String? get serveWithPets => _serveWithPets;
  String? get serveHomeWithSmoker => _serveHomeWithSmoker;
  String? get provideTranspotationOrRunErrands =>
      _provideTranspotationOrRunErrands;
  List<String>? get languages => _languages;
  List<Pets>? get pets => _pets;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['experience'] = _experience;
    map['serve_with_pets'] = _serveWithPets;
    map['serve_home_with_smoker'] = _serveHomeWithSmoker;
    map['provide_transpotation_or_run_errands'] =
        _provideTranspotationOrRunErrands;
    map['languages'] = _languages;
    if (_pets != null) {
      map['pets'] = _pets?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

Pets petsFromJson(String str) => Pets.fromJson(json.decode(str));
String petsToJson(Pets data) => json.encode(data.toJson());

class Pets {
  Pets({
    String? id,
    num? inOutStatus,
    String? name,
  }) {
    _id = id;
    _inOutStatus = inOutStatus;
    _name = name;
  }

  Pets.fromJson(dynamic json) {
    _id = json['id'];
    _inOutStatus = json['inOutStatus'];
    _name = json['name'];
  }
  String? _id;
  num? _inOutStatus;
  String? _name;
  Pets copyWith({
    String? id,
    num? inOutStatus,
    String? name,
  }) =>
      Pets(
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

QualificationAndTest qualificationAndTestFromJson(String str) =>
    QualificationAndTest.fromJson(json.decode(str));
String qualificationAndTestToJson(QualificationAndTest data) =>
    json.encode(data.toJson());

class QualificationAndTest {
  QualificationAndTest({
    String? isHhaDocument,
    String? hhaDocumentNumber,
    String? hhaExpiryDate,
    List<HhaDocUrl>? hhaDocUrl,
    String? isBlsFirstAidCertification,
    String? blsDocumentNumber,
    String? blsExpiryDate,
    List<BlsDocUrl>? blsDocUrl,
    String? isTbPpdTest,
    String? tbTakenDate,
    String? tbResult,
    List<TbDocUrl>? tbDocUrl,
    String? isCovidVaccination,
    String? covidTakenDate,
    List<CovidDocUrl>? covidDocUrl,
  }) {
    _isHhaDocument = isHhaDocument;
    _hhaDocumentNumber = hhaDocumentNumber;
    _hhaExpiryDate = hhaExpiryDate;
    _hhaDocUrl = hhaDocUrl;
    _isBlsFirstAidCertification = isBlsFirstAidCertification;
    _blsDocumentNumber = blsDocumentNumber;
    _blsExpiryDate = blsExpiryDate;
    _blsDocUrl = blsDocUrl;
    _isTbPpdTest = isTbPpdTest;
    _tbTakenDate = tbTakenDate;
    _tbResult = tbResult;
    _tbDocUrl = tbDocUrl;
    _isCovidVaccination = isCovidVaccination;
    _covidTakenDate = covidTakenDate;
    _covidDocUrl = covidDocUrl;
  }

  QualificationAndTest.fromJson(dynamic json) {
    _isHhaDocument = json['is_hha_document'];
    _hhaDocumentNumber = json['hha_document_number'];
    _hhaExpiryDate = json['hha_expiry_date'];
    if (json['hha_doc_url'] != null) {
      _hhaDocUrl = [];
      json['hha_doc_url'].forEach((v) {
        _hhaDocUrl?.add(HhaDocUrl.fromJson(v));
      });
    }
    _isBlsFirstAidCertification = json['is_bls_first_aid_certification'];
    _blsDocumentNumber = json['bls_document_number'];
    _blsExpiryDate = json['bls_expiry_date'];
    if (json['bls_doc_url'] != null) {
      _blsDocUrl = [];
      json['bls_doc_url'].forEach((v) {
        _blsDocUrl?.add(BlsDocUrl.fromJson(v));
      });
    }
    _isTbPpdTest = json['is_tb_ppd_test'];
    _tbTakenDate = json['tb_taken_date'];
    _tbResult = json['tb_result'];
    if (json['tb_doc_url'] != null) {
      _tbDocUrl = [];
      json['tb_doc_url'].forEach((v) {
        _tbDocUrl?.add(TbDocUrl.fromJson(v));
      });
    }
    _isCovidVaccination = json['is_covid_vaccination'];
    _covidTakenDate = json['covid_taken_date'];
    if (json['covid_doc_url'] != null) {
      _covidDocUrl = [];
      json['covid_doc_url'].forEach((v) {
        _covidDocUrl?.add(CovidDocUrl.fromJson(v));
      });
    }
  }
  String? _isHhaDocument;
  String? _hhaDocumentNumber;
  String? _hhaExpiryDate;
  List<HhaDocUrl>? _hhaDocUrl;
  String? _isBlsFirstAidCertification;
  String? _blsDocumentNumber;
  String? _blsExpiryDate;
  List<BlsDocUrl>? _blsDocUrl;
  String? _isTbPpdTest;
  String? _tbTakenDate;
  String? _tbResult;
  List<TbDocUrl>? _tbDocUrl;
  String? _isCovidVaccination;
  String? _covidTakenDate;
  List<CovidDocUrl>? _covidDocUrl;
  QualificationAndTest copyWith({
    String? isHhaDocument,
    String? hhaDocumentNumber,
    String? hhaExpiryDate,
    List<HhaDocUrl>? hhaDocUrl,
    String? isBlsFirstAidCertification,
    String? blsDocumentNumber,
    String? blsExpiryDate,
    List<BlsDocUrl>? blsDocUrl,
    String? isTbPpdTest,
    String? tbTakenDate,
    String? tbResult,
    List<TbDocUrl>? tbDocUrl,
    String? isCovidVaccination,
    String? covidTakenDate,
    List<CovidDocUrl>? covidDocUrl,
  }) =>
      QualificationAndTest(
        isHhaDocument: isHhaDocument ?? _isHhaDocument,
        hhaDocumentNumber: hhaDocumentNumber ?? _hhaDocumentNumber,
        hhaExpiryDate: hhaExpiryDate ?? _hhaExpiryDate,
        hhaDocUrl: hhaDocUrl ?? _hhaDocUrl,
        isBlsFirstAidCertification:
            isBlsFirstAidCertification ?? _isBlsFirstAidCertification,
        blsDocumentNumber: blsDocumentNumber ?? _blsDocumentNumber,
        blsExpiryDate: blsExpiryDate ?? _blsExpiryDate,
        blsDocUrl: blsDocUrl ?? _blsDocUrl,
        isTbPpdTest: isTbPpdTest ?? _isTbPpdTest,
        tbTakenDate: tbTakenDate ?? _tbTakenDate,
        tbResult: tbResult ?? _tbResult,
        tbDocUrl: tbDocUrl ?? _tbDocUrl,
        isCovidVaccination: isCovidVaccination ?? _isCovidVaccination,
        covidTakenDate: covidTakenDate ?? _covidTakenDate,
        covidDocUrl: covidDocUrl ?? _covidDocUrl,
      );
  String? get isHhaDocument => _isHhaDocument;
  String? get hhaDocumentNumber => _hhaDocumentNumber;
  String? get hhaExpiryDate => _hhaExpiryDate;
  List<HhaDocUrl>? get hhaDocUrl => _hhaDocUrl;
  String? get isBlsFirstAidCertification => _isBlsFirstAidCertification;
  String? get blsDocumentNumber => _blsDocumentNumber;
  String? get blsExpiryDate => _blsExpiryDate;
  List<BlsDocUrl>? get blsDocUrl => _blsDocUrl;
  String? get isTbPpdTest => _isTbPpdTest;
  String? get tbTakenDate => _tbTakenDate;
  String? get tbResult => _tbResult;
  List<TbDocUrl>? get tbDocUrl => _tbDocUrl;
  String? get isCovidVaccination => _isCovidVaccination;
  String? get covidTakenDate => _covidTakenDate;
  List<CovidDocUrl>? get covidDocUrl => _covidDocUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_hha_document'] = _isHhaDocument;
    map['hha_document_number'] = _hhaDocumentNumber;
    map['hha_expiry_date'] = _hhaExpiryDate;
    if (_hhaDocUrl != null) {
      map['hha_doc_url'] = _hhaDocUrl?.map((v) => v.toJson()).toList();
    }
    map['is_bls_first_aid_certification'] = _isBlsFirstAidCertification;
    map['bls_document_number'] = _blsDocumentNumber;
    map['bls_expiry_date'] = _blsExpiryDate;
    if (_blsDocUrl != null) {
      map['bls_doc_url'] = _blsDocUrl?.map((v) => v.toJson()).toList();
    }
    map['is_tb_ppd_test'] = _isTbPpdTest;
    map['tb_taken_date'] = _tbTakenDate;
    map['tb_result'] = _tbResult;
    if (_tbDocUrl != null) {
      map['tb_doc_url'] = _tbDocUrl?.map((v) => v.toJson()).toList();
    }
    map['is_covid_vaccination'] = _isCovidVaccination;
    map['covid_taken_date'] = _covidTakenDate;
    if (_covidDocUrl != null) {
      map['covid_doc_url'] = _covidDocUrl?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

CovidDocUrl covidDocUrlFromJson(String str) =>
    CovidDocUrl.fromJson(json.decode(str));
String covidDocUrlToJson(CovidDocUrl data) => json.encode(data.toJson());

class CovidDocUrl {
  CovidDocUrl({
    String? document,
    String? reference,
  }) {
    _document = document;
    _reference = reference;
  }

  CovidDocUrl.fromJson(dynamic json) {
    _document = json['document'];
    _reference = json['reference'];
  }
  String? _document;
  String? _reference;
  CovidDocUrl copyWith({
    String? document,
    String? reference,
  }) =>
      CovidDocUrl(
        document: document ?? _document,
        reference: reference ?? _reference,
      );
  String? get document => _document;
  String? get reference => _reference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document'] = _document;
    map['reference'] = _reference;
    return map;
  }
}

TbDocUrl tbDocUrlFromJson(String str) => TbDocUrl.fromJson(json.decode(str));
String tbDocUrlToJson(TbDocUrl data) => json.encode(data.toJson());

class TbDocUrl {
  TbDocUrl({
    String? document,
    String? reference,
  }) {
    _document = document;
    _reference = reference;
  }

  TbDocUrl.fromJson(dynamic json) {
    _document = json['document'];
    _reference = json['reference'];
  }
  String? _document;
  String? _reference;
  TbDocUrl copyWith({
    String? document,
    String? reference,
  }) =>
      TbDocUrl(
        document: document ?? _document,
        reference: reference ?? _reference,
      );
  String? get document => _document;
  String? get reference => _reference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document'] = _document;
    map['reference'] = _reference;
    return map;
  }
}

BlsDocUrl blsDocUrlFromJson(String str) => BlsDocUrl.fromJson(json.decode(str));
String blsDocUrlToJson(BlsDocUrl data) => json.encode(data.toJson());

class BlsDocUrl {
  BlsDocUrl({
    String? document,
    String? reference,
  }) {
    _document = document;
    _reference = reference;
  }

  BlsDocUrl.fromJson(dynamic json) {
    _document = json['document'];
    _reference = json['reference'];
  }
  String? _document;
  String? _reference;
  BlsDocUrl copyWith({
    String? document,
    String? reference,
  }) =>
      BlsDocUrl(
        document: document ?? _document,
        reference: reference ?? _reference,
      );
  String? get document => _document;
  String? get reference => _reference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document'] = _document;
    map['reference'] = _reference;
    return map;
  }
}

HhaDocUrl hhaDocUrlFromJson(String str) => HhaDocUrl.fromJson(json.decode(str));
String hhaDocUrlToJson(HhaDocUrl data) => json.encode(data.toJson());

class HhaDocUrl {
  HhaDocUrl({
    String? document,
    String? reference,
  }) {
    _document = document;
    _reference = reference;
  }

  HhaDocUrl.fromJson(dynamic json) {
    _document = json['document'];
    _reference = json['reference'];
  }
  String? _document;
  String? _reference;
  HhaDocUrl copyWith({
    String? document,
    String? reference,
  }) =>
      HhaDocUrl(
        document: document ?? _document,
        reference: reference ?? _reference,
      );
  String? get document => _document;
  String? get reference => _reference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document'] = _document;
    map['reference'] = _reference;
    return map;
  }
}

DocumentDetails documentDetailsFromJson(String str) =>
    DocumentDetails.fromJson(json.decode(str));
String documentDetailsToJson(DocumentDetails data) =>
    json.encode(data.toJson());

class DocumentDetails {
  DocumentDetails({
    String? documentUploaded,
    String? doumentNumber,
    String? expiryDate,
    List<DocUrl>? docUrl,
  }) {
    _documentUploaded = documentUploaded;
    _doumentNumber = doumentNumber;
    _expiryDate = expiryDate;
    _docUrl = docUrl;
  }

  DocumentDetails.fromJson(dynamic json) {
    _documentUploaded = json['document_uploaded'];
    _doumentNumber = json['doument_number'];
    _expiryDate = json['expiry_date'];
    if (json['doc_url'] != null) {
      _docUrl = [];
      json['doc_url'].forEach((v) {
        _docUrl?.add(DocUrl.fromJson(v));
      });
    }
  }
  String? _documentUploaded;
  String? _doumentNumber;
  String? _expiryDate;
  List<DocUrl>? _docUrl;
  DocumentDetails copyWith({
    String? documentUploaded,
    String? doumentNumber,
    String? expiryDate,
    List<DocUrl>? docUrl,
  }) =>
      DocumentDetails(
        documentUploaded: documentUploaded ?? _documentUploaded,
        doumentNumber: doumentNumber ?? _doumentNumber,
        expiryDate: expiryDate ?? _expiryDate,
        docUrl: docUrl ?? _docUrl,
      );
  String? get documentUploaded => _documentUploaded;
  String? get doumentNumber => _doumentNumber;
  String? get expiryDate => _expiryDate;
  List<DocUrl>? get docUrl => _docUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document_uploaded'] = _documentUploaded;
    map['doument_number'] = _doumentNumber;
    map['expiry_date'] = _expiryDate;
    if (_docUrl != null) {
      map['doc_url'] = _docUrl?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

DocUrl docUrlFromJson(String str) => DocUrl.fromJson(json.decode(str));
String docUrlToJson(DocUrl data) => json.encode(data.toJson());

class DocUrl {
  DocUrl({
    String? document,
    String? reference,
  }) {
    _document = document;
    _reference = reference;
  }

  DocUrl.fromJson(dynamic json) {
    _document = json['document'];
    _reference = json['reference'];
  }
  String? _document;
  String? _reference;
  DocUrl copyWith({
    String? document,
    String? reference,
  }) =>
      DocUrl(
        document: document ?? _document,
        reference: reference ?? _reference,
      );
  String? get document => _document;
  String? get reference => _reference;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['document'] = _document;
    map['reference'] = _reference;
    return map;
  }
}

PersonalDetails personalDetailsFromJson(String str) =>
    PersonalDetails.fromJson(json.decode(str));
String personalDetailsToJson(PersonalDetails data) =>
    json.encode(data.toJson());

class PersonalDetails {
  PersonalDetails({
    String? dob,
    String? addressLine,
    String? street,
    String? zip,
    String? city,
    String? state,
    String? gender,
    String? mobile,
    String? alternativeNumber,
    String? email,
  }) {
    _dob = dob;
    _addressLine = addressLine;
    _street = street;
    _zip = zip;
    _city = city;
    _state = state;
    _gender = gender;
    _mobile = mobile;
    _alternativeNumber = alternativeNumber;
    _email = email;
  }

  PersonalDetails.fromJson(dynamic json) {
    _dob = json['dob'];
    _addressLine = json['address_line'];
    _street = json['street'];
    _zip = json['zip'];
    _city = json['city'];
    _state = json['state'];
    _gender = json['gender'];
    _mobile = json['mobile'];
    _alternativeNumber = json['alternative_number'];
    _email = json['email'];
  }
  String? _dob;
  String? _addressLine;
  String? _street;
  String? _zip;
  String? _city;
  String? _state;
  String? _gender;
  String? _mobile;
  String? _alternativeNumber;
  String? _email;
  PersonalDetails copyWith({
    String? dob,
    String? addressLine,
    String? street,
    String? zip,
    String? city,
    String? state,
    String? gender,
    String? mobile,
    String? alternativeNumber,
    String? email,
  }) =>
      PersonalDetails(
        dob: dob ?? _dob,
        addressLine: addressLine ?? _addressLine,
        street: street ?? _street,
        zip: zip ?? _zip,
        city: city ?? _city,
        state: state ?? _state,
        gender: gender ?? _gender,
        mobile: mobile ?? _mobile,
        alternativeNumber: alternativeNumber ?? _alternativeNumber,
        email: email ?? _email,
      );
  String? get dob => _dob;
  String? get addressLine => _addressLine;
  String? get street => _street;
  String? get zip => _zip;
  String? get city => _city;
  String? get state => _state;
  String? get gender => _gender;
  String? get mobile => _mobile;
  String? get alternativeNumber => _alternativeNumber;
  String? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dob'] = _dob;
    map['address_line'] = _addressLine;
    map['street'] = _street;
    map['zip'] = _zip;
    map['city'] = _city;
    map['state'] = _state;
    map['gender'] = _gender;
    map['mobile'] = _mobile;
    map['alternative_number'] = _alternativeNumber;
    map['email'] = _email;
    return map;
  }
}

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());

class Name {
  Name({
    String? firstName,
    String? lastName,
    String? profile,
    String? profileThumbnail,
    String? fileName,
  }) {
    _firstName = firstName;
    _lastName = lastName;
    _profile = profile;
    _profileThumbnail = profileThumbnail;
    _fileName = fileName;
  }

  Name.fromJson(dynamic json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _profile = json['profile'];
    _profileThumbnail = json['profile_thumbnail'];
    _fileName = json['file_name'];
  }
  String? _firstName;
  String? _lastName;
  String? _profile;
  String? _profileThumbnail;
  String? _fileName;
  Name copyWith({
    String? firstName,
    String? lastName,
    String? profile,
    String? profileThumbnail,
    String? fileName,
  }) =>
      Name(
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        profile: profile ?? _profile,
        profileThumbnail: profileThumbnail ?? _profileThumbnail,
        fileName: fileName ?? _fileName,
      );
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get profile => _profile;
  String? get profileThumbnail => _profileThumbnail;
  String? get fileName => _fileName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['profile'] = _profile;
    map['profile_thumbnail'] = _profileThumbnail;
    map['file_name'] = _fileName;
    return map;
  }
}
