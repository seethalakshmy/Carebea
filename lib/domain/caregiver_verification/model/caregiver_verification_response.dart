class CaregiverVerificationResponse {
  bool? status;
  String? message;
  Data? data;

  CaregiverVerificationResponse({this.status, this.message, this.data});

  CaregiverVerificationResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    map['data'] = data!.toJson();
    return map;
  }
}

class Data {
  String? id;
  Caregiver? caregiver;
  BackgroundVerification? backgroundVerification;
  CertificateVerification? certificateVerification;

  Data(
      {this.id,
      this.caregiver,
      this.backgroundVerification,
      this.certificateVerification});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    caregiver = json['name'] != null ? Caregiver.fromJson(json['name']) : null;
    backgroundVerification = json['background_verfication'] != null
        ? BackgroundVerification.fromJson(json['background_verfication'])
        : null;
    certificateVerification = json['certificate_verification'] != null
        ? CertificateVerification.fromJson(json['certificate_verification'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (caregiver != null) {
      data['name'] = caregiver!.toJson();
    }
    if (backgroundVerification != null) {
      data['background_verification'] = backgroundVerification!.toJson();
    }
    if (certificateVerification != null) {
      data['certificate_verification'] = certificateVerification!.toJson();
    }
    return data;
  }
}

class Caregiver {
  String? firstName;
  String? lastName;
  String? profile;

  Caregiver({this.firstName, this.lastName, this.profile});

  Caregiver.fromJson(Map<String, dynamic> json) {
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

class BackgroundVerification {
  PersonalDetails? personalDetails;
  DocumentDetails? documentDetails;

  BackgroundVerification({this.personalDetails, this.documentDetails});

  BackgroundVerification.fromJson(Map<String, dynamic> json) {
    personalDetails = json['personal_details'] != null
        ? PersonalDetails.fromJson(json['personal_details'])
        : null;
    documentDetails = json['document_details'] != null
        ? DocumentDetails.fromJson(json['document_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (personalDetails != null) {
      data['personal_details'] = personalDetails!.toJson();
    }
    if (documentDetails != null) {
      data['document_details'] = documentDetails!.toJson();
    }
    return data;
  }
}

class PersonalDetails {
  int? approvalStatus;
  String? dob;
  String? gender;
  String? addressLine;
  String? city;
  String? street;
  String? zip;
  String? state;
  String? mobileNumber;
  String? alternativeMobileNumber;
  String? email;

  PersonalDetails(
      {this.dob,
      this.gender,
      this.addressLine,
      this.city,
      this.street,
      this.zip,
      this.state,
      this.mobileNumber,
      this.alternativeMobileNumber,
      this.email});

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    approvalStatus = json['approval_status'];
    dob = json['dob'];
    gender = json['gender'];
    addressLine = json['address_line'];
    city = json['city'];
    street = json['street'];
    zip = json['zip'];
    state = json['state'];
    mobileNumber = json['mobile'];
    alternativeMobileNumber = json['alternative_number'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dob'] = dob;
    data['gender'] = gender;
    data['address_line'] = addressLine;
    data['city'] = city;
    data['street'] = street;
    data['zip'] = zip;
    data['state'] = state;
    data['mobile'] = mobileNumber;
    data['alternative_number'] = alternativeMobileNumber;
    data['email'] = email;
    return data;
  }
}

class DocumentDetails {
  String? docUrl;
  String? documentUploaded;
  String? documentNumber;
  String? expiryDate;

  DocumentDetails(
      {this.docUrl,
      this.documentUploaded,
      this.documentNumber,
      this.expiryDate});

  DocumentDetails.fromJson(Map<String, dynamic> json) {
    // docUrl = json['doc_url'];
    documentUploaded = json['document_uploaded'];
    documentNumber = json['doument_number'];
    expiryDate = json['expiry_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doc_url'] = docUrl;
    data['document_uploaded'] = documentUploaded;
    data['document_number'] = documentNumber;
    data['expiry_date'] = expiryDate;
    return data;
  }
}

class CertificateVerification {
  int? approvalStatus;
  QualificationAndTest? qualificationAndTest;

  CertificateVerification({this.approvalStatus, this.qualificationAndTest});

  CertificateVerification.fromJson(Map<String, dynamic> json) {
    approvalStatus = json['certificate_verification'];
    qualificationAndTest = json['qualification_and_test'] != null
        ? QualificationAndTest.fromJson(json['qualification_and_test'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['certificate_verification'] = approvalStatus;
    if (qualificationAndTest != null) {
      data['qualification_and_test'] = qualificationAndTest!.toJson();
    }
    return data;
  }
}

class QualificationAndTest {
  String? isHhaDocument;
  String? hhaDocumentNumber;
  String? hhaExpiryDate;
  String? hhaDocUrl;
  String? isBlsFirstAidCertification;
  String? blsDocumentNumber;
  String? blsExpiryDate;
  String? blsDocUrl;
  String? isTbPpdTest;
  String? tbResult;
  String? tbTakenDate;
  String? tbDocUrl;
  String? isCovidVaccination;
  String? covidTakenDate;
  String? covidDocUrl;

  QualificationAndTest(
      {this.isHhaDocument,
      this.hhaDocumentNumber,
      this.hhaExpiryDate,
      this.hhaDocUrl,
      this.isBlsFirstAidCertification,
      this.blsDocumentNumber,
      this.blsExpiryDate,
      this.blsDocUrl,
      this.isTbPpdTest,
      this.tbResult,
      this.tbTakenDate,
      this.tbDocUrl,
      this.isCovidVaccination,
      this.covidTakenDate,
      this.covidDocUrl});

  QualificationAndTest.fromJson(Map<String, dynamic> json) {
    isHhaDocument = json['is_hha_document'];
    hhaDocumentNumber = json['hha_document_number'];
    hhaExpiryDate = json['hha_expiry_date'];
    // hhaDocUrl = json['hha_doc_url'];
    isBlsFirstAidCertification = json['is_bls_first_aid_certification'];
    blsDocumentNumber = json['bls_document_number'];
    blsExpiryDate = json['bls_expiry_date'];
    // blsDocUrl = json['bls_doc_url'];
    isTbPpdTest = json['is_tb_ppd_test'];
    tbResult = json['tb_result'];
    tbTakenDate = json['tb_taken_date'];
    // tbDocUrl = json['tb_doc_url'];
    isCovidVaccination = json['is_covid_vaccination'];
    covidTakenDate = json['covid_taken_date'];
    covidDocUrl = json['covid_doc_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['is_hha_document'] = isHhaDocument;
    data['hha_document_number'] = hhaDocumentNumber;
    data['hha_expiry_date'] = hhaExpiryDate;
    data['hha_doc_url'] = hhaDocUrl;
    data['is_bls_first_aid_certification'] = isBlsFirstAidCertification;
    data['bls_document_number'] = blsDocumentNumber;
    data['bls_expiry_date'] = blsExpiryDate;
    data['bls_doc_url'] = blsDocUrl;
    data['is_tb_ppd_test'] = isTbPpdTest;
    data['tb_result'] = tbResult;
    data['tb_taken_date'] = tbTakenDate;
    data['tb_doc_url'] = tbDocUrl;
    data['is_covid_vaccination'] = isCovidVaccination;
    data['covid_taken_date'] = covidTakenDate;
    data['covid_doc_url'] = covidDocUrl;
    return data;
  }
}
