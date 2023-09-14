import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';
import 'models/faq_details_response_model.dart';

abstract class IFaqCreationRepo {
  Future<Either<ApiErrorHandler, FaqDetailsResponseModel>> getFaqDetails(
      String id);

  Future<Either<ApiErrorHandler, CommonResponse>> updateFaqDetails(
      String id, String question, String answer, String status);

  Future<Either<ApiErrorHandler, CommonResponse>> createFaqDetails(
      String question, String answer, String status);
}
