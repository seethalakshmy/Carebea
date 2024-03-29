import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';

abstract class IPageRepo {
  Future<Either<ApiErrorHandler, CommonResponse>> createPage(
      {required String title,
      required String description,
      required String pageFor});

  Future<Either<ApiErrorHandler, CommonResponse>> updatePage(
      {required String userId,
      required String id,
      required String title,
      required String description,
      required String pageFor});

  Future<Either<ApiErrorHandler, CommonResponse>> deletePage(
      {required String id});
}
