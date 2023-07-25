part of 'service_request_management_bloc.dart';

@freezed
class ServiceRequestManagementEvent with _$ServiceRequestManagementEvent {
  const factory ServiceRequestManagementEvent.started() = _Started;
  const factory ServiceRequestManagementEvent.isSelectedTab(Types type) = _IsSelectedTab;
  const factory ServiceRequestManagementEvent.getServiceList(Types type) = _GetServiceList;
}
