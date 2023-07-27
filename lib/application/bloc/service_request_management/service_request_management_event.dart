part of 'service_request_management_bloc.dart';

@freezed
class ServiceRequestManagementEvent with _$ServiceRequestManagementEvent {
  const factory ServiceRequestManagementEvent.started() = _Started;
  const factory ServiceRequestManagementEvent.isSelectedTab(Types type) =
      _IsSelectedTab;
  const factory ServiceRequestManagementEvent.getServiceList(Types type) =
      _GetServiceList;
  const factory ServiceRequestManagementEvent.setDate(DateTime selectedDate) =
      _SetDate;
  const factory ServiceRequestManagementEvent.setFromTime(TimeOfDay time) =
      _SetFromTime;
  const factory ServiceRequestManagementEvent.setToTime(TimeOfDay time) =
      _SetToTime;
}
