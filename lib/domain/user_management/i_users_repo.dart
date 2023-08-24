import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/user_response.dart';

abstract class IUserRepo {
  Future<Either<ApiErrorHandler, UserResponse>> getUsers(
      {required int page, required int limit});
}
