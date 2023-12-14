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
import 'package:admin_580_tech/domain/subscription/model/subscription_model.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
import '../client_report/model/client_report_response.dart';
import '../client_report/model/client_report_user_list_response.dart';
import '../client_report/model/inactive_count_response.dart';
import '../complaint_details/models/complaint_details_response_model.dart';
import '../complaint_details/models/get_service_response_model.dart';
import '../complaints/model/complaints_list_response_model.dart';
import '../email_otp_verification/models/verify_otp_response.dart';
import '../faq/models/faq_list_response_model.dart';
import '../faq_creation/models/faq_details_response_model.dart';
import '../master/model/region_list_response.dart';
import '../on_boarding/models/common_response.dart';
import '../on_boarding/models/preferences/pet_list_response.dart';
import '../on_boarding/models/preferences/years_of_experience_response.dart';
import '../on_boarding/models/resend_otp_response.dart';
import '../on_boarding/models/services/get_services_response.dart';
import '../page/model/get_pages_response.dart';
import '../role_creation/model/module_response.dart';
import '../role_creation/model/view_role_response.dart';
import '../service_request_management/model/assign_caregiver_params.dart';
import '../service_request_management/model/reschedule_response.dart';
import '../service_request_management/model/service_details_response_model.dart';
import '../service_request_management/model/service_request_list_response_model.dart';
import '../service_request_management/model/service_request_response.dart';
import '../service_request_management/model/service_status_response_model.dart';
import '../signup/signup_response.dart';
import '../subProfile_details/model/sub_profile_detail_response.dart';
import '../transaction_management/model/get_filters_response.dart';
import '../transaction_management/model/transaction_details_response.dart';
import '../transaction_management/model/transaction_list_response.dart';
import '../user_management/model/user_list_response.dart';
import '../user_management_detail/model/client_service_response.dart';
import '../video_management/models/video_management_response.dart';

part 'api_client.g.dart';

