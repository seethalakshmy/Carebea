part of 'service_request_management_bloc.dart';

@freezed
class ServiceRequestManagementState with _$ServiceRequestManagementState {
  const factory ServiceRequestManagementState({
    required List<Types> types,
  }) = _ServiceRequestManagementState;

  factory ServiceRequestManagementState.initial() {
    return ServiceRequestManagementState(types: [
      Types(id: 1, title: AppString.pendingServices.val, isSelected: true),
      Types(id: 2, title: AppString.completedServices.val, isSelected: false),
      Types(id: 3, title: AppString.canceledRequest.val, isSelected: false),
      Types(id: 4, title: AppString.upcomingRequest.val, isSelected: false),
      Types(id: 5, title: AppString.onGoingRequest.val, isSelected: false),
    ]);
  }
}
