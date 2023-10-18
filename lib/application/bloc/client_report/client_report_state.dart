part of 'client_report_bloc.dart';

@freezed
class ClientReportState with _$ClientReportState {
  const factory ClientReportState(
      {required bool isLoading,
      required bool isError,
      required List<String> xAxis,
      required List<String> yAxis,
      required ClientReportResponse? clientReportResponse,
      required String? error}) = _ClientReportState;

  factory ClientReportState.initial() {
    return const ClientReportState(
      isLoading: true,
      isError: false,
      xAxis: [],
      yAxis: [],
      clientReportResponse: null,
      error: null,
    );
  }
}
