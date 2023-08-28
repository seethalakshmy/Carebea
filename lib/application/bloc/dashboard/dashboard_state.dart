part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState(
      {required int filterId,
      required bool isLoading,
      required bool isError,
      required AlertResponse? alertResponse,
      required DashboardResponse? dashboardResponse,

      required String? error,
      @Default(false) bool isClientError}) = _DashboardState;

  factory DashboardState.initial() {
    return const DashboardState(
        filterId: 0,
        isLoading: false,
        isError: false,
        alertResponse: null,
        error: '',
        dashboardResponse: null,
    );
  }
}
