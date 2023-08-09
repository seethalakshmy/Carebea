part of 'service_request_management_bloc.dart';

@freezed
class ServiceRequestManagementState with _$ServiceRequestManagementState {
  const factory ServiceRequestManagementState(
      {required List<Types> types,
      bool? isLoading,
      required String? error,
      required DateTime selectedDate,
      TimeOfDay? fromTime,
      TimeOfDay? toTime,
      RescheduleResponse? rescheduleResponse,
      CommonResponseUse? caregiverAssignResponse,
      CommonResponseUse? startServiceResponse,
      CommonResponseUse? cancelServiceResponse,
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
      required List<Services> services}) = _ServiceRequestManagementState;

  factory ServiceRequestManagementState.initial() {
    return ServiceRequestManagementState(
        isLoading: true,
        rescheduleResponse: null,
        types: [],
        selectedDate: DateTime.now(),
        services: [],
        error: "");
  }
}
