import 'dart:async';

import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/services/models/get_service_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/services/models/service_list_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';

import '../../core/config/environment.dart';
import '../../presentation/caregiver_creation/models/caregiver_creation_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/document_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/gender_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/personal_details_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/state_list_reponse.dart';
import '../../presentation/on_boarding/modules/preference/models/get_preference_response.dart';
import '../../presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import '../../presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_response.dart';
import '../caregiver_verification/model/reject_params.dart';
import '../caregivers/model/caregiver_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient() {
    Dio dio = Dio();
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

  @POST("/admin/get-care-givers")
  Future<CareGiverResponse> getCareGivers(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('type') int type,
      @Field('search_term') String? searchTerm,
      @Field('filter_id') int? filterId);

  @POST("/admin/get-caregiver-verification")
  Future<CaregiverVerificationResponse> getCareGiverVerificationData(
      @Header("Authorization") String token, @Field('user_id') String userId);

  @POST("/admin/caregiver-background-verify")
  Future<VerifyResponse> careGiverBackgroundVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') int status,
      @Field('reject_reason') String? reason);

  @POST("/admin/caregiver-certificate-verification")
  Future<VerifyResponse> careGiverCertificateApprove(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') int status);

  @POST("/admin/caregiver-training-verification")
  Future<VerifyResponse> careGiverTrainingVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') bool status);

  @POST("/admin/reject-qualification-document")
  Future<VerifyResponse> careGiverCertificateReject(
      @Header("Authorization") String token,
      @Body() RejectionParams rejectionParams);

  @POST("/admin/caregiver-start-training")
  Future<VerifyResponse> careGiverSendTrainingRequest(
      @Header("Authorization") String token, @Field('user_id') String userId);

  @POST("/admin/get-care-giver-profile")
  Future<CaregiverProfileResponse> getCareGiverProfile(
      @Header("Authorization") String token, @Field('user_id') String userId);

  @POST("/admin/caregiver-intervie-verification")
  Future<VerifyResponse> careGiverInterViewVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') bool status);

  @POST("/admin/get-care-giver-by-id")
  Future<CareGiverDetailResponse> getCareGiverDetail(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
  );

  @POST("/admin/admin-create-caregiver")
  Future<CaregiverCreationResponse> createCaregiver(
    @Field('first_name') String firstName,
    @Field('last_name') String lastName,
    @Field('mobile_number') String mobileNo,
    @Field('email') String email,
  );

  @POST("/admin/admin-cg-personal-details")
  Future<PersonalDetailsResponse> getPersonalDetails(
    @Field('user_id') String userId,
    @Field('dob') String dob,
    @Field('gender_id') int genderId,
    @Field('street') String street,
    @Field('city_id') String cityId,
    @Field('state_id') String stateId,
    @Field('latitude') double latitude,
    @Field('longitude') double longitude,
    @Field('zip') String zip,
    @Field('address') String address,
    @Field('social_security_number') String socialSecurityNumber,
    @Field('document_id') String documentId,
    @Field('document_number') String documentNumber,
    @Field('expiry_date') String expiryDate,
    @Field('document') List<String> document,
    @Field('profile_picture') String profilePicture,
  );

  @POST("/admin/admin-cg-qualification")
  Future<CommentsAndReviewResponseModel> getQualifications(
    @Field('user_id') String userId,
    @Field('have_hha_registration') bool haveHHARegistration,
    @Field('have_details') HhaDetails hhaDetails,
    @Field('bls_or_first_aid_certificate') bool haveBLSCertificate,
    @Field('bls_or_first_aid_certificate_details')
    BlsOrFirstAidCertificateDetails blsDetails,
    @Field('tb_or_ppd_test') bool haveTBTest,
    @Field('tb_or_ppd_test_details') TbOrPpdTestDetails tbDetails,
    @Field('covid_vaccination') bool haveCovidVaccination,
    @Field('covid_vaccination_details') CovidVaccinationDetails covidDetails,
  );

  @POST("/admin/admin-cg-preferences")
  Future<GetPreferenceResponse> getPreferences(
    @Field('user_id') String userId,
    @Field('years_of_experience') String yearsOfExperience,
    @Field('serve_with_a_smoker') bool serveWithSmoker,
    @Field('willing_to_provide_transportation') bool willingToTransportation,
    @Field('willing_to_serve_with_pets') bool willingToServeWithPets,
    @Field('pets_list') List<String> petsList,
    @Field('known_languages') List<String> knownLanguages,
  );

  @POST("/admin/admin-cg-services")
  Future<GetServiceResponse> getServices(
    @Field('user_id') String userId,
    @Field('services') ServicesModel services,
  );

  @POST("/admin/change-caregiver-status")
  Future<VerifyResponse> careGiverActiveOrInactive(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') bool status);

  @GET("/common-data/get-gender")
  Future<GenderListResponse> getGenderList();

  @GET("/common-data/get-cities?")
  Future<CityListResponse> getCityList(
    @Query("state_id") String stateId,
    @Query("page") String pageNo,
    @Query("limit") String limit,
    @Query("search_term") String searchQuery,
  );

  @GET("/common-data/get-states?")
  Future<StateListReponse> getStateList(
    @Query("page") String pageNo,
    @Query("limit") String limit,
    @Query("search_term") String searchQuery,
  );

  @GET("/common-data/get-documents")
  Future<DocumentListResponse> getDocumentsList();
}
