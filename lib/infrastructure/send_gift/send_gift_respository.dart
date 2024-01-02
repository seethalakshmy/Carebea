import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/faq_creation/i_faq_creation_repo.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/send_gift/i_send_gift_repo.dart';

class SendGiftRepository implements ISendGiftRepo {
  ApiClient apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> sendGift(
      String userId, String title, String description) async {
    try {
      final response = await apiClient.sendGift(userId, title, description);
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
