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
              '/get-care-givers',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CareGiverResponse.fromJson(_result.data!);
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
              '/admin-create-caregiver',
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
              '/admin-cg-personal-details',
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
              '/admin-cg-qualification',
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
              '/admin-cg-preferences',
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
              '/admin-cg-services',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GetServiceResponse.fromJson(_result.data!);
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
