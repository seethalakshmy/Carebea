import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';

abstract class CareGiverSubmitAgreementRepo {
  Future<Either<ApiErrorHandler, CommonResponse>> submit({
    required String signatureUrl,
  });
}
