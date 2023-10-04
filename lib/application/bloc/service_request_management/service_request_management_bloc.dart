import 'package:admin_580_tech/domain/service_request_management/model/assign_caregiver_params.dart';
import 'package:admin_580_tech/domain/service_request_management/model/reschedule_params.dart';
import 'package:admin_580_tech/infrastructure/shared_preference/shared_preff_util.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../core/custom_snackbar.dart';
import '../../../domain/caregiver_profile/model/caregiver_profile_response.dart';
import '../../../domain/caregivers/model/types.dart';
import '../../../domain/common_response/common_response.dart';
import '../../../domain/core/api_error_handler/api_error_handler.dart';
import '../../../domain/service_request_management/model/reschedule_response.dart';
import '../../../domain/service_request_management/model/service_details_response_model.dart';
import '../../../domain/service_request_management/model/service_request_list_response_model.dart';
import '../../../domain/service_request_management/model/service_request_response.dart';
import '../../../domain/service_request_management/model/service_status_response_model.dart';
import '../../../domain/transaction_management/model/get_filters_response.dart';
import '../../../infrastructure/service_request_management/service_request_management_repository.dart';

part 'service_request_management_bloc.freezed.dart';
part 'service_request_management_event.dart';
part 'service_request_management_state.dart';

class ServiceRequestManagementBloc
    extends Bloc<ServiceRequestManagementEvent, ServiceRequestManagementState> {
  ServiceRequestManagementRepository serviceRequestManagementRepository;
  int filterId = 0;
  int? statusFilterId = 0;
  String searchQuery = "";
  List<FilterData> filterList = [];
  List<StatusData> serviceStatusList = [];
  List<ServiceRequests> serviceRequestsList = [];
  List<ServiceDetailsData> serviceDetailsList = [];
  String selectedFromDate = "";
  String selectedToDate = "";
  DateTime selectedFromDateTime = DateTime(2020);
  DateTime? selectedToDateTime;
  bool isClearFilterClicked = false;
  int totalItems = 1;

  ServiceRequestManagementBloc(this.serviceRequestManagementRepository)
      : super(ServiceRequestManagementState.initial()) {
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
    on<_GetFilters>(_getFilters);
    on<_GetServiceStatus>(_getServiceStatus);
    on<_GetServiceRequests>(_getServiceRequests);
    on<_GetServiceDetails>(_getServiceDetails);
    on<_ShowOrHideTransactionDetails>(_showOrHideTransactionDetails);
    on<_ShowOrHideNeededServices>(_showOrHideNeededServices);
    on<_ShowOrHideCompletedServices>(_showOrHideCompletedServices);
    on<_ShowOrHideIncompleteServices>(_showOrHideIncompleteServices);
    on<_ShowOrHideExtraServices>(_showOrHideExtraServices);
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
      Navigator.pop(event.context);
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(
          isRescheduleLoaderView: false, isReScheduleError: true);
    }, (r) {
      Navigator.pop(event.context);
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
      CSnackBar.showError(event.context, msg: l.error);
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
      CSnackBar.showError(event.context, msg: l.error);
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
      CSnackBar.showError(event.context, msg: l.error);
      return state.copyWith(isCancelLoading: false);
    }, (r) {
      if (r.status ?? false) {
        CSnackBar.showSuccess(event.context, msg: r.message ?? "");
        Navigator.pop(event.context);
        Navigator.pop(event.context);
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

  _getFilters(
      _GetFilters event, Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, GetFiltersResponse> result =
        await serviceRequestManagementRepository.getFilters();
    ServiceRequestManagementState filterState = result.fold((l) {
      return state.copyWith(isLoading: false, filterOption: Some(Left(l)));
    }, (r) {
      filterList.clear();
      filterList.addAll(r.data!);
      return state.copyWith(isLoading: false, filterOption: Some(Right(r)));
    });
    emit(filterState);
  }

  String generateFormattedDate(String date) {
    DateTime inputDate = DateTime.parse(date);
    DateFormat dateFormat = DateFormat('MM-dd-yyyy , hh:mm a');
    String formattedDate = dateFormat.format(inputDate);
    return formattedDate;
  }

  _getServiceStatus(_GetServiceStatus event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(isLoading: true));
    final Either<ApiErrorHandler, ServiceStatusResponseModel> result =
        await serviceRequestManagementRepository.getServiceStatus();
    ServiceRequestManagementState statusState = result.fold((l) {
      return state.copyWith(
          isLoading: false, serviceStatusOption: Some(Left(l)));
    }, (r) {
      serviceStatusList.clear();
      serviceStatusList.add(StatusData(id: 0, name: "All"));
      serviceStatusList.addAll(r.data!);
      return state.copyWith(
          isLoading: false, serviceStatusOption: Some(Right(r)));
    });
    emit(statusState);
  }

  _getServiceRequests(_GetServiceRequests event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(isListLoading: true));
    final Either<ApiErrorHandler, ServiceRequestListResponseModel> result =
        await serviceRequestManagementRepository.getServiceRequests(
      page: event.page.toString(),
      limit: event.limit,
      userId: SharedPreffUtil().getAdminId,
      serviceId: null,
      searchTerm: event.searchTerm ?? "",
      fromDate: event.fromDate,
      toDate: event.toDate,
      dateFilterId: event.dateFilterId,
      statusFilterId: event.statusFilterId,
    );
    ServiceRequestManagementState serviceState = result.fold((l) {
      serviceRequestsList.clear();
      return state.copyWith(
          isListLoading: false, error: l.error, serviceOption: Some(Left(l)));
    }, (r) {
      if (r.status == true) {
        serviceRequestsList.clear();
        serviceRequestsList.addAll(r.data!.services!);
        totalItems = r.data!.totalCount!.toInt();
        return state.copyWith(
            isListLoading: false, error: "", serviceOption: Some(Right(r)));
      } else {
        CSnackBar.showError(event.context, msg: r.message ?? "");
        return state.copyWith(isListLoading: false, error: "");
      }
    });
    emit(serviceState);
  }

  _getServiceDetails(_GetServiceDetails event,
      Emitter<ServiceRequestManagementState> emit) async {
    emit(state.copyWith(isDetailsLoading: true));
    final Either<ApiErrorHandler, ServiceDetailsResponseModel> result =
        await serviceRequestManagementRepository.getServiceDetails(
            userId: SharedPreffUtil().getAdminId, serviceId: event.serviceId);
    ServiceRequestManagementState serviceState = result.fold((l) {
      return state.copyWith(
          isDetailsLoading: false, serviceDetailsOption: Some(Left(l)));
    }, (r) {
      if (r.status == true) {
        serviceDetailsList.clear();
        serviceDetailsList.add(r.data!);
        return state.copyWith(
            isDetailsLoading: false, serviceDetailsOption: Some(Right(r)));
      } else {
        return state.copyWith(isDetailsLoading: false);
      }
    });
    emit(serviceState);
  }

  _showOrHideTransactionDetails(_ShowOrHideTransactionDetails event,
      Emitter<ServiceRequestManagementState> emit) {
    emit(state.copyWith(isShowingTransactionDetails: event.isShowing));
  }

  _showOrHideNeededServices(_ShowOrHideNeededServices event,
      Emitter<ServiceRequestManagementState> emit) {
    emit(state.copyWith(isShowingNeededServices: event.isShowing));
  }

  _showOrHideCompletedServices(_ShowOrHideCompletedServices event,
      Emitter<ServiceRequestManagementState> emit) {
    emit(state.copyWith(isShowingCompletedServices: event.isShowing));
  }

  _showOrHideIncompleteServices(_ShowOrHideIncompleteServices event,
      Emitter<ServiceRequestManagementState> emit) {
    emit(state.copyWith(isShowingIncompleteServices: event.isShowing));
  }

  _showOrHideExtraServices(_ShowOrHideExtraServices event,
      Emitter<ServiceRequestManagementState> emit) {
    emit(state.copyWith(isShowingExtraServices: event.isShowing));
  }
}
