import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';

abstract class ISendGiftRepo {
  Future<Either<ApiErrorHandler, CommonResponse>> sendGift(
      String userId, String title, String description);
}
