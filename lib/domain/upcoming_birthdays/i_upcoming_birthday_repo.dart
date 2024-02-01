import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'model/upcoming_birthday_response.dart';

abstract class IUpcomingBirthdaysRepo {
  Future<Either<ApiErrorHandler, UpcomingBirthdayResponse>>
      getUpcomingBirthdays(
          {required String userId,
          required String type,
          required String page,
          required String limit,
          required String searchTerm});
}
