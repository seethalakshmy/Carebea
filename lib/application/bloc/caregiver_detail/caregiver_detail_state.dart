part of 'caregiver_detail_bloc.dart';

@freezed
class CareGiverDetailState with _$CareGiverDetailState {
  const factory CareGiverDetailState(
      {required bool isLoading,
        required bool isError,
        required CareGiverDetailResponse? response,
        required String? error}) = _CareGiversDetailState;

  factory CareGiverDetailState.initial() {
    return const CareGiverDetailState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
