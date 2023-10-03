import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'models/faq_list_response_model.dart';

abstract class IFaqRepo {
  Future<Either<ApiErrorHandler, FaqListResponseModel>> getFaqList();
}
