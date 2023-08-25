// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_client.dart';

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
  Future<VerifyResponse> careGiverCertificateReject(
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
        .fetch<Map<String, dynamic>>(_setStreamType<VerifyResponse>(Options(
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
    final value = VerifyResponse.fromJson(_result.data!);
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
              '/admin/caregiver-intervie-verification',
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
  Future<StateListReponse> getStateList(
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
        .fetch<Map<String, dynamic>>(_setStreamType<StateListReponse>(Options(
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
    final value = StateListReponse.fromJson(_result.data!);
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
              '/super-admin/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
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
    transactionId,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'transaction_id': transactionId};
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
