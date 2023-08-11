import 'package:admin_580_tech/domain/caregivers/model/caregiver_response.dart';
import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_tickets_response.dart';
import 'package:dartz/dartz.dart';

abstract class ISupportTicketsDetailRepo {
  Future<Either<ApiErrorHandler, SupportTicketsResponse>> getSupportTickets(
      {required int page, required int limit});
}
