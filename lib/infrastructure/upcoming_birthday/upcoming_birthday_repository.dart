import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/upcoming_birthdays/i_upcoming_birthday_repo.dart';
import '../../domain/upcoming_birthdays/model/upcoming_birthday_response.dart';

class UpcomingBirthdayRepository implements IUpcomingBirthdaysRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, UpcomingBirthdayResponse>>
      getUpcomingBirthdays({
    required String userId,
    required String type,
    required String page,
    required String limit,
  }) async {
    try {
      final response =
          await _apiClient.upcomingBirthdays(userId, type, page, limit);
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
