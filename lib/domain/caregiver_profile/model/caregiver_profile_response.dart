class CaregiverProfileResponse {
  bool? status;
  String? message;
  Data? data;

  CaregiverProfileResponse({this.status, this.message, this.data});

  CaregiverProfileResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.toJson();
    }
    return map;
  }
}

class Data {
  String? userId;
  Name? name;
  String? age;
  String? agreement;
  String? averageReview;
  int? reviewCount;
  PersonalDetails? personalDetails;
  DocumentDetails? documentDetails;
  QualificationAndTest? qualificationAndTest;
  Profile? profile;
  Preference? preference;
  Services? services;
  List<Reference>? reference;
  String? ssn;
  String? profileCompletion;
  int? serviceCompleted;
  int? cancelledRequests;
  int? verificationStatus;

  Data(
      {this.userId,
      this.name,
      this.age,
      this.agreement,
      this.averageReview,
      this.reviewCount,
      this.personalDetails,
      this.documentDetails,
      this.qualificationAndTest,
      this.preference,
      this.services,
      this.reference,
      this.ssn,
      this.serviceCompleted,
      this.cancelledRequests});

  Data.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    age = json['age'];
    agreement = json['agreement'];
    agreement = json['agreement'];
    profileCompletion = json['profile_completion'];
    averageReview =
        json['average_review'] == null || json['average_review'] == 0
            ? ""
            : json['average_review'];
    reviewCount = json['review_count'];
    verificationStatus = json['verification_status'];
    personalDetails = json['personal_details'] != null
        ? PersonalDetails.fromJson(json['personal_details'])
        : null;
    profile =
        json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    documentDetails = json['document_details'] != null
        ? DocumentDetails.fromJson(json['document_details'])
        : null;
    qualificationAndTest = json['qualification_and_test'] != null
        ? QualificationAndTest.fromJson(json['qualification_and_test'])
        : null;
    preference = json['preference'] != null
        ? Preference.fromJson(json['preference'])
        : null;
    services =
        json['services'] != null ? Services.fromJson(json['services']) : null;
    if (json['reference'] != null) {
      reference = <Reference>[];
      json['reference'].forEach((v) {
        reference!.add(Reference.fromJson(v));
      });
    }
    ssn = json['ssn'];
    serviceCompleted = json['service_completed'];
    cancelledRequests = json['cancelled_requests'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = userId;
    if (name != null) {
      data['name'] = name!.toJson();
    }
    data['age'] = age;
    data['agreement'] = agreement;
    data['average_review'] = averageReview;
    data['review_count'] = reviewCount;
    if (personalDetails != null) {
      data['personal_details'] = personalDetails!.toJson();
    }
    if (documentDetails != null) {
      data['document_details'] = documentDetails!.toJson();
    }
    if (qualificationAndTest != null) {
      data['qualification_and_test'] = qualificationAndTest!.toJson();
    }
    if (preference != null) {
      data['preference'] = preference!.toJson();
    }
    if (services != null) {
      data['services'] = services!.toJson();
    }
    if (reference != null) {
      data['reference'] = reference!.map((v) => v.toJson()).toList();
    }
    data['ssn'] = ssn;
    data['service_completed'] = serviceCompleted;
    data['cancelled_requests'] = cancelledRequests;
    return data;
  }
}

class Name {
  String? firstName;
  String? lastName;
  String? profile;

  Name({this.firstName, this.lastName, this.profile});

  Name.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['profile'] = profile;
    return data;
  }
}

class PersonalDetails {
  String? dob;
  String? addressLine;
  String? zip;
  String? city;
  String? street;
  String? state;
  String? gender;
  String? mobile;
  String? alternativeMobileNumber;
  String? email;

  PersonalDetails(
      {this.dob,
      this.addressLine,
      this.zip,
      this.city,
      this.state,
      this.gender,
      this.mobile,
      this.email});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    dob = json['dob'];
    addressLine = json['address_line'];
    zip = json['zip'];
    city = json['city'];
    street = json['street'];
    state = json['state'];
    gender = json['gender'];
    mobile = json['mobile'];
    alternativeMobileNumber = json['alternative_number'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dob'] = dob;
    data['address_line'] = addressLine;
    data['zip'] = zip;
    data['city'] = city;
    data['state'] = state;
    data['gender'] = gender;
    data['mobile'] = mobile;
    data['email'] = email;
    return data;
  }
}

class DocumentDetails {
  String? documentUploaded;
  String? doumentNumber;
  String? expiryDate;

  DocumentDetails({this.documentUploaded, this.doumentNumber, this.expiryDate});

  DocumentDetails.fromJson(Map<String, dynamic> json) {
    documentUploaded = json['document_uploaded'];
    doumentNumber = json['doument_number'];
    expiryDate = json['expiry_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['document_uploaded'] = documentUploaded;
    data['doument_number'] = doumentNumber;
    data['expiry_date'] = expiryDate;
    return data;
  }
}

class QualificationAndTest {
  String? isHhaDocument;
  String? hhaDocumnetNumber;
  String? hhaExpiry;
  String? isBlsFirstAidCertification;
  String? blsDocumnetNumber;
  String? blsExpiry;
  String? isTbPpdTest;
  String? tbTakenDate;
  String? tbResult;
  String? isCovidVaccinated;
  String? vaccinTakenDate;

