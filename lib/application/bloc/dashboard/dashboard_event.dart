part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.changeAxis({required int filterId}) =
      _ChangeAxis;



  const factory DashboardEvent.getDashboard(
      {required String userId,
      required String year,
      required bool isCallAlertApiCall,
      String? fromData,
      String? toDate}) = _GetDashboard;


}
