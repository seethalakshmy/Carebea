import 'package:admin_580_tech/domain/caregiver_list/care_givers_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';



abstract class ICareGiverListRepo{
  Future<Either<ApiErrorHandler,CaregiversResponse>> getCareGivers({required int page, required int limit});
}