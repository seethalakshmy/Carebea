import 'dart:async';

import 'package:admin_580_tech/domain/admin_creation/model/admin_view_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_earning_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_service_request_list_response.dart';
import 'package:admin_580_tech/domain/caregiver_profile/model/caregiver_profile_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/caregiver_verification_response.dart';
import 'package:admin_580_tech/domain/caregiver_verification/model/verify_response.dart';
import 'package:admin_580_tech/domain/common_response/common_response.dart';
import 'package:admin_580_tech/domain/dashboard/model/alert_response.dart';
import 'package:admin_580_tech/domain/dashboard/model/dashboard_response.dart';
import 'package:admin_580_tech/domain/email_otp_verification/models/generate_otp_response.dart';
import 'package:admin_580_tech/domain/login/login_response.dart';
import 'package:admin_580_tech/domain/roles/model/get_role_response.dart';
import 'package:admin_580_tech/domain/service_request_management/model/reschedule_params.dart';
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
import '../../presentation/on_boarding/modules/preference/models/language_list_response.dart';
import '../../presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import '../../presentation/on_boarding/modules/reference/models/relation_response.dart';
import '../admins/model/admin_get_response.dart';
import '../caregiver_verification/model/reject_params.dart';
import '../caregivers/model/caregiver_response.dart';
import '../email_otp_verification/models/verify_otp_response.dart';
import '../on_boarding/models/common_response.dart';
import '../on_boarding/models/preferences/pet_list_response.dart';
import '../on_boarding/models/preferences/preference_request_model.dart';
import '../on_boarding/models/preferences/years_of_experience_response.dart';
import '../on_boarding/models/services/get_services_response.dart';
import '../on_boarding/models/services/service_request_model.dart';
import '../role_creation/model/module_response.dart';
import '../role_creation/model/view_role_response.dart';
import '../service_request_management/model/assign_caregiver_params.dart';
import '../service_request_management/model/reschedule_response.dart';
import '../service_request_management/model/service_request_response.dart';
import '../signup/signup_response.dart';
import '../transaction_management/model/get_filters_response.dart';
import '../transaction_management/model/transaction_details_response.dart';
import '../transaction_management/model/transaction_list_response.dart';

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
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId);

  @POST("/admin/caregiver-background-verify")
  Future<VerifyResponse> careGiverBackgroundVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') int status,
      @Field('admin_id') String adminId,
      @Field('reject_reason') String? reason);

  @POST("/admin/caregiver-certificate-verification")
  Future<VerifyResponse> careGiverCertificateApprove(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId,
      @Field('status') int status);

  @POST("/admin/caregiver-training-verification")
  Future<VerifyResponse> careGiverTrainingVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId,
      @Field('status') bool status);

  @POST("/admin/reject-qualification-document")
  Future<VerifyResponse> careGiverCertificateReject(
      @Header("Authorization") String token,
      @Body() RejectionParams rejectionParams);

  @POST("/admin/caregiver-start-training")
  Future<VerifyResponse> careGiverSendTrainingRequest(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId);

  @POST("/admin/get-care-giver-profile")
  Future<CaregiverProfileResponse> getCareGiverProfile(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId);

  @POST("/admin/caregiver-interview-verification")
  Future<VerifyResponse> careGiverInterViewVerify(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId,
      @Field('status') int status);

  @POST("/admin/get-care-giver-by-id")
  Future<CareGiverDetailResponse> getCareGiverDetail(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('admin_id') String adminId,
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

  @POST("/care-giver/personal-details")
  Future<PersonalDetailsResponse> getPersonalDetailsWebsite(
    @Header("Authorization") String token,
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
  Future<CommonResponse> getQualifications(
    @Field('user_id') String userId,
    @Field('have_hha_registration') bool haveHHARegistration,
    @Field('hha_details') HhaDetails hhaDetails,
    @Field('bls_or_first_aid_certificate') bool haveBLSCertificate,
    @Field('bls_or_first_aid_certificate_details')
    BlsOrFirstAidCertificateDetails blsDetails,
    @Field('tb_or_ppd_test') bool haveTBTest,
    @Field('tb_or_ppd_test_details') TbOrPpdTestDetails tbDetails,
    @Field('covid_vaccination') bool haveCovidVaccination,
    @Field('covid_vaccination_details') CovidVaccinationDetails covidDetails,
    @Field('is_reupload') bool isReUpload,
  );

  @POST("/care-giver/qualification")
  Future<CommonResponse> getQualificationsWebsite(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('have_hha_registration') bool haveHHARegistration,
    @Field('hha_details') HhaDetails hhaDetails,
    @Field('bls_or_first_aid_certificate') bool haveBLSCertificate,
    @Field('bls_or_first_aid_certificate_details')
    BlsOrFirstAidCertificateDetails blsDetails,
    @Field('tb_or_ppd_test') bool haveTBTest,
    @Field('tb_or_ppd_test_details') TbOrPpdTestDetails tbDetails,
    @Field('covid_vaccination') bool haveCovidVaccination,
    @Field('covid_vaccination_details') CovidVaccinationDetails covidDetails,
    @Field('is_reupload') bool isReUpload,
  );

  @POST("/admin/admin-cg-preferences")
  Future<CommonResponse> getPreferences(
    @Field('user_id') String userId,
    @Field('years_of_experience') String yearsOfExperience,
    @Field('serve_with_a_smoker') bool serveWithSmoker,
    @Field('willing_to_provide_transportation') bool willingToTransportation,
    @Field('willing_to_serve_with_pets') bool willingToServeWithPets,
    @Field('pets_list') List<PetsList> petsList,
    @Field('known_languages') List<String> knownLanguages,
  );

  @POST("/care-giver/preferences")
  Future<CommonResponse> getPreferencesWebsite(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('years_of_experience') String yearsOfExperience,
    @Field('serve_with_a_smoker') bool serveWithSmoker,
    @Field('willing_to_provide_transportation') bool willingToTransportation,
    @Field('willing_to_serve_with_pets') bool willingToServeWithPets,
    @Field('pets_list') List<PetsList> petsList,
    @Field('known_languages') List<String> knownLanguages,
  );

  @POST("/admin/admin-cg-services")
  Future<CommonResponse> submitServices(
    @Field('user_id') String userId,
    @Field('services') ServicesRequest services,
  );

  @POST("/care-giver/services")
  Future<CommonResponse> submitServicesWebsite(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('services') ServicesRequest services,
  );

  @GET("/common-data/get-services")
  Future<GetServicesResponse> getServices();

  @POST("/admin/admin-cg-profile")
  Future<CommonResponse> submitBuildProfile(
    @Field('user_id') String userId,
    @Field('about_you') String aboutYou,
    @Field('hobbies') String hobbies,
    @Field('why_love_being_caregiver') String whyLoveBeingCaregiver,
  );

  @POST("/care-giver/profile")
  Future<CommonResponse> submitBuildProfileWebsite(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('about_you') String aboutYou,
    @Field('hobbies') String hobbies,
    @Field('why_love_being_caregiver') String whyLoveBeingCaregiver,
  );

  @POST("/admin/admin-cg-acc-details")
  Future<CommonResponse> submitAccountDetails(
    @Field('user_id') String userId,
    @Field('account_holder_name') String accountHolderName,
    @Field('routing_number') String routingNumber,
    @Field('account_number') String accountNumber,
  );

  @POST("/care-giver/acc-details")
  Future<CommonResponse> submitAccountDetailsWebsite(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('account_holder_name') String accountHolderName,
    @Field('routing_number') String routingNumber,
    @Field('account_number') String accountNumber,
  );

  @POST("/admin/change-caregiver-status")
  Future<VerifyResponse> careGiverActiveOrInactive(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId,
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

  @GET("/admin/dashboard-alerts?")
  Future<AlertResponse> getAlerts(
    @Query("user_id") String userId,
  );

  @GET("/common-data/get-documents")
  Future<DocumentListResponse> getDocumentsList();

  @GET("/common-data/get-relationships")
  Future<RelationResponse> getRelationList();

  @POST("/admin/admin-cg-references")
  Future<CommonResponse> submitReference(
      @Field('user_id') String userId, @Field('references') List referenceList);

  @POST("/care-giver/references")
  Future<CommonResponse> submitReferenceWebsite(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('references') List referenceList);

  @GET("/common-data/get-pets?")
  Future<PetListResponse> getPetList(@Query("search_term") String searchQuery);

  @GET("/common-data/get-languages?")
  Future<LanguageListResponse> getLanguageList(
    @Query("page") String pageNo,
    @Query("limit") String limit,
    @Query("search_term") String searchQuery,
  );

  @POST("/admin/login")
  Future<LoginResponse> login(
    @Field('email') String email,
    @Field('password') String password,
  );

  @POST("/generate-otp")
  Future<GenerateOtpResponse> generateOtp(
    @Field('user_id') String userId,
    @Field('phone_number') String phoneNumber,
  );

  @POST("/verify-otp")
  Future<VerifyOtpResponse> verifyOtp(
    @Field('user_id') String userId,
    @Field('type') int type,
    @Field('otp') String otp,
  );

  @POST("/sign-up")
  Future<SignUpResponse> signup(
    @Field('email') String email,
    @Field('password') String password,
    @Field('first_name') String firstName,
    @Field('last_name') String lastName,
    @Field('mobile_number') String mobileNumber,
    @Field('device_token') String deviceToken,
    @Field('profile_pic') String profilePic,
    @Field('device_type') String deviceType,
    @Field('user_type') int userType,
    @Field('is_social_login') bool isSocialLogin,
  );

  @GET("/common-data/get-years")
  Future<YearsOfExperienceResponse> getYearsOfExp();

  @POST("/admin/admin-cg-get-services")
  Future<CareGiverServiceListResponse> getCareGiverServiceList(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @POST("/admin/admin-cg-get-earnings")
  Future<CareGiverEarningsListResponse> getCareGiverEarningList(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @POST("/admin/admin-cg-get-service-requests")
  Future<CareGiverServiceRequestListResponse> getCareGiverRequestList(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @POST("/admin/add-role")
  Future<CommonResponseUse> addRoleUpdateRole(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('role') String role,
    @Field('role_id') String? roleId,
    @Field('assigned_modules') List<Module> moduleID,
  );

  @POST("/admin/get-modules")
  Future<ModuleResponse> getModules(
      @Header("Authorization") String token, @Field('user_id') String userId);

  @POST("/admin/delete-role")
  Future<CommonResponseUse> deleteRole(@Header("Authorization") String token,
      @Field('user_id') String userId, @Field('role_id') String roleId);

  @POST("/admin/view-role")
  Future<ViewRoleResponse> viewRole(@Header("Authorization") String token,
      @Field('user_id') String userId, @Field('role_id') String roleId);

  @POST("/admin/get-roles")
  Future<GetRoleResponse> getRoles(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int? page,
      @Field('limit') int? limit,
      @Field('search_term') String? searchTerm);

  @POST("/super-admin/create-admin")
  Future<CommonResponseUse> addAdmin(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('first_name') String firstName,
      @Field('last_name') String lastName,
      @Field('email') String email,
      @Field('mobile_number') String? mobileNumber,
      @Field('user_role_id') String? roleId,
      @Field('profile_picture') String? profileUrl);

  @POST("/admin/edit-admin")
  Future<CommonResponseUse> updateAdmin(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId,
      @Field('first_name') String firstName,
      @Field('last_name') String lastName,
      @Field('email') String email,
      @Field('mobile_number') String? mobileNumber,
      @Field('role_id') String? roleId,
      @Field('profile_picture') String? profileUrl);

  @POST("/admin/get-admins")
  Future<AdminGetResponse> getAdmins(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('status_id') String? statusID,
      @Field('role_id') String? roleID,
      @Field('search_term') String? searchTerm);

  @POST("/admin/delete-admin")
  Future<CommonResponseUse> deleteAdmin(@Header("Authorization") String token,
      @Field('user_id') String userId, @Field('admin_id') String? adminId);

  @POST("/admin/view-admin")
  Future<AdminViewResponse> viewAdmin(@Header("Authorization") String token,
      @Field('user_id') String userId, @Field('admin_id') String adminId);

  @POST("/admin/notify-pending-docs-cg")
  Future<CommonResponseUse> notifyPendingDocument(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('admin_id') String adminId);

  @POST("/super-admin/change-admin-status")
  Future<VerifyResponse> changeAdminStatus(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('status') String status);

  @POST("/admin/pending-service-list")
  Future<ServiceRequestResponse> getPendingRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('filter_id') int filterId);

  @POST("/admin/completed-service-list")
  Future<ServiceRequestResponse> getCompletedRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @POST("/admin/cancelled-service-list")
  Future<ServiceRequestResponse> getCancelled(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @POST("/admin/upcoming-service-list")
  Future<ServiceRequestResponse> getUpcomingRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @POST("/admin/ongoing-service-list")
  Future<ServiceRequestResponse> getOngoingRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit);

  @GET("/common-data/get-filters")
  Future<GetFiltersResponse> getFilters();

  @POST("/admin/get-transactions")
  Future<TransactionListResponse> getTransactions(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') String page,
      @Field('limit') int limit,
      @Field('search_term') String searchTerm,
      @Field('filter_id') int filterId);

  @POST("/admin/transaction-details")
  Future<TransactionDetailsResponse> getTransactionDetails(
      @Header("Authorization") String token,
      @Field('transaction_id') String transactionId);

  @POST("/admin/reschedule-service")
  Future<RescheduleResponse> serviceReschedule(
      @Header("Authorization") String token,
      @Body() RescheduleParams rescheduleParams);

  @POST("/admin/assign-caregiver")
  Future<CommonResponseUse> assignCareGiver(
      @Header("Authorization") String token,
      @Body() AssignCareGiverParams rescheduleParams);

  @POST("/admin/start-service")
  Future<CommonResponseUse> startService(@Header("Authorization") String token,
      @Field('user_id') String userId, @Field('service_id') String serviceId);

  @POST("/admin/cancel-service")
  Future<CommonResponseUse> cancelServiceRequest(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('service_id') String serviceId,
      @Field('description') String description);

  @POST("/admin/dashboard")
  Future<DashboardResponse> getDashboardData(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('year') String year,
      @Field('from_date') String fromDate,
      @Field('to_date') String toDate);
}
