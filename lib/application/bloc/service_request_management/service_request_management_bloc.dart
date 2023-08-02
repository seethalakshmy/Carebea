import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/enum.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/service_request_management/model/service_request_response.dart';
import '../../../infrastructure/service_request_management/service_request_management_repository.dart';

part 'service_request_management_bloc.freezed.dart';
part 'service_request_management_event.dart';
part 'service_request_management_state.dart';

class ServiceRequestManagementBloc
    extends Bloc<ServiceRequestManagementEvent, ServiceRequestManagementState> {
  ServiceRequestManagementRepository serviceRequestManagementRepository;
  int filterId = 0;

  ServiceRequestManagementBloc(this.serviceRequestManagementRepository)
      : super(ServiceRequestManagementState.initial()) {
    on<_IsSelectedTab>(_getSelectedTab);
    on<_GetServiceList>(_getServiceList);
    on<_SetDate>(_setDate);
    on<_SetFromTime>(_setFromTime);
    on<_SetToTime>(_setToTime);
  }

  _getSelectedTab(
      _IsSelectedTab event, Emitter<ServiceRequestManagementState> emit) async {
    var state = this.state;
    final typeList = state.types;
    Types item = event.type;
    final index = typeList.indexOf(item);
    if (!item.isSelected) {
      for (var element in typeList) {
        element.isSelected = false;
      }
      List<Types> types = List.from(typeList)..removeAt(index);
      types.insert(index, item.copyWith(isSelected: true));
      emit(state.copyWith(types: types, isLoading: true));
    }
  }

  _setDate(_SetDate event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(selectedDate: event.selectedDate));
  }

  _setFromTime(
      _SetFromTime event, Emitter<ServiceRequestManagementState> emit) async {
    print('from time :: ${event.time}');
    emit(state.copyWith(fromTime: event.time));
  }

  _setToTime(
      _SetToTime event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(toTime: event.time));
  }

  _getServiceList(_GetServiceList event,
      Emitter<ServiceRequestManagementState> emit) async {
    var state = this.state;

    emit(state.copyWith(
        isLoading: true,
        types: [
          Types(id: 1, title: AppString.pendingServices.val, isSelected: true),
          Types(
              id: 2, title: AppString.completedServices.val, isSelected: false),
          Types(id: 3, title: AppString.canceledRequest.val, isSelected: false),
          Types(id: 4, title: AppString.upcomingRequest.val, isSelected: false),
          Types(id: 5, title: AppString.onGoingRequest.val, isSelected: false),
        ],
        selectedDate: DateTime.now(),
        services: [],
        error: ""));

    if (event.type.id == 1) {
      state = await _getPendingRequests();
    } else if (event.type.id == 2) {
      state = await _getCompletedRequests();
    } else if (event.type.id == 3) {
      state = await _getCancelledRequests();
    } else if (event.type.id == 4) {
      state = await _getUpcomingRequests();
    } else {
      state = await _getOngoingRequests();
    }
    emit(state);
  }

  Future<ServiceRequestManagementState> _getPendingRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getPendingRequests(
            page: 1,
            userId: SharedPreffUtil().getAdminId,
            limit: 10,
            filterId: filterId);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getCompletedRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getCompletedRequests(
            page: 1,
            userId: SharedPreffUtil().getAdminId,
            limit: 10,
            filterId: filterId);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getCancelledRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getCancelledRequests(
            page: 1,
            userId: SharedPreffUtil().getAdminId,
            limit: 10,
            filterId: filterId);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getUpcomingRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getUpcomingRequests(
            page: 1,
            userId: SharedPreffUtil().getAdminId,
            limit: 10,
            filterId: filterId);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }

  Future<ServiceRequestManagementState> _getOngoingRequests() async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getOngoingRequests(
            page: 1,
            userId: SharedPreffUtil().getAdminId,
            limit: 10,
            filterId: filterId);
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }
}
