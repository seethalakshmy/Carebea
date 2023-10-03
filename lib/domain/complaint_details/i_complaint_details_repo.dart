import 'package:dartz/dartz.dart';

import '../core/api_error_handler/api_error_handler.dart';
import '../on_boarding/models/common_response.dart';
import '../transaction_management/model/transaction_details_response.dart';
import 'models/complaint_details_response_model.dart';
import 'models/get_service_response_model.dart';

abstract class IComplaintDetailsRepo {
  Future<Either<ApiErrorHandler, ComplaintDetailsResponseModel>>
      getComplaintDetails({required String complaintId});

  Future<Either<ApiErrorHandler, CommonResponse>> updateComplaint({
    required String adminId,
    required String complaintId,
    required int status,
    required String comment,
  });

  Future<Either<ApiErrorHandler, GetServiceResponseModel>> getService({
    required String userId,
    required String serviceId,
  });

  Future<Either<ApiErrorHandler, TransactionDetailsResponse>>
      getTransactionDetails(
          {required String token,
          required String transactionId,
          required String serviceId});
}
