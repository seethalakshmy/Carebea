part of 'sub_profile_details_bloc.dart';

@freezed
class SubProfileDetailState with _$SubProfileDetailState {
  const factory SubProfileDetailState(
      {required bool isLoading,
      required bool isError,
      required SubProfileDetailResponse? response,
      required String? error}) = _SubProfileDetailState;

  factory SubProfileDetailState.initial() {
    return const SubProfileDetailState(
        isLoading: true, isError: false, response: null, error: null);
  }
}
