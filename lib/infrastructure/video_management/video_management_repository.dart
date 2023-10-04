import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/video_management/i_video_management_repo.dart';
import 'package:admin_580_tech/domain/video_management/models/video_management_response.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../presentation/on_boarding/modules/personal_details/models/gender_list_response.dart';

class VideoManagementRepository implements IVideoManagementRepo {
  ApiClient apiClient = ApiClient();
  SharedPreffUtil sharedPreffUtil = SharedPreffUtil();

  @override
  Future<Either<ApiErrorHandler, VideoManagementResponse>> getGeneralSettings(
      {required String userId}) async {
    try {
      final response = await apiClient.getGeneralSettings(userId);
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
