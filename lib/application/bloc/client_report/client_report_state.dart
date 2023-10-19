part of 'client_report_bloc.dart';

@freezed
class ClientReportState with _$ClientReportState {
  const factory ClientReportState(
      {required bool isLoading,
      required bool isUserTableLoading,
      required bool isInactiveLoading,
      required bool isGraphTypeChurn,
      required bool isCancelButtonPressed,
      required bool isError,
      required List<String> xAxis,
      required List<String> yAxis,
      required List<String> inactiveXAxis,
      required List<String> inactiveYAxis,
      required ClientReportResponse? clientReportResponse,
      required InactiveCountResponse? inactiveCountResponse,
      required ClientReportUserListResponse? clientReportUserListResponse,
      required String? error}) = _ClientReportState;

  factory ClientReportState.initial() {
    return const ClientReportState(
      isLoading: true,
      isError: false,
      xAxis: [],
      yAxis: [],
      clientReportResponse: null,
      error: null,
      inactiveCountResponse: null,
      isInactiveLoading: true,
      inactiveXAxis: [],
      inactiveYAxis: [],
      isGraphTypeChurn: true,
      isCancelButtonPressed: true,
      clientReportUserListResponse: null,
      isUserTableLoading: true,
    );
  }
}
