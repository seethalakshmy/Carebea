part of 'video_management_bloc.dart';

@freezed
class VideoManagementEvent with _$VideoManagementEvent {
  const factory VideoManagementEvent.getSettings({required String userId}) =
      _GetSettings;
}
