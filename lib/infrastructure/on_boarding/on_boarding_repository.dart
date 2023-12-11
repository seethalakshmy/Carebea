import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/reference/models/relation_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/on_boarding/i_on_boarding_repo.dart';
import '../../domain/on_boarding/models/preferences/pet_list_response.dart';
import '../../domain/on_boarding/models/preferences/years_of_experience_response.dart';
import '../../domain/on_boarding/models/services/get_services_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/document_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/gender_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/personal_details_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/state_list_reponse.dart';
import '../../presentation/on_boarding/modules/preference/models/language_list_response.dart';

class OnBoardingRepository implements IOnBoardingRepo {
  ApiClient apiClient = ApiClient();
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();

  @override
  Future<Either<ApiErrorHandler, GenderListResponse>> getGenderList() async {
    try {
      final response = await apiClient.getGenderList();
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CityListResponse>> getCityList({
    required String stateId,
    required String page,
    required String searchKey,
  }) async {
    try {
      final response =
          await apiClient.getCityList(stateId, page, "15", searchKey);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, StateListResponse>> getStateList({
    required String page,
    required String searchKey,
  }) async {
    try {
      final response = await apiClient.getStateList(page, "15", searchKey);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, DocumentListResponse>>
      getDocumentList() async {
    try {
      final response = await apiClient.getDocumentsList();
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, PetListResponse>> getPetList(
      {required String searchKey}) async {
    try {
      final response = await apiClient.getPetList(searchKey);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, LanguageListResponse>> getLanguageList(
      {required String page, required String searchKey}) async {
    try {
      final response = await apiClient.getLanguageList(page, "7100", searchKey);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, PersonalDetailsResponse>>
      personalDetailsSubmit(
          {required String userId,
          required String dob,
          required int genderId,
          required String street,
          required String cityId,
          required String stateId,
          required double latitude,
          required double longitude,
          required String zip,
          required String address,
          required String locationTag,
          required String socialSecurityNo,
          required String documentId,
          required String documentNo,
          required String expiryDate,
          required List<String> documentList,
          required String profilePic}) async {
    try {
      final response = await apiClient.getPersonalDetails(
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
          socialSecurityNo,
          documentId,
          documentNo,
          expiryDate,
          documentList,
          profilePic);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, PersonalDetailsResponse>>
      personalDetailsSubmitWebsite(
          {required String userId,
          required String dob,
          required int genderId,
          required String street,
          required String cityId,
          required String stateId,
          required double latitude,
          required double longitude,
          required String zip,
          required String address,
          required String socialSecurityNo,
          required String documentId,
          required String documentNo,
          required String expiryDate,
          required List<String> documentList,
          required String profilePic}) async {
    try {
      final response = await apiClient.getPersonalDetailsWebsite(
          'Bearer ' + sharedPreffUtil.getAccessToken,
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
          socialSecurityNo,
          documentId,
          documentNo,
          expiryDate,
          documentList,
          profilePic);
      print("accessToken ${sharedPreffUtil.getAccessToken}");

      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> qualificationSubmit(
      {required String userId,
      required bool haveHHARegistration,
      required HhaDetails hhaDetails,
      required bool haveBLSCertificate,
      required BlsOrFirstAidCertificateDetails blsDetails,
      required bool haveTBTest,
      required TbOrPpdTestDetails tbDetails,
      required bool haveCovidVaccination,
      required CovidVaccinationDetails covidDetails,
      required bool isReUpload}) async {
    try {
      final response = await apiClient.getQualifications(
          userId,
          haveHHARegistration,
          hhaDetails,
          haveBLSCertificate,
          blsDetails,
          haveTBTest,
          tbDetails,
          haveCovidVaccination,
          covidDetails,
          isReUpload);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> qualificationSubmitWebsite(
      {required String userId,
      required bool haveHHARegistration,
      required HhaDetails hhaDetails,
      required bool haveBLSCertificate,
      required BlsOrFirstAidCertificateDetails blsDetails,
      required bool haveTBTest,
      required TbOrPpdTestDetails tbDetails,
      required bool haveCovidVaccination,
      required CovidVaccinationDetails covidDetails,
      required bool isReUpload}) async {
    try {
      final response = await apiClient.getQualificationsWebsite(
          "Bearer " + sharedPreffUtil.getAccessToken,
          userId,
          haveHHARegistration,
          hhaDetails,
          haveBLSCertificate,
          blsDetails,
          haveTBTest,
          tbDetails,
          haveCovidVaccination,
          covidDetails,
          isReUpload);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> preferenceSubmit(
      {required String userId,
      required String yearsOfExp,
      required bool serveWithSmoker,
      required bool willingToTransportation,
      required bool willingToServeWithPets,
      required List<Map<String, dynamic>> petsList,
      required List<String> knownLanguages}) async {
    try {
      final response = await apiClient.getPreferences(
          userId,
          yearsOfExp,
          serveWithSmoker,
          willingToTransportation,
          willingToServeWithPets,
          petsList,
          knownLanguages);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> preferenceSubmitWebsite(
      {required String userId,
      required String yearsOfExp,
      required bool serveWithSmoker,
      required bool willingToTransportation,
      required bool willingToServeWithPets,
      required List<Map<String, dynamic>> petsList,
      required List<String> knownLanguages}) async {
    try {
      final response = await apiClient.getPreferencesWebsite(
          'Bearer ' + sharedPreffUtil.getAccessToken,
          userId,
          yearsOfExp,
          serveWithSmoker,
          willingToTransportation,
          willingToServeWithPets,
          petsList,
          knownLanguages);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, YearsOfExperienceResponse>>
      getYearsOfExpResult() async {
    try {
      final response = await apiClient.getYearsOfExp();
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> servicesSubmit(
      {required String userId, required Map<String, dynamic> services}) async {
    try {
      final response = await apiClient.submitServices(userId, services);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> servicesSubmitWebsite(
      {required String userId, required Map<String, dynamic> services}) async {
    try {
      final response = await apiClient.submitServicesWebsite(
          "Bearer " + sharedPreffUtil.getAccessToken, userId, services);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, GetServicesResponse>> getServices() async {
    try {
      final response = await apiClient.getServices();
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> buildProfileSubmit(
      {required String userId,
      required String aboutYou,
      required String hobbies,
      required String whyLoveBeingCaregiver}) async {
    try {
      final response = await apiClient.submitBuildProfile(
          userId, aboutYou, hobbies, whyLoveBeingCaregiver);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> buildProfileSubmitWebsite(
      {required String userId,
      required String aboutYou,
      required String hobbies,
      required String whyLoveBeingCaregiver}) async {
    try {
      final response = await apiClient.submitBuildProfileWebsite(
          'Bearer ' + sharedPreffUtil.getAccessToken,
          userId,
          aboutYou,
          hobbies,
          whyLoveBeingCaregiver);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> accountDetailsSubmit(
      {required String userId,
      required String accountHolderName,
      required String routingNumber,
      required String accountNumber}) async {
    try {
      final response = await apiClient.submitAccountDetails(
          userId, accountHolderName, routingNumber, accountNumber);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> accountDetailsSubmitWebsite(
      {required String userId,
      required String accountHolderName,
      required String routingNumber,
      required String accountNumber}) async {
    try {
      final response = await apiClient.submitAccountDetailsWebsite(
          'Baerer ' + sharedPreffUtil.getAccessToken,
          userId,
          accountHolderName,
          routingNumber,
          accountNumber);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> submitReference(
      {required String userId, required List referenceList}) async {
    try {
      print('inside respo');
      final response = await apiClient.submitReference(userId, referenceList);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> submitReferenceWebsite(
      {required String userId, required List referenceList}) async {
    try {
      print('inside respo');
      final response = await apiClient.submitReferenceWebsite(
          'Bearer ' + sharedPreffUtil.getAccessToken, userId, referenceList);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }

  @override
  Future<Either<ApiErrorHandler, RelationResponse>> getRelationList() async {
    try {
      final response = await apiClient.getRelationList();
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
