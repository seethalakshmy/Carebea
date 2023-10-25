import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../domain/client_report/model/client_report_response.dart';
import '../../../domain/client_report/model/client_report_user_list_response.dart';
import '../../../domain/client_report/model/inactive_count_response.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/user_management/model/user_list_response.dart';
import '../../../infrastructure/client_report/client_report_repository.dart';

part 'client_report_state.dart';

part 'client_report_event.dart';

part 'client_report_bloc.freezed.dart';

class ClientReportBloc extends Bloc<ClientReportEvent, ClientReportState> {
  ClientReportRepository clientReportRepository;

  String graphType = 'churn';
  String filterId = '1';
  int page = 1;
  int limit = 10;

  ClientReportBloc(this.clientReportRepository)
      : super(ClientReportState.initial()) {
    on<_GetClientReport>(_getClientReport);
    on<_GetInactiveCountReport>(_getInactiveCountReport);
    on<_GetGraphType>(_getGraphType);
    on<_GetCancelButtonPress>(_getCancelButtonPressed);
    on<_GetUserList>(_getUserList);
  }

  _getClientReport(
      _GetClientReport event, Emitter<ClientReportState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ClientReportResponse> result =
        await clientReportRepository.getClientReport(
            userId: event.userId,
            roleId: event.roleId,
            filterId: event.filterId,
            year: event.year,
            month: event.month,
            startDate: event.startDate,
            toDate: event.toDate,
            region: event.region);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      if (r.status!) {
        List<ChurnRate> list = r.data?.churnRate ?? [];

        List<String> dateString = [];
        List<String> churnString = [];

        for (int i = 0; i < list.length; i++) {
          String date = "";
          String churn = "";

          if (list[i].date != null) {
            date += "${list[i].date} ";
          }
          if (list[i].month != null) {
            date += "${list[i].month} ";
          }
          if (list[i].year != null) {
            date += "${list[i].year}";
          }
          if (list[i].churnRate != null) {
            churn += "${list[i].churnRate}";
          }
          dateString.add(date);
          churnString.add(churn);
        }
        log("dates are $dateString $churnString");
        return state.copyWith(
            clientReportResponse: r,
            isLoading: false,
            xAxis: dateString,
            yAxis: churnString);
      }
    });
    emit(userState!);
  }

  _getInactiveCountReport(
      _GetInactiveCountReport event, Emitter<ClientReportState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, InactiveCountResponse> result =
        await clientReportRepository.getInactiveCountReport(
            userId: event.userId,
            roleId: event.roleId,
            filterId: event.filterId,
            year: event.year,
            month: event.month,
            startDate: event.startDate,
            toDate: event.toDate,
            region: event.region);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isLoading: false);
    }, (r) {
      if (r.status!) {
        List<CountByMonth> list = r.data?.countByMonth ?? [];

        List<String> dateString = [];
        List<String> inactiveString = [];

        for (int i = 0; i < list.length; i++) {
          String date = "";
          String inactiveCount = "";

          if (list[i].date != null) {
            date += "${list[i].date} ";
          }
          if (list[i].month != null) {
            date += "${list[i].month} ";
          }
          if (list[i].year != null) {
            date += "${list[i].year}";
          }
          if (list[i].count != null) {
            inactiveCount += "${list[i].count}";
          }
          dateString.add(date);
          inactiveString.add(inactiveCount);
        }
        log("dates are $dateString $inactiveString");
        return state.copyWith(
            inactiveCountResponse: r,
            isLoading: false,
            inactiveXAxis: dateString,
            inactiveYAxis: inactiveString);
      }
    });
    emit(userState!);
  }

  _getGraphType(_GetGraphType event, Emitter<ClientReportState> emit) {
    emit(state.copyWith(isGraphTypeChurn: event.isGraphChurn));
  }

  _getCancelButtonPressed(
      _GetCancelButtonPress event, Emitter<ClientReportState> emit) {
    emit(state.copyWith(isCancelButtonPressed: event.isCancelButtonPressed));
  }

  _getUserList(_GetUserList event, Emitter<ClientReportState> emit) async {
    emit(state.copyWith(isUserTableLoading: true));
    final Either<ApiErrorHandler, ClientReportUserListResponse> result =
        await clientReportRepository.getUserList(
            userId: event.userId,
            roleId: event.roleId,
            year: event.year,
            month: event.month,
            startDate: event.startDate,
            toDate: event.toDate,
            region: event.region,
            page: event.page,
            limit: event.limit);
    var userState = result.fold((l) {
      return state.copyWith(error: l.error, isUserTableLoading: false);
    }, (r) {
      return state.copyWith(clientReportUserListResponse: r, isLoading: false);
    });
    emit(userState);
  }
}
