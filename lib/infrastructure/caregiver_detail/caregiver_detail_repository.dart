import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/core/string.dart';
import 'package:admin_580_tech/domain/caregiver_detail/i_caregivers_detail_repo.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/caregiver_detail_response.dart';
import 'package:admin_580_tech/domain/caregiver_detail/model/data.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/caregiver_detail/model/services.dart';

class CareGiverDetailRepository implements ICareGiverDetailRepo {
  final ApiClient _apiClient = ApiClient(Dio());
  List<Services> mServices = [
    Services(
        id: "1",
        onBoardingStatus: 1,
        clientName: "John",
        service: "Tier1",
        clientProfile: "",
        dateTime: "04/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier2",
        clientProfile: "",
        dateTime: "05/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 3,
        clientName: "John",
        service: "Tier3",
        clientProfile: "",
        dateTime: "06/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier4",
        clientProfile: "",
        dateTime: "07/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier5",
        clientProfile: "",
        dateTime: "08/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier6",
        clientProfile: "",
        dateTime: "09/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier7",
        clientProfile: "",
        dateTime: "9/27/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier8",
        clientProfile: "",
        dateTime: "10/27/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier9",
        clientProfile: "",
        dateTime: "11/26/2023 , 10:00am - 12.00pm",
        location: "Newark"),
    Services(
        id: "1",
        onBoardingStatus: 2,
        clientName: "John",
        service: "Tier10",
        clientProfile: "",
        dateTime: "12/26/2023, 10:00am - 12.00pm",
        location: "Newark"),
  ];

  @override
  Future<Either<ApiErrorHandler, CareGiverDetailResponse>> getCareGiverDetail(
      {required String userID}) async {
    try {
      final response = CareGiverDetailResponse(
          status: true, careGiverData: CareGiverData(services: mServices));
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException") ||
          e.message.contains("XMLHttpRequest")) {
        CustomLog.log("reached here..");
        return const Left(ClientFailure(
            error: Strings.noInternetConnection, isClientError: true));
      } else {
        return const Left(ServerFailure(
            error: Strings.somethingWentWrong, isClientError: false));
      }
    }
  }
}
