import 'package:admin_580_tech/domain/service_request_management/model/assign_caregiver_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/reschedule_params.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/custom_snackbar.dart';
import '../../../core/enum.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../../domain/common_response/common_response.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/service_request_management/model/reschedule_response.dart';
import '../../../domain/service_request_management/model/service_request_response.dart';
import '../../../infrastructure/service_request_management/service_request_management_repository.dart';

part 'service_request_management_bloc.freezed.dart';
part 'service_request_management_event.dart';
part 'service_request_management_state.dart';

class ServiceRequestManagementBloc
    extends Bloc<ServiceRequestManagementEvent, ServiceRequestManagementState> {
  ServiceRequestManagementRepository serviceRequestManagementRepository;

  ServiceRequestManagementBloc(this.serviceRequestManagementRepository)
      : super(ServiceRequestManagementState.initial()) {
    on<_IsSelectedTab>(_getSelectedTab);
    on<_SetDate>(_setDate);
    on<_SetFromTime>(_setFromTime);
    on<_SetToTime>(_setToTime);
    on<_IsRescheduleInitialView>(_setInitialRescheduleView);
    on<_IsRescheduleLoaderView>(_setLoaderRescheduleView);
    on<_IsRescheduleAvailableView>(_setAvailableRescheduleView);
    on<_IsRescheduleNotAvailableView>(_setNotAvailableRescheduleView);
    on<_IsRescheduleOtherMatchingViewView>(_setOtherMatchingRescheduleView);
    on<_Reschedule>(_reschedule);
    on<_AssignCaregiver>(_assignCaregiver);
    on<_StartService>(_startService);
    on<_CancelService>(_cancelService);
  }

  _getSelectedTab(
      _IsSelectedTab event, Emitter<ServiceRequestManagementState> emit) async {
    var state = this.state;
    emit(state.copyWith(
        isLoading: true,
        services: [],
        error: "",
        rescheduleResponse: null,
        toTime: null,
        fromTime: null,
        selectedDate: DateTime.now(),
        isRescheduleAvailableCaregiverView: false,
        isError: false,
        isClientError: false,
        isRescheduleInitialView: false,
        isRescheduleLoaderView: false,
        isRescheduleNotAvailableCaregiverView: false,
        isRescheduleOtherMatchingListView: false,
        types: [
          Types(id: 1, title: AppString.pendingServices.val, isSelected: true),
          Types(
              id: 2, title: AppString.completedServices.val, isSelected: false),
          Types(id: 3, title: AppString.canceledRequest.val, isSelected: false),
          Types(id: 4, title: AppString.upcomingRequest.val, isSelected: false),
          Types(id: 5, title: AppString.onGoingRequest.val, isSelected: false),
        ]));
    final typeList = state.types;
    Types item = event.type;
    final index = typeList.indexOf(item);
    if (!item.isSelected) {
      for (var element in typeList) {
        element.isSelected = false;
      }
      List<Types> types = List.from(typeList)..removeAt(index);
      types.insert(index, item.copyWith(isSelected: true));
      emit(state.copyWith(types: types, isLoading: true, error: ""));
    }

    if (event.type.id == 1) {
      state = await _getPendingRequests(event.filterId);
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

  _setDate(_SetDate event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(selectedDate: event.selectedDate));
  }

  _setFromTime(
      _SetFromTime event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(fromTime: event.time));
  }

  _setToTime(
      _SetToTime event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(toTime: event.time));
  }

  _setInitialRescheduleView(_IsRescheduleInitialView event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(
        isRescheduleInitialView: true,
        isRescheduleAvailableCaregiverView: false,
        isRescheduleLoaderView: false,
        isRescheduleNotAvailableCaregiverView: false,
        isRescheduleOtherMatchingListView: false));
  }

  _setLoaderRescheduleView(_IsRescheduleLoaderView event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(
        isRescheduleLoaderView: true,
        isRescheduleInitialView: false,
        isRescheduleAvailableCaregiverView: false,
        isRescheduleNotAvailableCaregiverView: false,
        isRescheduleOtherMatchingListView: false));
  }

  _setAvailableRescheduleView(_IsRescheduleAvailableView event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(
        isRescheduleAvailableCaregiverView: true,
        isRescheduleLoaderView: false,
        isRescheduleInitialView: false,
        isRescheduleNotAvailableCaregiverView: false,
        isRescheduleOtherMatchingListView: false));
  }

  _setNotAvailableRescheduleView(_IsRescheduleNotAvailableView event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(
        isRescheduleNotAvailableCaregiverView: true,
        isRescheduleAvailableCaregiverView: false,
        isRescheduleLoaderView: false,
        isRescheduleInitialView: false,
        isRescheduleOtherMatchingListView: false));
  }

  _setOtherMatchingRescheduleView(_IsRescheduleOtherMatchingViewView event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(
      isRescheduleOtherMatchingListView: true,
      isRescheduleNotAvailableCaregiverView: false,
      isRescheduleAvailableCaregiverView: false,
      isRescheduleLoaderView: false,
      isRescheduleInitialView: false,
    ));
  }

  _reschedule(
      _Reschedule event, Emitter<ServiceRequestManagementState> emit) async {
    add(const ServiceRequestManagementEvent.isRescheduleLoaderView());
    final Either<ApiErrorHandler, RescheduleResponse> result =
        await serviceRequestManagementRepository.rescheduleService(
            rescheduleParams: event.rescheduleParams);
    ServiceRequestManagementState rescheduleState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
          isRescheduleLoaderView: false, isReScheduleError: true);
    }, (r) {
      if (r.status ?? false) {
        if (r.data?.caregiverFound ?? false) {
          add(const ServiceRequestManagementEvent.isRescheduleAvailableView());
        } else {
          add(const ServiceRequestManagementEvent
              .isRescheduleNotAvailableView());
        }
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        rescheduleResponse: r,
      );
    });
    emit(
      rescheduleState,
    );
  }

  _assignCaregiver(_AssignCaregiver event,
      Emitter<ServiceRequestManagementState> emit) async {
    final Either<ApiErrorHandler, CommonResponseUse> result =
        await serviceRequestManagementRepository.assignCaregiver(
            assignCareGiverParams: event.assignCareGiverParams);
    ServiceRequestManagementState assignState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(
          isRescheduleLoaderView: false, isReScheduleError: true);
    }, (r) {
      if (r.status ?? false) {
        Navigator.pop(event.context);
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        caregiverAssignResponse: r,
      );
    });
    emit(
      assignState,
    );
  }

  _startService(
      _StartService event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(isStartServiceLoading: true));
    final Either<ApiErrorHandler, CommonResponseUse> result =
        await serviceRequestManagementRepository.startService(
      serviceId: event.serviceId,
      userId: event.userId,
    );
    ServiceRequestManagementState currentState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(isStartServiceLoading: false);
    }, (r) {
      if (r.status ?? false) {
        Navigator.pop(event.context);
        Navigator.pop(event.context);
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
          startServiceResponse: r, isStartServiceLoading: false);
    });
    emit(
      currentState,
    );
  }

  _cancelService(
      _CancelService event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(isCancelLoading: true));
    final Either<ApiErrorHandler, CommonResponseUse> result =
        await serviceRequestManagementRepository.cancelServiceRequest(
            serviceId: event.serviceId,
            userId: event.userId,
            description: event.description);
    ServiceRequestManagementState currentState = result.fold((l) {
      CSnackBar.showError(event.context, msg: l.error ?? "");
      return state.copyWith(isCancelLoading: false);
    }, (r) {
      if (r.status ?? false) {
        Navigator.pop(event.context);
        Navigator.pop(event.context);
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
      }
      return state.copyWith(
        isCancelLoading: false,
        startServiceResponse: r,
      );
    });
    emit(
      currentState,
    );
  }

  Future<ServiceRequestManagementState> _getPendingRequests(
      int? filterId) async {
    final Either<ApiErrorHandler, ServiceRequestResponse> result =
        await serviceRequestManagementRepository.getPendingRequests(
            page: 1,
            userId: SharedPreffUtil().getAdminId,
            limit: 10,
            filterId: filterId ?? 0);
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
    );
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
      // filterId: filterId
    );
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
      // filterId: filterId
    );
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
      // filterId: filterId
    );
    ServiceRequestManagementState serviceRequestManagementState =
        result.fold((l) {
      return state.copyWith(isLoading: false, services: [], error: l.error);
    }, (r) {
      return state.copyWith(isLoading: false, services: r.data?.services ?? []);
    });
    return serviceRequestManagementState;
  }
}
