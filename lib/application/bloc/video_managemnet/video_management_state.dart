part of 'video_management_bloc.dart';

@freezed
class VideoManagementState with _$VideoManagementState {
  const factory VideoManagementState(
      {required bool isLoading,
      required bool isError,
      required VideoManagementResponse? response,
      required String? error}) = _VideoManagementState;

  factory VideoManagementState.initial() {
    return const VideoManagementState(
      isLoading: true,
      isError: false,
      response: null,
      error: null,
    );
  }
}
