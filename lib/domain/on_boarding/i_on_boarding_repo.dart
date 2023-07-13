import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/models/document_list_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/personal_details/models/personal_details_response.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_request_model.dart';
import 'package:admin_580_tech/presentation/on_boarding/modules/reference/models/relation_response.dart';
import 'package:dartz/dartz.dart';

import '../../presentation/on_boarding/modules/personal_details/models/city_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/gender_list_response.dart';
import '../../presentation/on_boarding/modules/personal_details/models/state_list_reponse.dart';
import '../../presentation/on_boarding/modules/qualification_details/models/qualification_and_test_result_response.dart';
import 'models/common_response.dart';

abstract class IOnBoardingRepo {
  Future<Either<ApiErrorHandler, GenderListResponse>> getGenderList();

  Future<Either<ApiErrorHandler, CityListResponse>> getCityList({
    required String stateId,
    required String page,
    required String searchKey,
  });

  Future<Either<ApiErrorHandler, StateListReponse>> getStateList({
    required String page,
    required String searchKey,
  });

  Future<Either<ApiErrorHandler, CommonResponse>> submitReference({
    required String userId,
    required List referenceList,
  });

  Future<Either<ApiErrorHandler, DocumentListResponse>> getDocumentList();
  Future<Either<ApiErrorHandler, RelationResponse>> getRelationList();

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
          required String profilePic});

  Future<Either<ApiErrorHandler, CommentsAndReviewResponseModel>>
      qualificationSubmit({
    required String userId,
    required bool haveHHARegistration,
    HhaDetails? hhaDetails,
    required bool haveBLSCertificate,
    BlsOrFirstAidCertificateDetails? blsDetails,
    required bool haveTBTest,
    TbOrPpdTestDetails? tbDetails,
    required bool haveCovidVaccination,
    CovidVaccinationDetails? covidDetails,
  });
}