  QualificationAndTest(
      {this.isHhaDocument,
      this.hhaDocumnetNumber,
      this.hhaExpiry,
      this.isBlsFirstAidCertification,
      this.blsDocumnetNumber,
      this.blsExpiry,
      this.isTbPpdTest,
      this.tbTakenDate,
      this.tbResult,
      this.isCovidVaccinated,
      this.vaccinTakenDate});

  QualificationAndTest.fromJson(Map<String, dynamic> json) {
    isHhaDocument = json['is_hha_document'];
    hhaDocumnetNumber = json['hha_documnet_number'];
    hhaExpiry = json['hha_expiry'];
    isBlsFirstAidCertification = json['is_bls_first_aid_certification'];
    blsDocumnetNumber = json['bls_documnet_number'];
    blsExpiry = json['bls_expiry'];
    isTbPpdTest = json['is_tb_ppd_test'];
    tbTakenDate = json['tb_taken_date'];
    tbResult = json['tb_result'];
    isCovidVaccinated = json['is_covid_vaccinated'];
    vaccinTakenDate = json['vaccin_taken_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_hha_document'] = isHhaDocument;
    data['hha_documnet_number'] = hhaDocumnetNumber;
    data['hha_expiry'] = hhaExpiry;
    data['is_bls_first_aid_certification'] = isBlsFirstAidCertification;
    data['bls_documnet_number'] = blsDocumnetNumber;
    data['bls_expiry'] = blsExpiry;
    data['is_tb_ppd_test'] = isTbPpdTest;
    data['tb_taken_date'] = tbTakenDate;
    data['tb_result'] = tbResult;
    data['is_covid_vaccinated'] = isCovidVaccinated;
    data['vaccin_taken_date'] = vaccinTakenDate;
    return data;
  }
}

class Preference {
  String? experience;
  String? serveWithPets;
  String? serveHomeWithSmoker;
  String? provideTranspotationOrRunErrands;
  List<String>? languages;
  List<Pets>? pets;

  Preference(
      {this.experience,
      this.serveWithPets,
      this.serveHomeWithSmoker,
      this.provideTranspotationOrRunErrands,
      this.languages,
      this.pets});

  Preference.fromJson(Map<String, dynamic> json) {
    experience = json['experience'];
    serveWithPets = json['serve_with_pets'];
    serveHomeWithSmoker = json['serve_home_with_smoker'];
    provideTranspotationOrRunErrands =
        json['provide_transpotation_or_run_errands'];
    languages = json['languages'].cast<String>();
    if (json['pets'] != null) {
      pets = <Pets>[];
      json['pets'].forEach((v) {
        pets!.add(Pets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['experience'] = experience;
    data['serve_with_pets'] = serveWithPets;
    data['serve_home_with_smoker'] = serveHomeWithSmoker;
    data['provide_transpotation_or_run_errands'] =
        provideTranspotationOrRunErrands;
    data['languages'] = languages;
    if (pets != null) {
      data['pets'] = pets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pets {
  String? id;
  int? inOutStatus;
  String? name;

  Pets({this.id, this.inOutStatus, this.name});

  Pets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    inOutStatus = json['inOutStatus'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['inOutStatus'] = inOutStatus;
    data['name'] = name;
    return data;
  }
}

class Services {
  List<String>? basicServices;
  List<String>? specialServices;

  Services({this.basicServices, this.specialServices});

  Services.fromJson(Map<String, dynamic> json) {
    basicServices = json['basic_services'].cast<String>();
    specialServices = json['special_services'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['basic_services'] = basicServices;
    data['special_services'] = specialServices;
    return data;
  }
}

class Reference {
  String? name;
  String? relationship;
  String? address;
  String? street;
  String? zip;
  String? phone;
  String? state;
  String? city;
  bool isExpanded = false;

  Reference(
      {this.name,
      this.relationship,
      this.address,
      this.street,
      this.zip,
      this.phone,
      this.state,
      this.city});

  Reference.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    relationship = json['relationship'];
    address = json['address'];
    street = json['street'];
    zip = json['zip'];
    phone = json['phone'];
    state = json['state'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['relationship'] = relationship;
    data['address'] = address;
    data['street'] = street;
    data['zip'] = zip;
    data['phone'] = phone;
    data['state'] = state;
    data['city'] = city;
    return data;
  }
}

class Profile {
  String? about;
  String? hobbies;
  String? description;

  Profile({this.about, this.hobbies, this.description});

  Profile.fromJson(Map<String, dynamic> json) {
    about = json['about'];
    hobbies = json['hobbies'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['about'] = about;
    data['hobbies'] = hobbies;
    data['description'] = description;
    return data;
  }
}
