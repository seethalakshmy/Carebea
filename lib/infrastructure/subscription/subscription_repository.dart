import 'package:admin_580_tech/core/custom_debugger.dart';
import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/subscription/i_subscription_repo.dart';
import 'package:admin_580_tech/domain/subscription/model/subscription_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/enum.dart';

class SubscriptionRepository implements ISubscriptionRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, SubscriptionModel>> getSubscribedClient(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required String startDate,
      required String endDate,
      dynamic status,
      dynamic subscriptionType}) async {
    try {
      final response = await _apiClient.getSubscribedClients(userId, page,
          limit, searchTerm, startDate, endDate, status, subscriptionType);
      return Right(response);
    } on DioError catch (e) {
      CustomLog.log(": ${e.message}");

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
