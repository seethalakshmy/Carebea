part of 'client_report_bloc.dart';

@freezed
class ClientReportEvent with _$ClientReportEvent {
  const factory ClientReportEvent.getClientReport(
      {required String userId,
      required String roleId,
      required String filterId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region}) = _GetClientReport;

  const factory ClientReportEvent.getInactiveCountReport(
      {required String userId,
      required String roleId,
      required String filterId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region}) = _GetInactiveCountReport;

  const factory ClientReportEvent.getGraphType({required bool isGraphChurn}) =
      _GetGraphType;

  const factory ClientReportEvent.getCancelButtonPress(
      {required bool isCancelButtonPressed}) = _GetCancelButtonPress;

  const factory ClientReportEvent.getUserList(
      {required String userId,
      required String roleId,
      required String year,
      required String month,
      required String startDate,
      required String toDate,
      required String region,
      required String page,
      required String limit}) = _GetUserList;
}
