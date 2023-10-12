import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/domain/user_management/i_users_repo.dart';
import 'package:admin_580_tech/domain/user_management/model/name.dart';
import 'package:admin_580_tech/domain/user_management/model/user_data.dart';
import 'package:admin_580_tech/domain/user_management/model/user_list_response.dart';
import 'package:admin_580_tech/domain/user_management/model/user_response.dart';
import 'package:admin_580_tech/domain/video_upload/i_video_upload_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/user_management/model/users.dart';

class UploadVideoRepository implements IVideoUploadRepo {
  final ApiClient _apiClient = ApiClient();

  @override
  Future<Either<ApiErrorHandler, CommonResponse>> uploadVideo(
      {required String adminId,
      String? settingsId,
      required String title,
      String? description,
      required String attachment,
      required int userType}) async {
    try {
      final response = await _apiClient.addVideo(
          adminId, settingsId, title, description ?? '', attachment, userType);
      return Right(response);
    } on DioError catch (e) {
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
