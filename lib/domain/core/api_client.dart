import 'dart:async';

import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';

import '../../core/config/environment.dart';
import '../caregiver_verification/model/reject_params.dart';
import '../caregivers/model/caregiver_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) {
    dio.options = BaseOptions(
      receiveTimeout: 5000,
      connectTimeout: 5000,
    );

    if (!kReleaseMode) {
      dio.interceptors.add(PrettyDioLogger(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 200));
    }

    return _ApiClient(dio, baseUrl: Environment().config?.apiHost);
  }

  @POST("/get-care-givers")
  Future<CareGiverResponse> getCareGivers(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('page') int page,
    @Field('limit') int limit,
    @Field('type') int type,
    @Field('search_term') String? searchTerm,
    @Field('filter_id') int? filterId,
  );

  @POST("/get-caregiver-verification")
  Future<CaregiverVerificationResponse> getCareGiverVerificationData(
      @Header("Authorization") String token, @Field('user_id') String userId);

  @POST("/caregiver-background-verify")
  Future<VerifyResponse> careGiverBackgroundVerify(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('status') int status,
    @Field('reject_reason') String? reason,
  );

  @POST("/caregiver-certificate-verification")
  Future<VerifyResponse> careGiverCertificateApprove(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') int status);

  @POST("/caregiver-training-verification")
  Future<VerifyResponse> careGiverTrainingVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') bool status);

  @POST("/reject-qualification-document")
  Future<VerifyResponse> careGiverCertificateReject(
      @Header("Authorization") String token,
      @Body() RejectionParams rejectionParams);
}
