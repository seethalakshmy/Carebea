// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiClient _$ApiClientFromJson(Map<String, dynamic> json) => ApiClient();

Map<String, dynamic> _$ApiClientToJson(ApiClient instance) =>
    <String, dynamic>{};

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiClient implements ApiClient {
  _ApiClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<CareGiverResponse> getCareGivers(
    token,
    userId,
    page,
    limit,
    type,
    searchTerm,
    filterId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'type': type,
      'search_term': searchTerm,
      'filter_id': filterId,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CareGiverResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-care-givers',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CareGiverResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CaregiverVerificationResponse> getCareGiverVerificationData(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CaregiverVerificationResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-caregiver-verification',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CaregiverVerificationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverBackgroundVerify(
    token,
    userId,
    status,
    adminId,
    reason,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'status': status,
      'admin_id': adminId,
      'reject_reason': reason,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/caregiver-background-verify',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverCertificateApprove(
    token,
    userId,
    adminId,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
      'status': status,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/caregiver-certificate-verification',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverTrainingVerify(
    token,
    userId,
    adminId,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
      'status': status,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/caregiver-training-verification',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> careGiverCertificateReject(
    token,
    rejectionParams,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(rejectionParams.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/reject-qualification-document',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverSendTrainingRequest(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/caregiver-start-training',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CaregiverProfileResponse> getCareGiverProfile(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CaregiverProfileResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-care-giver-profile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CaregiverProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverInterViewVerify(
    token,
    userId,
    adminId,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
      'status': status,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/caregiver-interview-verification',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CareGiverDetailResponse> getCareGiverDetail(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CareGiverDetailResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-care-giver-by-id',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CareGiverDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CaregiverCreationResponse> createCaregiver(
    firstName,
    lastName,
    mobileNo,
    email,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'first_name': firstName,
      'last_name': lastName,
      'mobile_number': mobileNo,
      'email': email,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CaregiverCreationResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-create-caregiver',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CaregiverCreationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PersonalDetailsResponse> getPersonalDetails(
    userId,
    dob,
    genderId,
    street,
    cityId,
    stateId,
    latitude,
    longitude,
    zip,
    address,
    locationTag,
    socialSecurityNumber,
    documentId,
    documentNumber,
    expiryDate,
    document,
    profilePicture,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'dob': dob,
      'gender_id': genderId,
      'street': street,
      'city_id': cityId,
      'state_id': stateId,
      'latitude': latitude,
      'longitude': longitude,
      'zip': zip,
      'address': address,
      'location_tag': locationTag,
      'social_security_number': socialSecurityNumber,
      'document_id': documentId,
      'document_number': documentNumber,
      'expiry_date': expiryDate,
      'document': document,
      'profile_picture': profilePicture,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PersonalDetailsResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-personal-details',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PersonalDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PersonalDetailsResponse> getPersonalDetailsWebsite(
    token,
    userId,
    dob,
    genderId,
    street,
    cityId,
    stateId,
    latitude,
    longitude,
    zip,
    address,
    socialSecurityNumber,
    documentId,
    documentNumber,
    expiryDate,
    document,
    profilePicture,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'dob': dob,
      'gender_id': genderId,
      'street': street,
      'city_id': cityId,
      'state_id': stateId,
      'latitude': latitude,
      'longitude': longitude,
      'zip': zip,
      'address': address,
      'social_security_number': socialSecurityNumber,
      'document_id': documentId,
      'document_number': documentNumber,
      'expiry_date': expiryDate,
      'document': document,
      'profile_picture': profilePicture,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<PersonalDetailsResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/personal-details',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PersonalDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> createCareGiverAgreement(
    token,
    userId,
    signature,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'signature': signature,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/agreement',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> getCareGiverAgreement(
    token,
    userId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'user_id': userId};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/agreement',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> getQualifications(
    userId,
    haveHHARegistration,
    hhaDetails,
    haveBLSCertificate,
    blsDetails,
    haveTBTest,
    tbDetails,
    haveCovidVaccination,
    covidDetails,
    isReUpload,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'have_hha_registration': haveHHARegistration,
      'hha_details': hhaDetails,
      'bls_or_first_aid_certificate': haveBLSCertificate,
      'bls_or_first_aid_certificate_details': blsDetails,
      'tb_or_ppd_test': haveTBTest,
      'tb_or_ppd_test_details': tbDetails,
      'covid_vaccination': haveCovidVaccination,
      'covid_vaccination_details': covidDetails,
      'is_reupload': isReUpload,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-qualification',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> getQualificationsWebsite(
    token,
    userId,
    haveHHARegistration,
    hhaDetails,
    haveBLSCertificate,
    blsDetails,
    haveTBTest,
    tbDetails,
    haveCovidVaccination,
    covidDetails,
    isReUpload,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'have_hha_registration': haveHHARegistration,
      'hha_details': hhaDetails,
      'bls_or_first_aid_certificate': haveBLSCertificate,
      'bls_or_first_aid_certificate_details': blsDetails,
      'tb_or_ppd_test': haveTBTest,
      'tb_or_ppd_test_details': tbDetails,
      'covid_vaccination': haveCovidVaccination,
      'covid_vaccination_details': covidDetails,
      'is_reupload': isReUpload,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/qualification',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> getPreferences(
    userId,
    yearsOfExperience,
    serveWithSmoker,
    willingToTransportation,
    willingToServeWithPets,
    petsList,
    knownLanguages,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'years_of_experience': yearsOfExperience,
      'serve_with_a_smoker': serveWithSmoker,
      'willing_to_provide_transportation': willingToTransportation,
      'willing_to_serve_with_pets': willingToServeWithPets,
      'pets_list': petsList,
      'known_languages': knownLanguages,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-preferences',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> getPreferencesWebsite(
    token,
    userId,
    yearsOfExperience,
    serveWithSmoker,
    willingToTransportation,
    willingToServeWithPets,
    petsList,
    knownLanguages,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'years_of_experience': yearsOfExperience,
      'serve_with_a_smoker': serveWithSmoker,
      'willing_to_provide_transportation': willingToTransportation,
      'willing_to_serve_with_pets': willingToServeWithPets,
      'pets_list': petsList,
      'known_languages': knownLanguages,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/preferences',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitServices(
    userId,
    services,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'services': services,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-services',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitServicesWebsite(
    token,
    userId,
    services,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'services': services,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/services',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetServicesResponse> getServices() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetServicesResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-services',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetServicesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitBuildProfile(
    userId,
    aboutYou,
    hobbies,
    whyLoveBeingCaregiver,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'about_you': aboutYou,
      'hobbies': hobbies,
      'why_love_being_caregiver': whyLoveBeingCaregiver,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-profile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitBuildProfileWebsite(
    token,
    userId,
    aboutYou,
    hobbies,
    whyLoveBeingCaregiver,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'about_you': aboutYou,
      'hobbies': hobbies,
      'why_love_being_caregiver': whyLoveBeingCaregiver,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/profile',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitAccountDetails(
    userId,
    accountHolderName,
    routingNumber,
    accountNumber,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'account_holder_name': accountHolderName,
      'routing_number': routingNumber,
      'account_number': accountNumber,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-acc-details',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitAccountDetailsWebsite(
    token,
    userId,
    accountHolderName,
    routingNumber,
    accountNumber,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'account_holder_name': accountHolderName,
      'routing_number': routingNumber,
      'account_number': accountNumber,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/acc-details',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverActiveOrInactive(
    token,
    userId,
    adminId,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
      'status': status,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/change-caregiver-status',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GenderListResponse> getGenderList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GenderListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-gender',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GenderListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CityListResponse> getCityList(
    stateId,
    pageNo,
    limit,
    searchQuery,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'state_id': stateId,
      r'page': pageNo,
      r'limit': limit,
      r'search_term': searchQuery,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CityListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-cities?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CityListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<StateListResponse> getStateList(
    pageNo,
    limit,
    searchQuery,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': pageNo,
      r'limit': limit,
      r'search_term': searchQuery,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<StateListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-states?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = StateListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AlertResponse> getAlerts(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user_id': userId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AlertResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/dashboard-alerts?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AlertResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DocumentListResponse> getDocumentsList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DocumentListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-documents',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DocumentListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RelationResponse> getRelationList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RelationResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-relationships',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RelationResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitReference(
    userId,
    referenceList,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'references': referenceList,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-references',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> submitReferenceWebsite(
    token,
    userId,
    referenceList,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'references': referenceList,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/care-giver/references',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PetListResponse> getPetList(searchQuery) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'search_term': searchQuery};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PetListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-pets?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PetListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LanguageListResponse> getLanguageList(
    pageNo,
    limit,
    searchQuery,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': pageNo,
      r'limit': limit,
      r'search_term': searchQuery,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LanguageListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-languages?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LanguageListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginResponse> login(
    email,
    password,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'password': password,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GenerateOtpResponse> generateOtp(
    userId,
    phoneNumber,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'phone_number': phoneNumber,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GenerateOtpResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/generate-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GenerateOtpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyOtpResponse> verifyOtp(
    userId,
    type,
    otp,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'type': type,
      'otp': otp,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyOtpResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/verify-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyOtpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ResendOTPResponse> resendOTP(
    userId,
    type,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'type': type,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ResendOTPResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/resend-otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ResendOTPResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SignUpResponse> signup(
    email,
    password,
    firstName,
    lastName,
    mobileNumber,
    deviceToken,
    profilePic,
    deviceType,
    userType,
    isSocialLogin,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'email': email,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
      'mobile_number': mobileNumber,
      'device_token': deviceToken,
      'profile_pic': profilePic,
      'device_type': deviceType,
      'user_type': userType,
      'is_social_login': isSocialLogin,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SignUpResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/sign-up',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SignUpResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<YearsOfExperienceResponse> getYearsOfExp() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<YearsOfExperienceResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-years',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = YearsOfExperienceResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CareGiverServiceListResponse> getCareGiverServiceList(
    token,
    userId,
    page,
    limit,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CareGiverServiceListResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-get-services',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CareGiverServiceListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CareGiverEarningsListResponse> getCareGiverEarningList(
    token,
    userId,
    page,
    limit,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CareGiverEarningsListResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-get-earnings',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CareGiverEarningsListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CareGiverServiceRequestListResponse> getCareGiverRequestList(
    token,
    userId,
    page,
    limit,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CareGiverServiceRequestListResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/admin-cg-get-service-requests',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CareGiverServiceRequestListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> addRoleUpdateRole(
    token,
    userId,
    role,
    roleId,
    moduleID,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'role': role,
      'role_id': roleId,
      'assigned_modules': moduleID,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/add-role',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ModuleResponse> getModules(
    token,
    userId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'user_id': userId};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ModuleResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-modules',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ModuleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> deleteRole(
    token,
    userId,
    roleId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'role_id': roleId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/delete-role',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ViewRoleResponse> viewRole(
    token,
    userId,
    roleId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'role_id': roleId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ViewRoleResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/view-role',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ViewRoleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetRoleResponse> getRoles(
    token,
    userId,
    page,
    limit,
    searchTerm,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GetRoleResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-roles',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetRoleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> addAdmin(
    token,
    userId,
    firstName,
    lastName,
    email,
    mobileNumber,
    roleId,
    profileUrl,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'mobile_number': mobileNumber,
      'user_role_id': roleId,
      'profile_picture': profileUrl,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/super-admin/create-admin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> updateAdmin(
    token,
    userId,
    adminId,
    firstName,
    lastName,
    email,
    mobileNumber,
    roleId,
    profileUrl,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'mobile_number': mobileNumber,
      'role_id': roleId,
      'profile_picture': profileUrl,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/edit-admin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AdminGetResponse> getAdmins(
    token,
    userId,
    page,
    limit,
    statusID,
    roleID,
    searchTerm,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'status_id': statusID,
      'role_id': roleID,
      'search_term': searchTerm,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AdminGetResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-admins',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AdminGetResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> deleteAdmin(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/delete-admin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AdminViewResponse> viewAdmin(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AdminViewResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/view-admin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AdminViewResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> notifyPendingDocument(
    token,
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/notify-pending-docs-cg',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> changeAdminStatus(
    token,
    userId,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'status': status,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/super-admin/change-admin-status',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VerifyResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceRequestResponse> getPendingRequests(
    token,
    userId,
    page,
    limit,
    filterId,
    searchTerm,
    serviceId,
    fromDate,
    toDate,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'filter_id': filterId,
      'search_term': searchTerm,
      'service_id': serviceId,
      'from_date': fromDate,
      'to_date': toDate,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceRequestResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/pending-service-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceRequestResponse> getCompletedRequests(
    token,
    userId,
    page,
    limit,
    searchTerm,
    serviceId,
    fromDate,
    toDate,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'service_id': serviceId,
      'from_date': fromDate,
      'to_date': toDate,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceRequestResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/completed-service-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceRequestResponse> getCancelled(
    token,
    userId,
    page,
    limit,
    searchTerm,
    serviceId,
    fromDate,
    toDate,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'service_id': serviceId,
      'from_date': fromDate,
      'to_date': toDate,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceRequestResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/cancelled-service-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceRequestResponse> getUpcomingRequests(
    token,
    userId,
    page,
    limit,
    searchTerm,
    serviceId,
    fromDate,
    toDate,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'service_id': serviceId,
      'from_date': fromDate,
      'to_date': toDate,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceRequestResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/upcoming-service-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceRequestResponse> getOngoingRequests(
    token,
    userId,
    page,
    limit,
    searchTerm,
    serviceId,
    fromDate,
    toDate,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'service_id': serviceId,
      'from_date': fromDate,
      'to_date': toDate,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceRequestResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/ongoing-service-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceRequestResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceRequestListResponseModel> getServiceRequests(
    token,
    userId,
    serviceId,
    page,
    limit,
    searchTerm,
    statusFilterId,
    fromDate,
    toDate,
    dateFilterId,
    clientId,
    caregiverId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'service_id': serviceId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'status_filter': statusFilterId,
      'from_date': fromDate,
      'to_date': toDate,
      'filter_id': dateFilterId,
      'client_id': clientId,
      'caregiver_id': caregiverId,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceRequestListResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/service-request-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceRequestListResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceDetailsResponseModel> getServiceDetails(
    token,
    userId,
    serviceId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'service_id': serviceId,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceDetailsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/service-info',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceDetailsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ServiceStatusResponseModel> getServiceStatus() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ServiceStatusResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-service-status',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ServiceStatusResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetFiltersResponse> getFilters() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GetFiltersResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-filters',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetFiltersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TransactionListResponse> getTransactions(
    token,
    userId,
    page,
    limit,
    searchTerm,
    filterId,
    clientId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'filter_id': filterId,
      'client_id': clientId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TransactionListResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-transactions',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TransactionListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TransactionDetailsResponse> getTransactionDetails(
    token,
    serviceId,
    transactionId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'service_id': serviceId,
      'transaction_id': transactionId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<TransactionDetailsResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/transaction-details',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = TransactionDetailsResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RescheduleResponse> serviceReschedule(
    token,
    rescheduleParams,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(rescheduleParams.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RescheduleResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/reschedule-service',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RescheduleResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> assignCareGiver(
    token,
    rescheduleParams,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(rescheduleParams.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/assign-caregiver',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> startService(
    token,
    userId,
    serviceId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'service_id': serviceId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/start-service',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponseUse> cancelServiceRequest(
    token,
    userId,
    serviceId,
    description,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'service_id': serviceId,
      'description': description,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponseUse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/cancel-service',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponseUse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DashboardResponse> getDashboardData(
    token,
    userId,
    year,
    fromDate,
    toDate,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {
      'user_id': userId,
      'year': year,
      'from_date': fromDate,
      'to_date': toDate,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DashboardResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/dashboard',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DashboardResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserListResponse> getUser(
    userId,
    page,
    limit,
    searchTerm,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'status': status,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserListResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-clients',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserDetailResponse> getUserDetails(
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserDetailResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-clients-by-id',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> changeClientStatus(
    userId,
    adminId,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
      'status': status,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/change-client-status',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FaqListResponseModel> getFaqList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FaqListResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-faqs',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FaqListResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FaqDetailsResponseModel> getFaqDetails(itemId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'_id': itemId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FaqDetailsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-faq',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FaqDetailsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> deleteFaq(faqId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'_id': faqId};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/delete-faq',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> updateFaqDetails(
    itemId,
    question,
    answer,
    status,
    forClient,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      '_id': itemId,
      'question': question,
      'answer': answer,
      'status': status,
      'forClient': forClient,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/update-faq',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> createFaqDetails(
    question,
    answer,
    status,
    forClient,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'question': question,
      'answer': answer,
      'status': status,
      'forClient': forClient,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/create-faq',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SubProfileDetailResponse> getSubProfileDetails(
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SubProfileDetailResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-subprofile-detail',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SubProfileDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ComplaintsListResponseModel> getComplaints(
    userId,
    page,
    limit,
    searchTerm,
    status,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'status': status,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ComplaintsListResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-complaints',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ComplaintsListResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ClientServiceResponse> getClientService(
    userId,
    adminId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'admin_id': adminId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientServiceResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/client-service-view',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientServiceResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ComplaintDetailsResponseModel> getComplaintDetails(complaintId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'complaint_id': complaintId};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ComplaintDetailsResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-complaints-by-id',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ComplaintDetailsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> updateComplaint(
    adminId,
    complaintId,
    status,
    comment,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'admin_id': adminId,
      'complaint_id': complaintId,
      'status': status,
      'comment': comment,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/update-complaint',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetServiceResponseModel> viewService(
    adminId,
    complaintId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': adminId,
      'service_id': complaintId,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetServiceResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/view-service',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetServiceResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SubscriptionModel> getSubscribedClients(
    userId,
    page,
    limit,
    searchTerm,
    startDate,
    endDate,
    status,
    subscriptionType,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
      'start_date': startDate,
      'end_date': endDate,
      'status': status,
      'subscription_type': subscriptionType,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SubscriptionModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-subscribed-clients',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SubscriptionModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VideoManagementResponse> getGeneralSettings(userId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'user_id': userId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VideoManagementResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-general-settings?',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VideoManagementResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> addVideo(
    adminId,
    settingsId,
    title,
    description,
    attachment,
    userType,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'admin_id': adminId,
      'settings_id': settingsId,
      'title': title,
      'description': description,
      'attachment': attachment,
      'user_type': userType,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/add-general-settings',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> deleteGeneralSettings(
    adminId,
    settingsId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = {
      'admin_id': adminId,
      'settings_id': settingsId,
    };
    _data.removeWhere((k, v) => v == null);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/delete-general-settings',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ClientReportResponse> getClientReport(
    userId,
    roleId,
    filterId,
    year,
    month,
    fromDate,
    toDate,
    region,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'role_id': roleId,
      'filter_id': filterId,
      'year': year,
      'month': month,
      'from_date': fromDate,
      'to_date': toDate,
      'region': region,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientReportResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-churn-rate',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientReportResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RegionListResponse> getRegions() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RegionListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/common-data/get-regions',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RegionListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<InactiveCountResponse> getInactiveCountReport(
    userId,
    roleId,
    filterId,
    year,
    month,
    fromDate,
    toDate,
    region,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'role_id': roleId,
      'filter_id': filterId,
      'year': year,
      'month': month,
      'from_date': fromDate,
      'to_date': toDate,
      'region': region,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InactiveCountResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-inactive-count',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InactiveCountResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ClientReportUserListResponse> getUserListResponse(
    userId,
    roleId,
    year,
    month,
    fromDate,
    toDate,
    region,
    page,
    limit,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'role_id': roleId,
      'year': year,
      'month': month,
      'from_date': fromDate,
      'to_date': toDate,
      'region': region,
      'page': page,
      'limit': limit,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ClientReportUserListResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-user-list',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ClientReportUserListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> createPage(
    title,
    description,
    pageFor,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'title': title,
      'description': description,
      'page_for': pageFor,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/create-page',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetPagesResponse> getPages() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GetPagesResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-pages',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetPagesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> updatePage(
    userId,
    id,
    title,
    description,
    pageFor,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'id': id,
      'title': title,
      'description': description,
      'page_for': pageFor,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/update-page',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> deletePage(id) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'id': id};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/delete-page',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ForgotPassword> forgotPassword(email) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'email': email};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ForgotPassword>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/forgotpassword',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ForgotPassword.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> resetPassword(
    password,
    userId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'password': password,
      'user_id': userId,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/update-password',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> verifyEmail(
    otp,
    userId,
    type,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'otp': otp,
      'user_id': userId,
      'type': type,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/forgotpassword/verify-Otp',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UpcomingBirthdayResponse> upcomingBirthdays(
    userId,
    type,
    page,
    limit,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'type': type,
      'page': page,
      'limit': limit,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UpcomingBirthdayResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/caregivers-birthday-today',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UpcomingBirthdayResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommonResponse> sendGift(
    userId,
    subject,
    body,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'subject': subject,
      'body': body,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CommonResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/send-birthday-wish',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommonResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SubClientResponse> subClients(
    userId,
    page,
    limit,
    searchTerm,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'page': page,
      'limit': limit,
      'search_term': searchTerm,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<SubClientResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/admin/get-sub-clients',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SubClientResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
