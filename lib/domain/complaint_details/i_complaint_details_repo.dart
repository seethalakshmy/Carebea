import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import 'models/complaint_details_response_model.dart';

abstract class IComplaintDetailsRepo {
  Future<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
      getComplaintDetails({required String complaintId});
}
