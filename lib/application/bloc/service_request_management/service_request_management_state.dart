part of 'service_request_management_bloc.dart';

@freezed
class ServiceRequestManagementState with _$ServiceRequestManagementState {
  const factory ServiceRequestManagementState(
      {required List<Types> types,
      bool? isLoading,
      bool? isListLoading,
      bool? isDetailsLoading,
      required bool isShowingTransactionDetails,
      required bool isShowingNeededServices,
      required bool isShowingCompletedServices,
      required bool isShowingIncompleteServices,
      required bool isShowingExtraServices,
      required bool isShowingRefundDetails,
      required bool isShowingTimeline,
      required int whoRequestedCancel,
      required String? error,
      required DateTime selectedDate,
      required String fromDate,
      required String toDate,
      required String searchQuery,
      TimeOfDay? fromTime,
      TimeOfDay? toTime,
      RescheduleResponse? rescheduleResponse,
      CommonResponseUse? caregiverAssignResponse,
      CommonResponseUse? startServiceResponse,
      CommonResponseUse? cancelServiceResponse,
      CaregiverProfileResponse? caregiverProfileResponse,
      required Option<Either<ApiErrorHandler, GetFiltersResponse>> filterOption,
      required Option<Either<ApiErrorHandler, ServiceDetailsResponseModel>>
          serviceDetailsOption,
      required Option<Either<ApiErrorHandler, ServiceRequestListResponseModel>>
          serviceOption,
      required Option<Either<ApiErrorHandler, ServiceStatusResponseModel>>
          serviceStatusOption,
      @Default(false) bool isError,
      @Default(false) bool isCancelLoading,
      @Default(false) bool isStartServiceLoading,
      @Default(false) bool isReScheduleError,
      @Default(false) bool isClientError,
      @Default(false) bool isRescheduleInitialView,
      @Default(false) bool isRescheduleLoaderView,
      @Default(false) bool isRescheduleAvailableCaregiverView,
      @Default(false) bool isRescheduleNotAvailableCaregiverView,
      @Default(false) bool isRescheduleOtherMatchingListView,
      required List<ServiceList> services}) = _ServiceRequestManagementState;

  factory ServiceRequestManagementState.initial() {
    return ServiceRequestManagementState(
        isLoading: true,
        isListLoading: false,
        isDetailsLoading: true,
        rescheduleResponse: null,
        isShowingTransactionDetails: false,
        isShowingNeededServices: false,
        isShowingCompletedServices: false,
        isShowingIncompleteServices: false,
        isShowingExtraServices: false,
        isShowingRefundDetails: false,
        isShowingTimeline: false,
        whoRequestedCancel: 0,
        types: [],
        selectedDate: DateTime.now(),
        services: [],
        filterOption: const None(),
        serviceOption: const None(),
        serviceStatusOption: const None(),
        serviceDetailsOption: const None(),
        error: "",
        fromDate: "",
        toDate: "",
        searchQuery: "");
  }
}
