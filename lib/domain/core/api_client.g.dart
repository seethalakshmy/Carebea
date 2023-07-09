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
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'user_id': userId};
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
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'user_id': userId};
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
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'user_id': userId};
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
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = {'user_id': userId};
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
  Future<CommentsAndReviewResponseModel> getQualifications(
    userId,
    haveHHARegistration,
    hhaDetails,
    haveBLSCertificate,
    blsDetails,
    haveTBTest,
    tbDetails,
    haveCovidVaccination,
    covidDetails,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'user_id': userId,
      'have_hha_registration': haveHHARegistration,
      'have_details': hhaDetails,
      'bls_or_first_aid_certificate': haveBLSCertificate,
      'bls_or_first_aid_certificate_details': blsDetails,
      'tb_or_ppd_test': haveTBTest,
      'tb_or_ppd_test_details': tbDetails,
      'covid_vaccination': haveCovidVaccination,
      'covid_vaccination_details': covidDetails,
    };
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommentsAndReviewResponseModel>(Options(
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
    final value = CommentsAndReviewResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetPreferenceResponse> getPreferences(
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
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GetPreferenceResponse>(Options(
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
    final value = GetPreferenceResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GetServiceResponse> getServices(
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
        .fetch<Map<String, dynamic>>(_setStreamType<GetServiceResponse>(Options(
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
    final value = GetServiceResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VerifyResponse> careGiverActiveOrInactive(
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
