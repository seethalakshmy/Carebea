part of 'upload_video_bloc.dart';

@freezed
class VideoUploadState with _$VideoUploadState {
  const factory VideoUploadState({
    required bool isLoading,
    required bool isError,
    required int isForClient,
    required CommonResponse? response,
    required String? error,
    required int radioValue,
    @Default(false) bool isLoadingButton,
  }) = _VideoUploadState;

  factory VideoUploadState.initial() {
    return const VideoUploadState(
      isForClient: 0,
      isLoading: true,
      isError: false,
      response: null,
      error: null,
      radioValue: 0,
    );
  }
}