@RestApi(parser: Parser.JsonSerializable)
@JsonSerializable(includeIfNull: true)
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
  Future<CommonResponse> careGiverCertificateReject(
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
    @Field('location_tag') String locationTag,
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

  @POST("/care-giver/agreement")
  Future<CommonResponse> createCareGiverAgreement(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('signature') String signature,
  );

  @GET("/care-giver/agreement")
  Future<CommonResponse> getCareGiverAgreement(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
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
    @Field('pets_list') List<Map<String, dynamic>> petsList,
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
    @Field('pets_list') List<Map<String, dynamic>> petsList,
    @Field('known_languages') List<String> knownLanguages,
  );

  @POST("/admin/admin-cg-services")
  Future<CommonResponse> submitServices(
    @Field('user_id') String userId,
    @Field('services') Map<String, dynamic> services,
  );

  @POST("/care-giver/services")
  Future<CommonResponse> submitServicesWebsite(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('services') Map<String, dynamic> services,
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
  Future<StateListResponse> getStateList(
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

  @POST("/resend-otp")
  Future<ResendOTPResponse> resendOTP(
    @Field('user_id') String userId,
    @Field('type') int type,
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
      @Field('filter_id') int filterId,
      @Field('search_term') String searchTerm,
      @Field('service_id') String serviceId,
      @Field('from_date') String fromDate,
      @Field('to_date') String toDate);

  @POST("/admin/completed-service-list")
  Future<ServiceRequestResponse> getCompletedRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('search_term') String searchTerm,
      @Field('service_id') String serviceId,
      @Field('from_date') String fromDate,
      @Field('to_date') String toDate);

  @POST("/admin/cancelled-service-list")
  Future<ServiceRequestResponse> getCancelled(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('search_term') String searchTerm,
      @Field('service_id') String serviceId,
      @Field('from_date') String fromDate,
      @Field('to_date') String toDate);

  @POST("/admin/upcoming-service-list")
  Future<ServiceRequestResponse> getUpcomingRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('search_term') String searchTerm,
      @Field('service_id') String serviceId,
      @Field('from_date') String fromDate,
      @Field('to_date') String toDate);

  @POST("/admin/ongoing-service-list")
  Future<ServiceRequestResponse> getOngoingRequests(
      @Header("Authorization") String token,
      @Field('user_id') String userId,
      @Field('page') int page,
      @Field('limit') int limit,
      @Field('search_term') String searchTerm,
      @Field('service_id') String serviceId,
      @Field('from_date') String fromDate,
      @Field('to_date') String toDate);

  @POST("/admin/service-request-list")
  Future<ServiceRequestListResponseModel> getServiceRequests(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('service_id') String? serviceId,
    @Field('page') String page,
    @Field('limit') int limit,
    @Field('search_term') String? searchTerm,
    @Field('status_filter') int? statusFilterId,
    @Field('from_date') String? fromDate,
    @Field('to_date') String? toDate,
    @Field('filter_id') int? dateFilterId,
  );

  @POST("/admin/service-info")
  Future<ServiceDetailsResponseModel> getServiceDetails(
    @Header("Authorization") String token,
    @Field('user_id') String userId,
    @Field('service_id') String? serviceId,
  );

  @GET("/common-data/get-service-status")
  Future<ServiceStatusResponseModel> getServiceStatus();

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
      @Field('service_id') String serviceId,
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

  @POST("/admin/get-clients")
  Future<UserListResponse> getUser(
      @Field('user_id') String userId,
      @Field('page') String page,
      @Field('limit') String limit,
      @Field('search_term') String searchTerm,
      @Field('status') bool? status);

  @POST("/admin/get-clients-by-id")
  Future<UserDetailResponse> getUserDetails(
    @Field('user_id') String userId,
    @Field('admin_id') String adminId,
  );

  @POST("/admin/change-client-status")
  Future<CommonResponse> changeClientStatus(
    @Field('user_id') String userId,
    @Field('admin_id') String adminId,
    @Field('status') bool status,
  );

  @GET('/common-data/get-faqs')
  Future<FaqListResponseModel> getFaqList();

  @POST('/common-data/get-faq')
  Future<FaqDetailsResponseModel> getFaqDetails(
    @Field('_id') String itemId,
  );

  @POST('/common-data/delete-faq')
  Future<CommonResponse> deleteFaq(
    @Field('_id') String faqId,
  );

  @POST('/common-data/update-faq')
  Future<CommonResponse> updateFaqDetails(
    @Field('_id') String itemId,
    @Field('question') String question,
    @Field('answer') String answer,
    @Field('status') String status,
    @Field('forClient') bool forClient,
  );

  @POST('/common-data/create-faq')
  Future<CommonResponse> createFaqDetails(
    @Field('question') String question,
    @Field('answer') String answer,
    @Field('status') String status,
    @Field('forClient') bool forClient,
  );

  @POST('/admin/get-subprofile-detail')
  Future<SubProfileDetailResponse> getSubProfileDetails(
    @Field('user_id') String userId,
    @Field('admin_id') String adminId,
  );

  @POST('/admin/get-complaints')
  Future<ComplaintsListResponseModel> getComplaints(
    @Field('user_id') String userId,
    @Field('page') String page,
    @Field('limit') String limit,
    @Field('search_term') String searchTerm,
    @Field('status') int status,
  );

  @POST('/admin/client-service-view')
  Future<ClientServiceResponse> getClientService(
    @Field('user_id') String userId,
    @Field('admin_id') String adminId,
  );

  @POST('/admin/get-complaints-by-id')
  Future<ComplaintDetailsResponseModel> getComplaintDetails(
    @Field('complaint_id') String complaintId,
  );

  @POST('/admin/update-complaint')
  Future<CommonResponse> updateComplaint(
    @Field('admin_id') String adminId,
    @Field('complaint_id') String complaintId,
    @Field('status') int status,
    @Field('comment') String comment,
  );

  @POST('/admin/view-service')
  Future<GetServiceResponseModel> viewService(
    @Field('user_id') String adminId,
    @Field('service_id') String complaintId,
  );

  @POST('/admin/get-subscribed-clients')
  Future<SubscriptionModel> getSubscribedClients(
      @Field('user_id') String userId,
      @Field('page') String page,
      @Field('limit') String limit,
      @Field('search_term') String searchTerm,
      @Field('start_date') String startDate,
      @Field('end_date') String endDate,
      @Field('status') dynamic status,
      @Field('subscription_type') dynamic subscriptionType);

  @GET("/admin/get-general-settings?")
  Future<VideoManagementResponse> getGeneralSettings(
    @Query("user_id") String userId,
  );

  @POST('/admin/add-general-settings')
  Future<CommonResponse> addVideo(
      @Field('admin_id') String adminId,
      @Field('settings_id') String? settingsId,
      @Field('title') String title,
      @Field('description') String description,
      @Field('attachment') String attachment,
      @Field('user_type') int userType);

  @POST('/admin/delete-general-settings')
  Future<CommonResponse> deleteGeneralSettings(
    @Field('admin_id') String adminId,
    @Field('settings_id') String? settingsId,
  );

  @POST('/admin/get-churn-rate')
  Future<ClientReportResponse> getClientReport(
    @Field('user_id') String userId,
    @Field('role_id') String roleId,
    @Field('filter_id') String filterId,
    @Field('year') String year,
    @Field('month') String month,
    @Field('from_date') String fromDate,
    @Field('to_date') String toDate,
    @Field('region') String region,
  );

  @GET("/common-data/get-regions")
  Future<RegionListResponse> getRegions();

  @POST('/admin/get-inactive-count')
  Future<InactiveCountResponse> getInactiveCountReport(
    @Field('user_id') String userId,
    @Field('role_id') String roleId,
    @Field('filter_id') String filterId,
    @Field('year') String year,
    @Field('month') String month,
    @Field('from_date') String fromDate,
    @Field('to_date') String toDate,
    @Field('region') String region,
  );

  @POST('/admin/get-user-list')
  Future<ClientReportUserListResponse> getUserListResponse(
    @Field('user_id') String userId,
    @Field('role_id') String roleId,
    @Field('year') String year,
    @Field('month') String month,
    @Field('from_date') String fromDate,
    @Field('to_date') String toDate,
    @Field('region') String region,
    @Field('page') String page,
    @Field('limit') String limit,
  );

  @POST('/admin/create-page')
  Future<CommonResponse> createPage(
    @Field('title') String title,
    @Field('description') String description,
    @Field('page_for') String pageFor,
  );

  @GET("/admin/get-pages")
  Future<GetPagesResponse> getPages();

  @POST('/admin/update-page')
  Future<CommonResponse> updatePage(
    @Field('user_id') String userId,
    @Field("id") String id,
    @Field('title') String title,
    @Field('description') String description,
    @Field('page_for') String pageFor,
  );

  @POST('/admin/delete-page')
  Future<CommonResponse> deletePage(
    @Field("id") String id,
  );
}
