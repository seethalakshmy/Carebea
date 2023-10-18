part of 'master_bloc.dart';

@freezed
class MasterState with _$MasterState {
  const factory MasterState({
    required bool isRegionLoading,
    required bool isError,
    required RegionListResponse? regionListResponse,
    required String? error,
  }) = _MasterState;

  factory MasterState.initial() {
    return  MasterState(
        isRegionLoading: true,
        isError: false,
        error: null,
        regionListResponse: null);
  }
}
