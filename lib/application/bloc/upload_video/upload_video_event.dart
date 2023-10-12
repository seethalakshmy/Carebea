part of 'upload_video_bloc.dart';

@freezed
class VideoUploadEvent with _$VideoUploadEvent {
  const factory VideoUploadEvent.addSettings({
    required String adminId,
    String? settingsId,
    required String title,
    String? description,
    required String attachment,
    required int userType,
    required BuildContext context,
  }) = _UploadVideo;

  const factory VideoUploadEvent.radioForClient({required int isSelected}) =
      _RadioForClient;
}
