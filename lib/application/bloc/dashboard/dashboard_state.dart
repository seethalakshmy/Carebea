part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required int filterId,
  }) = _DashboardState;

  factory DashboardState.initial() {
    return DashboardState(filterId: 0);
  }
}
