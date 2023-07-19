import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/reference/models/relation_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/on_boarding/i_on_boarding_repo.dart';
import '../../domain/on_boarding/models/common_response.dart';
import '../../domain/on_boarding/models/preferences/pet_list_response.dart';
import '../../domain/on_boarding/models/preferences/preference_request_model.dart';
import '../../domain/on_boarding/models/preferences/years_of_experience_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/document_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/gender_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/personal_details_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/state_list_reponse.dart';
import '../../presentation/on_boarding/modules/preference/models/language_list_response.dart';
import '../../presentation/on_boarding/modules/services/models/get_service_response.dart';
import '../../presentation/on_boarding/modules/services/models/service_list_response.dart';

class OnBoardingRepository implements IOnBoardingRepo {
  ApiClient apiClient = ApiClient();

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
  Future<Either<ApiErrorHandler, StateListReponse>> getStateList({
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
      final response = await apiClient.getLanguageList(page, "15", searchKey);
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
  Future<Either<ApiErrorHandler, CommonResponse>> qualificationSubmit(
      {required String userId,
      required bool haveHHARegistration,
      required HhaDetails hhaDetails,
      required bool haveBLSCertificate,
      required BlsOrFirstAidCertificateDetails blsDetails,
      required bool haveTBTest,
      required TbOrPpdTestDetails tbDetails,
      required bool haveCovidVaccination,
      required CovidVaccinationDetails covidDetails}) async {
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
          covidDetails);
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
      required List<PetsList> petsList,
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
      {required String userId, required ServicesModel services}) async {
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
  Future<Either<ApiErrorHandler, GetServiceResponse>> getServices(
      {required String userId}) async {
    try {
      final response = await apiClient.getServices(userId);
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
}
