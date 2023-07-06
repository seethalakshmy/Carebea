import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import '../../presentation/caregiver_creation/models/caregiver_creation_response.dart';

abstract class ICaregiverCreationRepo {
  Future<Either<ApiErrorHandler, CaregiverCreationResponse>> createCaregiver({
    required String firstName,
    required String lastName,
    required String email,
    required String mobileNo,
  });
}
