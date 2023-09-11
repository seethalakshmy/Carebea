import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/user_management/model/user_list_response.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRepo {
  Future<Either<ApiErrorHandler, UserListResponse>> getUsers(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      required int filterId});
}
