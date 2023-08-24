part of 'service_request_management_bloc.dart';

@freezed
class ServiceRequestManagementEvent with _$ServiceRequestManagementEvent {
  const factory ServiceRequestManagementEvent.getCareGiverProfile({
    required String userId,
    required String adminId,
  }) = _GetCareGiverProfile;
  const factory ServiceRequestManagementEvent.started() = _Started;
  const factory ServiceRequestManagementEvent.isSelectedTab(Types type,
      {int? filterId}) = _IsSelectedTab;
  const factory ServiceRequestManagementEvent.reschedule(
      {required RescheduleParams rescheduleParams,
      required BuildContext context}) = _Reschedule;
  const factory ServiceRequestManagementEvent.assignCaregiver(
      {required AssignCareGiverParams assignCareGiverParams,
      required BuildContext context}) = _AssignCaregiver;
  const factory ServiceRequestManagementEvent.startService(
      {required String userId,
      required String serviceId,
      required BuildContext context}) = _StartService;
  const factory ServiceRequestManagementEvent.cancelService(
      {required String userId,
      required String serviceId,
      required String description,
      required BuildContext context}) = _CancelService;

  const factory ServiceRequestManagementEvent.setDate(DateTime selectedDate) =
      _SetDate;
  const factory ServiceRequestManagementEvent.setFromTime(TimeOfDay time) =
      _SetFromTime;
  const factory ServiceRequestManagementEvent.setToTime(TimeOfDay time) =
      _SetToTime;
  const factory ServiceRequestManagementEvent.isRescheduleInitialView() =
      _IsRescheduleInitialView;
  const factory ServiceRequestManagementEvent.isRescheduleLoaderView() =
      _IsRescheduleLoaderView;
  const factory ServiceRequestManagementEvent.isRescheduleAvailableView() =
      _IsRescheduleAvailableView;
  const factory ServiceRequestManagementEvent.isRescheduleNotAvailableView() =
      _IsRescheduleNotAvailableView;
  const factory ServiceRequestManagementEvent.isRescheduleOtherMatchingView() =
      _IsRescheduleOtherMatchingViewView;
}
