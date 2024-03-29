import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:dartz/dartz.dart';

import 'model/subscription_model.dart';

abstract class ISubscriptionRepo {
  Future<Either<ApiErrorHandler, SubscriptionModel>> getSubscribedClient(
      {required String userId,
      required String page,
      required String limit,
      required String searchTerm,
      dynamic status,
      required String startDate,
      required String endDate,
      dynamic subscriptionType});
}
