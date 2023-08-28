import 'package:admin_580_tech/domain/dashboard/model/dashboard_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utility.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/dashboard/model/alert_response.dart';
import '../../../infrastructure/dashboard/dashboard_repository.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardRepository dashboardRepository;

  DashboardBloc(this.dashboardRepository) : super(DashboardState.initial()) {
    on<_ChangeAxis>(_changeAxis);
    on<_GetDashboard>(_getDashboardData);
  }

  _changeAxis(_ChangeAxis event, Emitter<DashboardState> emit) {
    emit(state.copyWith(filterId: event.filterId));
  }

  _getDashboardData(_GetDashboard event, Emitter<DashboardState> emit) async {
    if (event.isCallAlertApiCall) {
      emit(state.copyWith(isLoading: true));
    }
    DashboardState dashboardState = state;
    if (event.isCallAlertApiCall) {
      final Either<ApiErrorHandler, AlertResponse> result =
          await dashboardRepository.getAlert(
        userID: event.userId,
      );
      print("bloc result ${result.toString()}");
      dashboardState = result.fold((l) {
        print('bloc11 $result');

        return state.copyWith(
          error: l.error,
          isLoading: true,
          isError: true,
          isClientError: l.isClientError ?? false,
        );
      }, (r) {
        print('bloc11 $r');
        print('bloc11 ${r.data?.cgQueryCount}');

        return state.copyWith(
          alertResponse: r,
          isLoading: true,
        );
      });

      emit(
        dashboardState,
      );
    }

    final Either<ApiErrorHandler, DashboardResponse> data =
        await dashboardRepository.getDashboardData(
            userId: event.userId,
            year: event.year,
            fromDate: event.fromData,
            toDate: event.toDate);
    print("bloc result ${data.toString()}");
    dashboardState = data.fold((l) {
      print('bloc11 $data');

      return state.copyWith(
        error: l.error,
        isLoading: false,
        isError: true,
        isClientError: l.isClientError ?? false,
      );
    }, (r) {
      print('bloc11 $r');

      return state.copyWith(
        dashboardResponse: r,
        isLoading: false,
      );
    });

    emit(
      dashboardState,
    );
  }
}
