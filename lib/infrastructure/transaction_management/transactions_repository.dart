import 'package:admin_580_tech/domain/core/api_client.dart';
import 'package:admin_580_tech/domain/transaction_management/i_transactions_repo.dart';
import 'package:admin_580_tech/domain/transaction_management/model/transaction_data.dart';
import 'package:admin_580_tech/domain/transaction_management/model/transaction_response.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../core/custom_debugger.dart';
import '../../core/enum.dart';
import '../../domain/core/api_error_handler/api_error_handler.dart';
import '../../domain/transaction_management/model/transactions.dart';

class TransactionsRepository implements ITransactionsRepo {
  final ApiClient _apiClient = ApiClient();
  List<Transactions> mTransactions = [
    Transactions(
        transactionId: "00989090909",
        serviceId: "#SER12345",
        transactionType: "ACH",
        paidFor: "Extra service fee",
        paidTo: "Ama-gi",
        receivedFrom: "Decision Maker Name",
        amount: "\$120",
        dateTime: "04/26/2023 , 10:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00989090949",
        serviceId: "#SER12334",
        transactionType: "Credit card",
        paidFor: "Tip",
        paidTo: "Caregiver name",
        receivedFrom: "Decision Maker Name",
        amount: "\$10",
        dateTime: "04/26/2023 , 10:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00989090919",
        serviceId: "#SER12348",
        transactionType: "ACH",
        paidFor: "Service fee",
        paidTo: "ama-gi",
        receivedFrom: "Decision Maker Name",
        amount: "\$230",
        dateTime: "04/26/2023 , 10:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00989090920",
        serviceId: "#SER12348",
        transactionType: "ACH",
        paidFor: "Service fee",
        paidTo: "Caregiver name",
        receivedFrom: "ama-gi",
        amount: "\$210",
        dateTime: "04/26/2023 , 10:00am",
        status: "Cancel"),
    Transactions(
        transactionId: "00989090923",
        serviceId: "#SER123589",
        transactionType: "UPI",
        paidFor: "Refund fee",
        paidTo: "Caregiver name",
        receivedFrom: "ama-gi",
        amount: "\$130",
        dateTime: "05/26/2023 , 10:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00989090935",
        serviceId: "#SER13256",
        transactionType: "ACH",
        paidFor: "Service fee",
        paidTo: "ama-gi",
        receivedFrom: "Decision maker name",
        amount: "\$210",
        dateTime: "04/29/2023 , 08:00am",
        status: "Cancel"),
    Transactions(
        transactionId: "00989090956",
        serviceId: "#SER23586",
        transactionType: "Debit Card",
        paidFor: "Tip",
        paidTo: "sample name",
        receivedFrom: "caregiver name",
        amount: "\$310",
        dateTime: "03/16/2023 , 09:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00989090989",
        serviceId: "#SER12388",
        transactionType: "ACH",
        paidFor: "Service fee",
        paidTo: "Caregiver name",
        receivedFrom: "ama-gi",
        amount: "\$210",
        dateTime: "04/26/2023 , 10:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00989785620",
        serviceId: "#SER89348",
        transactionType: "Credit Card",
        paidFor: "Tip",
        paidTo: "ama-gi",
        receivedFrom: "caregiver name",
        amount: "\$20",
        dateTime: "04/26/2023 , 10:00am",
        status: "Completed"),
    Transactions(
        transactionId: "00985623420",
        serviceId: "#SER18528",
        transactionType: "ACH",
        paidFor: "Service fee",
        paidTo: "Caregiver name",
        receivedFrom: "ama-gi",
        amount: "\$21",
        dateTime: "04/26/2023 , 10:00am",
        status: "Cancel"),
  ];

  @override
  Future<Either<ApiErrorHandler, TransactionResponse>> getTransactions(
      {required int page, required int limit}) async {
    try {
      final response = TransactionResponse(
          status: true, data: TransactionData(transactions: mTransactions));

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
