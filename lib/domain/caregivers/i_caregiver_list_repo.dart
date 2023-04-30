import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'care_givers_response.dart';

abstract class ICareGiverListRepo {
  Future<Either<ApiErrorHandler, CaregiversResponse>> getCareGivers(
      {required int page, required int limit});
}