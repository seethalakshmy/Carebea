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
}
