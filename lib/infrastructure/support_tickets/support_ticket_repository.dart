import 'package:admin_580_tech/domain/core/api_error_handler/api_error_handler.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_tickets_data.dart';
import 'package:admin_580_tech/domain/support_tickets/model/support_tickets_response.dart';
import 'package:admin_580_tech/domain/user_management/i_users_repo.dart';
import 'package:admin_580_tech/presentation/caregiver_creation/models/caregiver_creation_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_client.dart';
import '../../domain/support_tickets/i_support_tickets_repo.dart';
import '../../domain/support_tickets/model/support_ticket.dart';

class SupportTicketsRepository implements ISupportTicketsRepo {
  final ApiClient _apiClient = ApiClient();
  List<SupportTickets> supportTickets = [
    SupportTickets(
        userId: "#ID111",
        profile: "",
        role: "Decision Maker",
        category: 'A',
        createdDate: '11/04/2023',
        repliedOn: '12/04/2023',
        title: 'issue',
        status: 'completed',
        name: Name(firstName: 'test', lastName: 'test')),
    SupportTickets(
        userId: "#ID111",
        profile: "",
        role: "Decision Maker",
        category: 'A',
        createdDate: '11/04/2023',
        repliedOn: '12/04/2023',
        title: 'issue',
        status: 'completed',
        name: Name(firstName: 'test', lastName: 'test')),
    SupportTickets(
        userId: "#ID111",
        profile: "",
        role: "Decision Maker",
        category: 'Service Related',
        createdDate: '11/04/2023',
        repliedOn: '12/04/2023',
        title: 'issue',
        status: 'completed',
        name: Name(firstName: 'test', lastName: 'test')),
    SupportTickets(
        userId: "#ID111",
        profile: "",
        role: "Decision Maker",
        category: 'Service Related',
        createdDate: '11/04/2023',
        repliedOn: '12/04/2023',
        title: 'issue',
        status: 'completed',
        name: Name(firstName: 'test', lastName: 'test')),
    SupportTickets(
        userId: "#ID111",
        profile: "",
        role: "Decision Maker",
        category: 'Service Related',
        createdDate: '11/04/2023',
        repliedOn: '12/04/2023',
        title: 'issue',
        status: 'completed',
        name: Name(firstName: 'test', lastName: 'test')),
  ];

  @override
  Future<Either<ApiErrorHandler, SupportTicketsResponse>> getSupportTickets(
      {required int page, required int limit}) async {
    try {
      final response = SupportTicketsResponse(
          status: true,
          data: SupportTicketsData(supportTickets: supportTickets));

      return Right(response);
    } on DioError catch (e) {
      CustomLog.log("CareGiverListRepository: ${e.message}");
      if (e.message.contains("SocketException")) {
        CustomLog.log("reached here..");
        return Left(ClientFailure(
            error: AppString.noInternetConnection.val, isClientError: true));
      } else {
        return Left(ServerFailure(
            error: AppString.somethingWentWrong.val, isClientError: false));
      }
    }
  }
}
