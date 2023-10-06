import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/on_boarding/models/common_response.dart';
import 'package:admin_580_tech/domain/user_management_detail/model/user_detail_response.dart';
import 'package:admin_580_tech/domain/video_management/models/video_management_response.dart';
import 'package:dartz/dartz.dart';

abstract class IVideoManagementRepo {
  Future<Either<ApiErrorHandler, VideoManagementResponse>> getGeneralSettings(
      {required String userId});

  Future<Either<ApiErrorHandler, CommonResponse>> deleteGeneralSettings(
      {required String userId, required String settingsId});
}
